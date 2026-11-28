#!/bin/bash

set -euo pipefail

source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)/base-test.sh"

run_node_test <<'JS'
const fs = require('fs')
const read = (file) => fs.readFileSync(path.join(root, file), 'utf8')
const overlay = read('shell/Ui/OverlayWindow.qml')

const visibleExpression = /\n  visible: ([^\n]+)/.exec(overlay)[1]
const isVisible = new Function('shown', 'remapping', 'hasLiveScreen', `return ${visibleExpression}`)
assert(isVisible(true, false, true), 'showing overlay maps immediately when a real screen is connected')
assert(!isVisible(true, true, true), 'remapping temporarily unmaps the overlay')
assert(!isVisible(true, false, false), 'zero connected outputs keeps the overlay unmapped')
assert(!isVisible(false, false, true), 'hidden overlay stays unmapped')

const isRealScreenBody = /function isRealScreen\(candidate\) \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const isRealScreen = new Function('candidate', isRealScreenBody)
const screen = { name: 'eDP-1', width: 1200, height: 750 }
const placeholder = { name: '', width: 0, height: 0 }
const fallbackOutput = { name: 'FALLBACK', width: 1920, height: 1080 }
assert(isRealScreen(screen), 'real output screen is accepted')
assert(!isRealScreen(placeholder) && !isRealScreen(null), 'placeholder and null screens are ignored')
assert(!isRealScreen(fallbackOutput), 'synthetic FALLBACK output is ignored')

const targetScreenBody = /readonly property var targetScreen: \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const computeTargetScreen = new Function('shown', 'remapping', 'screen', 'Quickshell', 'isRealScreen', targetScreenBody)
let danglingReads = 0
const danglingScreen = {
  get name() { danglingReads++; return 'DP-1' },
  get width() { danglingReads++; return 1920 },
  get height() { danglingReads++; return 1080 },
}
assertEqual(computeTargetScreen(true, false, danglingScreen, { screens: [screen] }, isRealScreen), null,
  'removed screen is rejected before touching its properties')
assertEqual(danglingReads, 0, 'dangling screen properties are never dereferenced')
assertEqual(computeTargetScreen(true, false, screen, { screens: [screen] }, isRealScreen), screen,
  'live compositor screen is exposed as targetScreen')
assertEqual(computeTargetScreen(false, false, screen, { screens: [screen] }, isRealScreen), null,
  'closing clears targetScreen')
assertEqual(computeTargetScreen(true, true, screen, { screens: [screen] }, isRealScreen), null,
  'remapping clears targetScreen so callers reset screen-dependent layout')

const hasLiveScreenBody = /readonly property bool hasLiveScreen: \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const computeHasLiveScreen = new Function('Quickshell', 'isRealScreen', hasLiveScreenBody)
assert(computeHasLiveScreen({ screens: [placeholder, fallbackOutput, screen] }, isRealScreen),
  'hasLiveScreen ignores placeholder and FALLBACK screens when a real screen exists')
assert(!computeHasLiveScreen({ screens: [placeholder, fallbackOutput] }, isRealScreen),
  'hasLiveScreen is false when only placeholder or FALLBACK screens exist')
assert(!computeHasLiveScreen({ screens: [] }, isRealScreen),
  'hasLiveScreen is false when no screens exist')

