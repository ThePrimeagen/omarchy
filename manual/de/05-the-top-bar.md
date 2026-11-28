# Die obere Leiste

Der Streifen am oberen Rand deines Bildschirms ist die Omarchy-Leiste. Sie ist keine aufgesetzte Statusleiste, sondern Teil der Omarchy-Shell, des einen, langlaufenden Quickshell-Prozesses, der auch das Menü, die Benachrichtigungen, die OSD-Popups und den Sperrbildschirm zeichnet. Deshalb passt sie thematisch perfekt zu allem anderen und deshalb öffnet sich ein Panel sofort, statt eine neue App zu starten.

Sie ist auch der einzige Teil des Desktops, der immer auf dem Bildschirm ist, also lohnt es sich zu wissen, was all diese kleinen Glyphen tun.

## Was standardmäßig darauf ist

Die Leiste hat drei Abschnitte. Auf der linken Seite sitzen das Omarchy-Logo (der Menü-Launcher) und die Arbeitsbereich-Indikatoren. In der Mitte bekommst du die Statusindikatoren, die Uhr, Elsewhen (eine Weltuhr), das Wetter und ein Omarchy-Update-Badge. Auf der rechten Seite: der System-Tray, das Tastaturlayout (wenn mehr als ein Layout oder eine Eingabemethode konfiguriert ist), Agents, Bluetooth, Netzwerk, Audio, Anzeige und Energie.

Ein paar davon tauchen nur auf, wenn sie etwas zu sagen haben. Das Tastaturlayout erscheint nur, wenn du mehr als ein Layout oder eine Eingabemethode konfiguriert hast. Das Update-Badge erscheint nur, wenn ein Omarchy-Update wartet.

## Herumklicken

Fast jedes Widget tut etwas bei Links-, Rechts- und Mittelklick, und mehrere reagieren auf Scrollen. Das ist der Teil, den die Leute übersehen — hinter der rechten und mittleren Taste versteckt sich ein Großteil der guten Sachen.

| Widget | Links | Rechts | Mitte / Scrollen |
| --- | --- | --- | --- |
| Menü | Omarchy-Menü | Neues Terminal | — |
| Arbeitsbereiche | Diesen Arbeitsbereich auf diesem Monitor fokussieren | — | Scrollen: nächster/vorheriger Arbeitsbereich |
| Uhr | Kalender-Popup | Das Beschriftungsformat durchschalten | Mitte: Zeitzonen-Auswahl |
| Weltuhr | Weltuhr-Panel | Aktualisieren | Mitte: aktualisieren |
| Wetter | Vorhersage-Popup | Das vollständige Wetter als Benachrichtigung | Mitte: aktualisieren |
| Audio | Audio-Panel | Stumm schalten | Mitte: Panel · Scrollen: Lautstärke |
| Mikrofon | Das Mikrofon stumm schalten | — | Mitte: Audio-Panel · Scrollen: Eingabelautstärke |
| Netzwerk | Netzwerk-Panel | — | — |
| Bluetooth | Bluetooth-Panel | Das Funkmodul umschalten | — |
| Anzeige | Anzeige-Panel | — | Scrollen: Helligkeit |
| Energie | Energie-Panel | Die Akku-Prozentanzeige umschalten | — |
| Medien | Wiedergabe/Pause | Cover-Art-Popup | Mitte: weiter · Scrollen: zurück/weiter |
| Agents | Agents-Panel | Deinen Agent starten | Mitte: Nutzung aktualisieren |
| Tray | Darüberfahren, um die Schublade zu enthüllen | Rechtsklick auf das Chevron, um sie zu verwalten | — |
| Omarchy-Update | Das Update ausführen | — | — |

Nicht alles in dieser Tabelle ist von Haus aus auf deiner Leiste. Das Medien-Widget (MPRIS Now-Playing, mit einem scrollenden Track und Künstler) und das Mikrofon-Widget sind beide eingebaut, aber standardmäßig aus — füge sie hinzu, wenn du sie willst, wie unten beschrieben.

## Die Panels

Ein Klick auf ein Leisten-Icon öffnet ein Panel, was ein richtiges Popup mit Schiebereglern, Listen und Tastaturnavigation ist statt eines Tooltips. Jedes hat auch eine Tastenkombination, damit du nie auf eine 16-Pixel-Glyphe zielen musst:

| Hotkey | Panel |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Network |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Display |
| `Super + Ctrl + P` | Power |
| `Super + Ctrl + Alt + D` | Calendar |
| `Super + Ctrl + Alt + E` | World clock |
| `Super + Ctrl + X` | Agents |
| `Super + Ctrl + 1-9` | Das n-te Panel im rechten Abschnitt umschalten |

Die Panels sind keine reinen Anzeigen. In ihnen erledigst du die Sache tatsächlich:

