import QtQuick
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import qs.Commons as Commons

// Map a fresh fullscreen surface on each open and let the compositor place it
// on the focused output so placement never races stale client-side focus state.
// Keep its first frames transparent until Qt receives the output's geometry
// and scale (bounded by a 250 ms fallback if monitor focus or scale lags).
PanelWindow {
  id: window

  // Whether the overlay is showing. Drive this instead of visible.
  property bool shown: false
  property int shownLayer: WlrLayer.Overlay
  property int shownKeyboardFocus: WlrKeyboardFocus.Exclusive

  property bool remapping: false
  property bool closeRecoveryAttempted: false
  property bool focusConfirmed: false
  property bool hasRevealed: false

  function isRealScreen(candidate) {
    return !!candidate && !!candidate.name && candidate.name !== "FALLBACK"
      && candidate.width > 0 && candidate.height > 0
  }

  readonly property var targetScreen: {
    if (!shown || remapping) return null
    var candidate = screen
    return candidate && Quickshell.screens.indexOf(candidate) >= 0 && isRealScreen(candidate)
      ? candidate
      : null
  }
  readonly property var targetMonitor: {
    var candidate = targetScreen
    if (!candidate) return null
    var monitors = Hyprland.monitors.values
    for (var i = 0; i < monitors.length; i++) {
      if (monitors[i].name === candidate.name) return monitors[i]
    }
    return null
  }
  readonly property bool hasLiveScreen: {
    for (var i = 0; i < Quickshell.screens.length; i++) {
      if (isRealScreen(Quickshell.screens[i])) return true
    }
    return false
  }

  // Wait for a configured (non-1x1) surface before arming fallback reveal.
  readonly property bool surfaceReady: shown && !remapping && backingWindowVisible
    && width > 1 && height > 1
  // Wait for fullscreen geometry so no smaller opening frame is stretched
  // across the output.
  readonly property bool geometryReady: backingWindowVisible && !!targetScreen
    && width === targetScreen.width && height === targetScreen.height

  // Confirm targetMonitor matches the focused monitor on the first reveal of
  // each mapping so equal-logical-size, mixed-scale outputs wait for
  // wl_surface.enter instead of revealing at the primary screen's scale. Once
  // confirmed, focus changes on other monitors (e.g. cursor movement over a
  // click-through OSD) do not blank the showing overlay. Fractional scale uses
  // units of 1/120; compare in those units to tolerate floating point rounding.
  readonly property bool scaleReady: !!targetMonitor
    && (focusConfirmed || targetMonitor === Hyprland.focusedMonitor)
    && Math.round(devicePixelRatio * 120) === Math.round(targetMonitor.scale * 120)
  readonly property bool strictReady: geometryReady && scaleReady
  property bool revealFallbackReady: false
  readonly property bool contentReady: strictReady || (surfaceReady && revealFallbackReady)
  property bool contentRevealed: false

  // Bounded fallback once configured so a stale monitor record or missed
  // wl_surface.enter cannot leave a showing overlay transparent forever.
  Timer {
    id: revealFallbackTimer
    interval: 250
    repeat: false
    onTriggered: if (window.surfaceReady) window.revealFallbackReady = true
  }

  function syncRevealFallback() {
    if (!surfaceReady || strictReady) {
      revealFallbackReady = false
      revealFallbackTimer.stop()
    } else if (!revealFallbackReady && !revealFallbackTimer.running) {
      revealFallbackTimer.start()
    }
  }

  onSurfaceReadyChanged: syncRevealFallback()
  onGeometryReadyChanged: {
    if (!geometryReady) revealFallbackReady = false
    syncRevealFallback()
  }
  onStrictReadyChanged: {
    if (strictReady) focusConfirmed = true
    syncRevealFallback()
  }

  onContentReadyChanged: {
    contentRevealed = false
    // Resize and scale notifications arrive while Qt is still updating the
    // window. Reveal on the next turn, once its content layout has caught up.
    if (contentReady) Qt.callLater(function() {
      if (window.contentReady) {
        window.contentRevealed = true
        window.hasRevealed = true
        window.closeRecoveryAttempted = false
      }
    })
  }

  function remap() {
    remapping = true
    focusConfirmed = false
    hasRevealed = false
    Qt.callLater(function() { window.remapping = false })
  }

  // Live monitor scaling does not emit a Hyprland monitor event, so its cached
  // scale can lag behind Qt. Refresh on opening and on scale changes while open.
  onShownChanged: {
    remapping = false
    closeRecoveryAttempted = false
    if (!shown) {
      focusConfirmed = false
      hasRevealed = false
    }
    if (shown) Hyprland.refreshMonitors()
  }
  onDevicePixelRatioChanged: if (shown) Hyprland.refreshMonitors()

  // When a monitor disconnects while showing, the compositor closes this layer
  // surface. Remap once on the next turn so the compositor places it on a live
  // output.
  onClosed: {
    if (shown && !remapping && !closeRecoveryAttempted) {
      closeRecoveryAttempted = true
      remap()
    }
  }

  Connections {
    target: Quickshell
    function onScreensChanged() {
      window.closeRecoveryAttempted = false
      if (!window.shown || window.remapping || !window.hasLiveScreen) return
      if (!window.visible || (window.surfaceReady && !window.hasRevealed
        && (!window.geometryReady || !window.focusConfirmed))) {
        window.remap()
      }
    }
  }

  visible: shown && !remapping && hasLiveScreen
  anchors { top: true; left: true; bottom: true; right: true }
  color: "transparent"
  exclusionMode: ExclusionMode.Ignore
  WlrLayershell.layer: shownLayer
  WlrLayershell.keyboardFocus: shownKeyboardFocus

  // Opacity preserves keyboard handling while the scale arrives, including
  // search keystrokes and Escape pressed immediately after opening.
  Binding {
    target: window.contentItem
    property: "opacity"
    value: window.contentRevealed ? 1 : 0
  }

  // Right-to-left languages read the overlay mirrored.
  Binding {
    target: window.contentItem
    property: "LayoutMirroring.enabled"
    value: Commons.I18n.rightToLeft
  }
  Binding {
    target: window.contentItem
    property: "LayoutMirroring.childrenInherit"
    value: true
  }
}