const surfaceExpression = /readonly property bool surfaceReady: ([^\n]*(?:\n    &&[^\n]*)*)/.exec(overlay)[1]
const geometryExpression = /readonly property bool geometryReady: ([^\n]*(?:\n    &&[^\n]*)*)/.exec(overlay)[1]
const scaleExpression = /readonly property bool scaleReady: ([^\n]*(?:\n    &&[^\n]*)*)/.exec(overlay)[1]
const strictExpression = /readonly property bool strictReady: ([^\n]+)/.exec(overlay)[1]
const readyExpression = /readonly property bool contentReady: ([^\n]+)/.exec(overlay)[1]
const surfaceReadyFn = new Function('shown', 'remapping', 'backingWindowVisible', 'width', 'height', `return ${surfaceExpression}`)
const geometryReadyFn = new Function('backingWindowVisible', 'targetScreen', 'width', 'height', `return ${geometryExpression}`)
const scaleReadyFn = new Function('targetMonitor', 'focusConfirmed', 'Hyprland', 'devicePixelRatio', `return ${scaleExpression}`)
const strictReadyFn = new Function('geometryReady', 'scaleReady', `return ${strictExpression}`)
const readyFn = new Function('strictReady', 'surfaceReady', 'revealFallbackReady', `return ${readyExpression}`)
const ready = (shown, backingWindowVisible, width, height, targetScreen, targetMonitor, devicePixelRatio, opts = {}) => {
  const remapping = opts.remapping ?? false
  const revealFallbackReady = opts.revealFallbackReady ?? false
  const focusConfirmed = opts.focusConfirmed ?? false
  const focusedMonitor = 'focusedMonitor' in opts ? opts.focusedMonitor : targetMonitor
  const activeScreen = shown && !remapping ? targetScreen : null
  const geom = geometryReadyFn(backingWindowVisible, activeScreen, width, height)
  const scale = scaleReadyFn(targetMonitor, focusConfirmed, { focusedMonitor }, devicePixelRatio)
  return readyFn(
    strictReadyFn(geom, scale),
    surfaceReadyFn(shown, remapping, backingWindowVisible, width, height),
    revealFallbackReady
  )
}

const monitor = { name: 'eDP-1', scale: 1.6 }
for (const scale of [2, 1, 1.6]) {
  assertEqual(ready(true, true, 1200, 750, screen, monitor, scale), scale === 1.6,
    `opening frames at ${scale}x wait for the monitor's 1.6x scale`)
}
for (const scale of [1, 1.25, 1.5, 2]) {
  const scaled = { name: 'eDP-1', scale }
  assert(ready(true, true, 1200, 750, screen, scaled, scale),
    `overlay reveals at the correct ${scale}x scale`)
}
assert(ready(true, true, 1200, 750, screen, { name: 'eDP-1', scale: 1.333333 }, 160 / 120),
  'scale comparison tolerates compositor floating point rounding')
assert(!ready(true, true, 500, 500, screen, monitor, 1.6),
  'initial window geometry never stretches content across the screen')
assert(!ready(true, false, 1200, 750, screen, monitor, 1.6),
  'content waits for a mapped backing window')
assert(!ready(false, true, 1200, 750, screen, monitor, 1.6),
  'closed content stays transparent even at the correct scale')
assert(!ready(true, true, 1200, 750, screen, monitor, 1.6, { remapping: true }),
  'remapping keeps content transparent until the new surface settles')
assert(!ready(true, true, 1200, 750, null, monitor, 1.6) &&
  !ready(true, true, 1200, 750, screen, null, 1.6),
  'content waits for a connected screen and its monitor information')

// Equal-logical-size, mixed-scale outputs (e.g. 1080p@1 primary + 4K@2 focused):
// hold initial reveal while Qt still reports the primary screen before
// wl_surface.enter, then latch focusConfirmed once strictReady is true so
// moving focus elsewhere does not blank an already-visible overlay.
const primary1080 = { name: 'eDP-1', width: 1920, height: 1080 }
const primaryMon = { name: 'eDP-1', scale: 1 }
const focused4k = { name: 'DP-1', scale: 2 }
assert(!ready(true, true, 1920, 1080, primary1080, primaryMon, 1, { focusedMonitor: focused4k }),
  'same-logical-size mixed-scale open waits for wl_surface.enter before revealing')
assert(ready(true, true, 1920, 1080, { name: 'DP-1', width: 1920, height: 1080 }, focused4k, 2, { focusedMonitor: focused4k }),
  'same-logical-size mixed-scale open reveals once entered at the focused scale')
assert(ready(true, true, 1920, 1080, primary1080, primaryMon, 1, { focusedMonitor: focused4k, focusConfirmed: true }),
  'moving focus to another monitor after initial reveal does not blank a showing overlay')