- **Audio** hat einen Hauptlautstärke-Schieberegler, eine Ausgabegerät-Auswahl und einen Mixer pro App, damit du diesen einen Browser-Tab leiser stellen kannst, ohne alles andere anzufassen.
- **Network** scannt nach Wi-Fi, zeigt die Signalstärke, verbindet und lässt dich einen DNS-Anbieter auswählen.
- **Bluetooth** listet deine Geräte mit Verbinden/Trennen und Akkuständen auf.
- **Power** zeigt Akku-Statistiken, schaltet Energieprofile um (es merkt sich eine separate Auswahl für Akku und AC) und gibt einige Systeminformationen aus.
- **Display** bringt einen Helligkeits-Schieberegler, Textgröße, Presets für die Monitor-Skalierung und — wenn du mehr als einen Bildschirm hast — Steuerelemente pro Monitor mit. Siehe [Monitore](33-monitors.md) für die tiefergehende Geschichte.
- **Clock** öffnet ein Monatsraster mit ISO-Wochennummern und Monatsschritten.
- **World clock** hält eine Zeile pro Stadt, mit ihrem Wetter und wie ihr Tag so läuft. Die Suche findet Städte ebenso wie Zeitzonen, also ist Fort Lauderdale Fort Lauderdale und nicht New York. Wenn die Zeile oben die falsche Stadt nennt, klicke sie an und sage, wo du bist; wähle einen Ort in einer anderen Zeitzone und die Systemuhr zieht dorthin mit um, was praktisch ist, wenn du reist. Fahre über eine Stadt und klicke auf den Personen-Button, um zu sagen, wer dort lebt — einfache Namen, oder `@` GitHub-Handles, um ihre Gesichter mitzubringen.

Jedes Panel nimmt ebenso die Tastatur wie die Maus: Pfeile bewegen, Return aktiviert, Tab springt zum benachbarten Panel und Escape schließt.

`Super + Ctrl + 1-9` zählt die Panels im rechten Abschnitt von links nach rechts, wobei der Tray übersprungen wird, da er kein eigenes Panel hat. Also entspricht die Nummer dem Icon, auf das du zeigen würdest.

### Tailscale und Dropbox

Zwei weitere Widgets erscheinen auf der Leiste nur, sobald du den passenden Dienst aus **Install → Service** installierst, und beide sind wissenswert, weil sie mehr tun als nur den Status zu melden.

Das **Tailscale**-Panel verbindet und trennt das Tailnet, wechselt zwischen Konten und wählt einen Exit Node aus (deine eigenen Maschinen und Mullvad-Regionen tauchen beide in dieser Liste auf). Es durchsucht auch deine Maschinen — und wenn eine ausgewählt ist, sendet `s` Dateien über Taildrop an sie, was der schnellste Weg ist, eine Datei auf dein Telefon oder einen anderen Laptop zu bewegen. `c` kopiert die IP der Maschine, `n` ihren Namen und `d` ihren vollständigen DNS-Namen. Auf jeder Maschinenzeile gibt es auch einen Senden-Button, falls du lieber klickst. Dasselbe aus dem Terminal ist `omarchy tailscale send <machine> [file...]`.

Das **Dropbox**-Panel kümmert sich um den Login, zeigt, wie viel Speicher du verbraucht hast, und listet kürzlich synchronisierte Dateien auf.

Das Entfernen eines der beiden Dienste nimmt sein Widget wieder von der Leiste.

## Indikatoren

Der kleine Cluster in der Mitte ist das Indikatoren-Widget. Das sind Statusglyphen für Modi, die du eingeschaltet hast: Nicht stören, Nachtlicht, eine anstehende [Erinnerung](09-reminders.md), eine aktive Bildschirmaufnahme und Wach bleiben, plus Warnungen, solange passwortloses sudo an ist oder jemand mit einer Remote-Sitzung verbunden ist. Sie leuchten auf, wenn der Modus aktiv ist, und halten sich sonst aus dem Weg — fahre direkt daneben, wo die inaktiven sitzen würden, um einen Blick auf sie zu werfen. Ein Klick auf einen Indikator schaltet diesen Modus um. Einer mehr ist nur Status: Eine Remote-Sitzung leuchtet rot, solange jemand über gliff mit dieser Maschine verbunden ist.

Wenn du lieber hättest, dass sie immer sichtbar sind, setze `alwaysShow` auf dem Widget auf `true`. Und wenn dich nur einige davon interessieren, liste die gewünschten in `items` auf: `["Dnd", "Reminder", "NightLight"]`. Du kannst mehr als ein Indikatoren-Widget haben, sodass verschiedene Abschnitte verschiedene Teilmengen zeigen können.

## Die Leiste neu anordnen

Die Leiste konfiguriert sich selbst. Du musst keine Konfigurationsdatei öffnen, um Dinge zu verschieben.

