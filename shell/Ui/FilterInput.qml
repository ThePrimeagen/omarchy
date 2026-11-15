import QtQuick

// The search line of a keyboard-driven panel. It is a TextInput because Qt
// hands input-method text (fcitx5 composing Japanese, Chinese or Korean) only
// to text-input items; a Text fed by Keys.onPressed never receives it.
TextInput {
  id: root

  // Sees every key first; whatever it leaves unaccepted is typed here.
  property Item keyHandler: null

  focus: true
  clip: true
  Keys.priority: Keys.BeforeItem
  Keys.forwardTo: keyHandler ? [keyHandler] : []

  // Super+W and Super+Q dismiss the panel. They are caught here, on the
  // focused item itself, so the chord is never typed nor left for the
  // text handling below to accept before it reaches the key handler.
  signal closeRequested

  function closeChord(event) {
    if (!(event.modifiers & (Qt.MetaModifier | Qt.AltModifier))) return false
    return event.key === Qt.Key_W || event.key === Qt.Key_Q
      || event.text === "w" || event.text === "W" || event.text === "q" || event.text === "Q"
      || event.nativeVirtualKey === Qt.Key_W || event.nativeVirtualKey === Qt.Key_Q
  }

  // Alt and Super chords are shortcuts, never text.
  Keys.onPressed: function(event) {
    if (closeChord(event)) {
      closeRequested()
      event.accepted = true
      return
    }
    if (event.modifiers & (Qt.AltModifier | Qt.MetaModifier)) event.accepted = true
  }
  Keys.onReleased: function(event) {
    if (closeChord(event)) {
      closeRequested()
      event.accepted = true
    }
  }

  // Append-only: the panel owns Left and Right, so the caret stays hidden at
  // the end. An empty delegate holds it hidden; cursorVisible returns on focus.
  cursorDelegate: Item {}
  onCursorPositionChanged: if (cursorPosition !== length) cursorPosition = length
  onSelectedTextChanged: if (selectedText) deselect()
}