// Bounded fallback reveals a configured surface even if monitor scale is missing
// or wl_surface.enter was missed, but never reveals an unconfigured 1x1 surface.
assert(ready(true, true, 1200, 750, screen, null, 1.6, { revealFallbackReady: true }),
  'bounded fallback reveals a fullscreen surface when monitor scale is unavailable')
assert(ready(true, true, 1920, 3200, screen, monitor, 1, { revealFallbackReady: true }),
  'bounded fallback reveals a configured surface if wl_surface.enter was missed')
assert(!ready(true, true, 1, 1, screen, null, 1, { revealFallbackReady: true }),
  'bounded fallback never reveals an unconfigured 1x1 surface')

const syncFallbackBody = /function syncRevealFallback\(\) \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const geomChangedBody = /onGeometryReadyChanged: \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const strictChangedBody = /onStrictReadyChanged: \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const syncFallback = new Function('window', `with (window) { ${syncFallbackBody} }`)
const runGeomChanged = new Function('window', `with (window) { ${geomChangedBody} }`)
const runStrictChanged = new Function('window', `with (window) { ${strictChangedBody} }`)
let timerStarts = 0
let timerStops = 0
const fallbackState = {
  surfaceReady: false,
  geometryReady: false,
  strictReady: false,
  focusConfirmed: false,
  revealFallbackReady: false,
  revealFallbackTimer: {
    running: false,
    start() { this.running = true; timerStarts++ },
    stop() { this.running = false; timerStops++ },
  },
  syncRevealFallback() { syncFallback(fallbackState) },
}
syncFallback(fallbackState)
assertEqual(timerStarts, 0, 'reveal fallback timer stays idle before surface is configured')
fallbackState.surfaceReady = true
syncFallback(fallbackState)
assertEqual(timerStarts, 1, 'reveal fallback timer starts once surface is configured without full readiness')
// Before geometryReady is true, strictReady stays false so focusConfirmed never
// latches on an unconfigured surface, and readiness wobbles do not extend the deadline.
runStrictChanged(fallbackState)
assert(!fallbackState.focusConfirmed, 'focusConfirmed does not latch before fullscreen geometry and scale match')
assertEqual(timerStarts, 1, 'readiness changes do not restart an already-running fallback timer')
fallbackState.geometryReady = true
fallbackState.revealFallbackReady = true
fallbackState.revealFallbackTimer.running = false
const stopsBeforeGeometryLoss = timerStops
fallbackState.geometryReady = false
runGeomChanged(fallbackState)
assertEqual(fallbackState.revealFallbackReady, false, 'losing fullscreen geometry resets the reveal fallback latch')
assertEqual(timerStarts, 2, 'losing fullscreen geometry starts a fresh reveal fallback wait')
fallbackState.geometryReady = true
fallbackState.strictReady = true
runStrictChanged(fallbackState)
assert(fallbackState.focusConfirmed, 'reaching strictReady latches focusConfirmed for this mapping')
assert(timerStops > stopsBeforeGeometryLoss, 'matching geometry and scale stops the reveal fallback timer')
assertEqual(timerStarts, 2, 'matching geometry and scale does not start the reveal fallback timer')
const stopsBeforeHide = timerStops
fallbackState.surfaceReady = false
fallbackState.revealFallbackReady = true
syncFallback(fallbackState)
assertEqual(fallbackState.revealFallbackReady, false, 'hiding or remapping clears the reveal fallback latch')
assert(timerStops > stopsBeforeHide, 'hiding or remapping stops the reveal fallback timer')

const revealBody = /onContentReadyChanged: \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const reveal = new Function('window', 'Qt', `with (window) { ${revealBody} }`)
const reveals = []
const revealQt = { callLater(callback) { reveals.push(callback) } }
const content = { contentReady: true, contentRevealed: false, hasRevealed: false, closeRecoveryAttempted: true }
reveal(content, revealQt)
assert(!content.contentRevealed && content.closeRecoveryAttempted,
  'scale and resize notifications finish before content reveals or clears close recovery')
reveals.shift()()
assert(content.contentRevealed && content.hasRevealed && !content.closeRecoveryAttempted,
  'settled content reveals, latches hasRevealed, and clears closeRecoveryAttempted on the next event-loop turn')