Greife eine leere Stelle der Leiste um die Mitte herum und ziehe sie in Richtung eines anderen Bildschirmrands, und die Leiste wandert dorthin — links, rechts, oben oder unten funktionieren alle, und jedes Widget passt sich an (vertikale Leisten fallen auf kompakte, reine Icon-Formen zurück). Ein Klicken-und-Halten startet denselben Ziehvorgang. Mache einen Doppel-Linksklick auf dieselbe leere Stelle, um den Leistenhintergrund von klar zu glasig zu undurchsichtig durchzuschalten. Und ziehe irgendein Widget, um es neu anzuordnen oder es in einen anderen Abschnitt zu werfen; die anderen Widgets rutschen auseinander, um Platz zu machen, wo es landen wird.

Die Mitte der Leiste ist eine Box: Was auch immer darin ist, bleibt als eine Gruppe zentriert, und die Widgets auf beiden Seiten davon hängen an ihren Rändern. Während du ein Widget ziehst, zeigt sich die Box als Umriss, oder als eine Linie quer über die Leiste, wenn sie leer ist, und du kannst hinein oder daneben ablegen. Wenn ein Ablegen in der Box landen würde, wächst die Box, um das Widget aufzunehmen.

Ein Widget, das du in der Nähe haben, aber nicht immer im Blick haben willst, kann in die Schublade des Trays: Ziehe es auf den Tray, und die Schublade öffnet sich, um es aufzunehmen. Es sitzt dort nach den App-Icons, taucht immer auf, wenn die Schublade es tut, und hält seine Schublade offen, solange sein Panel oben ist. Ziehe es zurück auf die Leiste, um es zurückzulegen.

Wenn du lieber aus einem Menü auswählst, hat **Appearance → Menu Bar** die Position, und **Bar Background** wählt aus, wie die Leiste gezeichnet wird: **Opaque Bar**, **Glassy Bar** (durchsichtig, mit dem, was dahinter ist, verschwommen) oder **Clear Bar**.

Dieselben Dinge haben Befehle, was das ist, was du für ein [Dotfiles](31-dotfiles.md)-Setup willst:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Um ein Widget vollständig hinzuzufügen oder zu entfernen, nutze die Plugin-Befehle. `omarchy plugin list` gibt jedes Widget aus, das die Shell kennt, mit seiner id, und dann:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Die Leiste ausblenden

`Super + Shift + Space` schaltet die Leiste aus und wieder ein, ohne die Shell zu töten — Panels und Tastenkombinationen funktionieren weiter, du bekommst nur die Pixel zurück. Es ist auch im Menü unter **Appearance → Menu Bar → Hide Bar**.

## Die Konfigurationsdatei

All das wird in `~/.config/omarchy/shell.json` gespeichert, unter dem `bar`-Schlüssel. Hier ist eine gekürzte Version:

```json
{
  "version": 1,
  "bar": {
    "position": "top",
    "background": "none",
    "layout": {
      "left": [{ "id": "omarchy.menu" }, { "id": "omarchy.workspaces" }],
      "centerBegin": [{ "id": "omarchy.indicators" }],
      "center": [{ "id": "omarchy.clock", "format": "HH:mm" }],
      "centerEnd": [{ "id": "omarchy.weather" }],
      "right": [{ "id": "omarchy.audio" }, { "id": "omarchy.power" }]
    }
  }
}
```

Jedes Widget ist ein Eintrag in einem der fünf Layout-Arrays, und seine Einstellungen sitzen inline auf diesem Eintrag — es gibt keine separate Einstellungsdatei und kein `config`-Unterobjekt. Das `format`, `formatAlt` (wozu ein Rechtsklick durchschaltet) und `verticalFormat` der Uhr leben alle genau dort auf `{ "id": "omarchy.clock" }`.

`center` ist die Box in der Mitte der Leiste: Alles darin ist als eine Gruppe auf dem Bildschirm zentriert. `centerBegin` und `centerEnd` hängen auf beiden Seiten der Box, was so ist, wie die Uhr totenzentriert bleibt, selbst wenn das Wetter und das Update-Badge kommen und gehen. Lege mehr als ein Widget in `center` und sie werden gemeinsam zentriert; lasse es leer und `centerBegin` und `centerEnd` treffen sich in der Mitte der Leiste.

Eine Regel, die es wert ist, verinnerlicht zu werden: **Sobald du deine eigene `shell.json` hast, ist sie kanonisch**. Bis du irgendetwas anpasst, liest die Shell Omarchys Standarddatei. In dem Moment, in dem du ein Widget ziehst, `omarchy bar` ausführst oder die Datei selbst bearbeitest, gehört sie dir — es gibt kein tiefes Mergen, also werden neue Standard-Widgets in zukünftigen Omarchy-Releases nicht automatisch auf deiner Leiste erscheinen. `omarchy bar defaults` legt das mitgelieferte Layout zurück, wann immer du eine saubere Ausgangslage willst.

Dieselbe Datei hält auch deine Leerlauf-Zeiten auf der obersten Ebene, außerhalb des `bar`-Schlüssels: `idle.screensaver` und `idle.lock`, beide in Sekunden, seit du in den Leerlauf gegangen bist. Also setzt der Standard-Bildschirmschoner bei 150 Sekunden ein und die Sperre bei 300.