content.contentReady = false
reveal(content, revealQt)
assert(!content.contentRevealed && content.hasRevealed, 'losing readiness hides content while remembering this mapping already revealed')
content.contentReady = true
reveal(content, revealQt)
content.contentReady = false
reveal(content, revealQt)
reveals.shift()()
assert(!content.contentRevealed, 'a close or screen loss cancels a pending reveal')

const shownHandler = /onShownChanged: \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const scaleHandler = /onDevicePixelRatioChanged: ([^\n]+)/.exec(overlay)[1]
const remapBody = /function remap\(\) \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const closedBody = /onClosed: \{([\s\S]*?)\n  \}/.exec(overlay)[1]
const screensChangedBody = /function onScreensChanged\(\) \{([\s\S]*?)\n    \}/.exec(overlay)[1]

let refreshed = 0
const Hyprland = { refreshMonitors() { refreshed++ } }
const pending = []
const Qt = { callLater(callback) { pending.push(callback) } }
const runShown = new Function('window', 'Hyprland', `with (window) { ${shownHandler} }`)
const runScale = new Function('shown', 'Hyprland', scaleHandler)
const runRemap = new Function('window', 'Qt', `with (window) { ${remapBody} }`)
const runClosed = new Function('window', `with (window) { ${closedBody} }`)
const runScreensChanged = new Function('window', screensChangedBody)

const win = {
  shown: false,
  visible: false,
  remapping: false,
  closeRecoveryAttempted: false,
  focusConfirmed: true,
  hasLiveScreen: true,
  surfaceReady: false,
  geometryReady: false,
  hasRevealed: true,
  remap() { runRemap(win, Qt) },
}

runShown(win, Hyprland)
assertEqual(refreshed, 0, 'closing does not refresh monitor data')
assert(!win.focusConfirmed && !win.hasRevealed, 'closing clears focusConfirmed and hasRevealed for the next open')
win.shown = true
win.focusConfirmed = true
runShown(win, Hyprland)
assertEqual(refreshed, 1, 'opening refreshes monitor scales after a live change while closed')
assert(win.focusConfirmed, 'opening preserves focusConfirmed if bindings already confirmed it')
runScale(false, Hyprland)
assertEqual(refreshed, 1, 'scale changes on hidden windows do not refresh monitor data')
const changedScreen = { name: 'eDP-1', width: 960, height: 600 }
assert(!ready(true, true, 960, 600, changedScreen, monitor, 2),
  'a stale monitor scale keeps content transparent after a live scale change')
Hyprland.refreshMonitors = () => { refreshed++; monitor.scale = 2 }
runScale(true, Hyprland)
assertEqual(refreshed, 2, 'a showing window refreshes monitor scales when Qt receives a live change')
assert(ready(true, true, 960, 600, changedScreen, monitor, 2),
  'content reveals once the refreshed monitor scale matches Qt')

// Compositor layer-surface closure (monitor disconnect) remaps once onto a live
// output, resets focusConfirmed, cancels cleanly if hidden before the deferred
// turn, and resets its one-shot guard on screensChanged.
win.shown = true
win.visible = false
win.remapping = false
win.closeRecoveryAttempted = false
win.focusConfirmed = true
win.hasRevealed = true
runClosed(win)
assert(win.remapping && win.closeRecoveryAttempted && !win.focusConfirmed && !win.hasRevealed,
  'compositor close triggers a deferred remap and resets focusConfirmed while showing')
assertEqual(pending.length, 1, 'compositor close schedules one deferred remap')
runClosed(win)
assertEqual(pending.length, 1, 'duplicate compositor close does not loop remaps')
pending.shift()()
assert(!win.remapping, 'deferred remap restores mapping on the next turn')

// Repeated close before reveal stays bounded without a screen change.
runClosed(win)
assertEqual(pending.length, 0, 'repeated close before reveal without a screen change stays bounded')

// Once the remapped surface reveals, a later compositor close without a screen
// change can recover again.
win.contentReady = true
win.contentRevealed = false
reveal(win, revealQt)
reveals.shift()()
assert(!win.closeRecoveryAttempted, 'revealing a recovered mapping re-arms close recovery')
runClosed(win)
assert(win.remapping && win.closeRecoveryAttempted && pending.length === 1,
  'a subsequent compositor close after reveal recovers without requiring screensChanged')
pending.shift()()
assert(!win.remapping, 'second close recovery restores mapping on the next turn')

// A subsequent screensChanged resets the guard and recovers a stranded overlay.
win.visible = false
win.hasLiveScreen = true
runScreensChanged(win)
assert(!win.closeRecoveryAttempted, 'screensChanged resets close recovery guard')
assert(win.remapping && pending.length === 1,
  'screensChanged recovers a showing overlay whose surface was closed while a screen is live')
win.shown = false
runShown(win, Hyprland)
assert(!win.remapping, 'closing immediately clears remapping')
pending.shift()()
assert(!win.shown && !win.remapping, 'closing before deferred remap does not reopen a hidden overlay')

// Late wl_output bind before reveal: if the surface was configured for a newly
// plugged output before Qt bound it (different size OR equal logical size with
// unconfirmed focus), screensChanged remaps so Qt enters the real output.
win.shown = true
win.visible = true
win.remapping = false
win.surfaceReady = true
win.hasRevealed = false
win.geometryReady = false
win.focusConfirmed = false
runScreensChanged(win)
assert(win.remapping && pending.length === 1,
  'screensChanged remaps an unrevealed overlay whose configured size did not match its screen')
pending.shift()()
assert(!win.remapping, 'late-bind size-mismatch remap completes on the next turn')

win.geometryReady = true
win.focusConfirmed = false
win.hasRevealed = false
runScreensChanged(win)
assert(win.remapping && pending.length === 1,
  'screensChanged remaps an unrevealed equal-logical-size overlay whose screen association was unconfirmed')
pending.shift()()
assert(!win.remapping, 'late-bind equal-size remap completes on the next turn')

// An already-revealed overlay (even if temporarily hidden during a live
// geometry change or revealed via fallback) is not moved by unrelated screens.
win.hasRevealed = true
win.geometryReady = false
win.focusConfirmed = false
runScreensChanged(win)
assert(!win.remapping && pending.length === 0,
  'connecting another screen does not move an overlay that already revealed')

// Moving an open menu to another output drops the old output's layout.
const menuQml = read('shell/plugins/menu/Menu.qml')
const screenHandler = /onTargetScreenChanged: \{([^\n]*)\}/.exec(menuQml)[1]
const changeScreen = new Function('panel', `with (panel) { ${screenHandler} }`)
const menuPanel = { shown: true, cardTop: 945, maxRowsHeight: 510 }
changeScreen(menuPanel)
assertEqual(menuPanel.cardTop, -1, 'moving an open menu off a disconnected output unfreezes its old top edge')
assertEqual(menuPanel.maxRowsHeight, -1, 'moving an open menu drops the old output row-height limit')
assert(menuPanel.shown, 'resetting the layout keeps the menu open')

// Fullscreen overlays open without an additional compositor animation.
const shellRules = read('default/hypr/apps/omarchy-shell.lua')
const noAnim = /namespace = "\^\(([^)]*)\)\$" \}, no_anim = true/.exec(shellRules)
assert(noAnim, 'the shell overlays share one no-animation layer rule')
const unanimated = noAnim ? noAnim[1].split('|') : []
const overlayFiles = fs.readdirSync(path.join(root, 'shell/plugins'), { recursive: true })
  .filter(file => file.endsWith('.qml'))
  .map(file => 'shell/plugins/' + file)
  .filter(file => read(file).includes('OverlayWindow {'))
assert(overlayFiles.length > 0, 'shell plugins use the shared overlay window')
for (const file of overlayFiles) {
  const namespace = /WlrLayershell\.namespace: "([^"]+)"/.exec(read(file))
  assert(namespace && unanimated.includes(namespace[1]), `${file} is exempt from Hyprland's layer animation`)
}
JS
