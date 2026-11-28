# De bovenbalk

De strook langs de bovenkant van je scherm is de Omarchy-balk. Het is geen erop geschroefde statusbalk, maar onderdeel van de Omarchy-shell, het ene langlopende Quickshell-proces dat ook het menu, de meldingen, de OSD-pop-ups en het vergrendelscherm tekent. Daarom stemt hij perfect af op alles eromheen en opent een paneel direct, in plaats van een nieuwe app te starten.

Het is ook het enige onderdeel van het bureaublad dat altijd op het scherm staat, dus het is de moeite waard om te weten wat al die kleine tekentjes doen.

## Wat er standaard op staat

De balk heeft drie secties. Links staan het Omarchy-logo (de menustarter) en de werkruimte-indicatoren. In het midden krijg je de statusindicatoren, de klok, Elsewhen (een wereldklok), het weer en een Omarchy-updatebadge. Rechts: het systeemvak, de toetsenbordindeling (wanneer er meer dan één indeling of invoermethode is geconfigureerd), agents, bluetooth, netwerk, audio, weergave en energie.

Een paar daarvan verschijnen alleen als ze iets te melden hebben. De toetsenbordindeling verschijnt alleen als je meer dan één indeling of invoermethode hebt geconfigureerd. De updatebadge verschijnt alleen als er een Omarchy-update klaarstaat.

## Rondklikken

Bijna elke widget doet iets bij links, rechts en midden klikken, en verschillende reageren op scrollen. Dit is het deel dat mensen missen — achter de rechter- en middelste knoppen zit veel van het goede spul verstopt.

| Widget | Links | Rechts | Midden / scrollen |
| --- | --- | --- | --- |
| Menu | Omarchy-menu | Nieuwe terminal | — |
| Werkruimtes | Focus op die werkruimte op deze monitor | — | Scrollen: volgende/vorige werkruimte |
| Klok | Kalenderpop-up | Door labelindelingen bladeren | Midden: tijdzonekiezer |
| Wereldklok | Wereldklokpaneel | Vernieuwen | Midden: vernieuwen |
| Weer | Weersverwachtingspop-up | Volledig weer als melding | Midden: vernieuwen |
| Audio | Audiopaneel | Dempen | Midden: paneel · scrollen: volume |
| Microfoon | Dempt de microfoon | — | Midden: audiopaneel · scrollen: invoervolume |
| Netwerk | Netwerkpaneel | — | — |
| Bluetooth | Bluetooth-paneel | Schakelt de radio in/uit | — |
| Weergave | Weergavepaneel | — | Scrollen: helderheid |
| Energie | Energiepaneel | Schakelt het batterijpercentage in/uit | — |
| Media | Afspelen/pauzeren | Hoesafbeeldingspop-up | Midden: volgende · scrollen: vorige/volgende |
| Agents | Agents-paneel | Start je agent | Midden: gebruik vernieuwen |
| Systeemvak | Beweeg erover om de lade te tonen | Rechts op de chevron om te beheren | — |
| Omarchy-update | Voert de update uit | — | — |

Niet alles in die tabel staat standaard op je balk. De mediawidget (MPRIS now-playing, met een scrollende track en artiest) en de microfoonwidget zijn beide ingebouwd maar standaard uitgeschakeld — voeg ze toe als je ze wilt, zoals hieronder beschreven.

## De panelen

Klikken op een balkpictogram opent een paneel, een volwaardige pop-up met schuifregelaars, lijsten en toetsenbordnavigatie in plaats van een tooltip. Elk paneel heeft ook een sneltoets, zodat je nooit op een glyph van 16 pixels hoeft te mikken:

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
| `Super + Ctrl + 1-9` | Toggle the nth panel in the right section |

De panelen zijn geen afleesschermen. Daar doe je het werk echt:

- **Audio** heeft een hoofdvolumeschuifregelaar, een kiezer voor uitvoerapparaten en een mixer per app, zodat je dat ene browsertabblad zachter kunt zetten zonder al het andere aan te raken.
- **Network** scant naar Wi-Fi, toont signaalsterkte, maakt verbinding en laat je een DNS-provider kiezen.
- **Bluetooth** somt je apparaten op met verbinden/verbreken en batterijniveaus.
- **Power** toont batterijstatistieken, schakelt tussen energieprofielen (het onthoudt een aparte keuze voor batterij en AC) en toont wat systeeminformatie.
- **Display** heeft een helderheidsschuifregelaar, tekstgrootte, voorinstellingen voor monitorschaling en — als je meer dan één scherm hebt — bediening per monitor. Zie [monitors](33-monitors.md) voor het uitgebreidere verhaal.
- **Clock** opent een maandrooster met ISO-weeknummers en bladeren per maand.
- **World clock** houdt een rij per stad bij, met het weer daar en hoe de dag daar verloopt. Zoeken vindt plaatsen net zo goed als tijdzones, dus Fort Lauderdale is Fort Lauderdale en niet New York. Als de regel bovenaan de verkeerde stad noemt, klik erop en geef aan waar je bent; kies een plek in een andere tijdzone en de systeemklok verhuist ook mee, wat handig is als je reist. Beweeg over een stad en klik op de persoonsknop om aan te geven wie daar woont — gewone namen, of `@` GitHub-handles om ook hun gezichten mee te nemen.

Elk paneel werkt net zo goed met het toetsenbord als met de muis: pijlen bewegen, Return activeert, Tab gaat naar het aangrenzende paneel en Escape sluit.

`Super + Ctrl + 1-9` telt panelen van links naar rechts in de rechter sectie en slaat het systeemvak over, omdat dat geen eigen paneel heeft. Het nummer komt dus overeen met het pictogram waar je naar zou wijzen.

### Tailscale en Dropbox

Twee extra widgets verschijnen pas op de balk als je de bijbehorende service installeert via **Install → Service**, en beide zijn de moeite waard om te kennen omdat ze meer doen dan alleen status rapporteren.

Het **Tailscale**-paneel verbindt en verbreekt het tailnet, wisselt tussen accounts en kiest een exit node (je eigen machines en Mullvad-regio's verschijnen beide in die lijst). Het bladert ook door je machines — en met er een geselecteerd stuurt `s` er bestanden naartoe via Taildrop, wat de snelste manier is om een bestand naar je telefoon of een andere laptop te verplaatsen. `c` kopieert het IP van de machine, `n` de naam en `d` de volledige DNS-naam. Er staat ook een verzendknop op elke machinerij, als je liever klikt. Hetzelfde vanuit de terminal is `omarchy tailscale send <machine> [file...]`.

Het **Dropbox**-paneel regelt het inloggen, toont hoeveel opslag je hebt gebruikt en somt recent gesynchroniseerde bestanden op.

Als je een van beide services verwijdert, verdwijnt de widget weer van de balk.

## Indicatoren

Het kleine cluster in het midden is de indicatorenwidget. Dit zijn statusglyphs voor modi die je hebt ingeschakeld: niet storen, nachtlicht, een in de wachtrij staande [herinnering](09-reminders.md), een actieve schermopname en wakker blijven, plus waarschuwingen zolang passwordless sudo aanstaat of er iemand met een externe sessie is verbonden. Ze lichten op als de modus actief is en blijven anders uit de weg — beweeg er vlak naast, waar de inactieve zouden zitten, om daarnaar te gluren. Klikken op een indicator schakelt die modus in of uit. Er is er nog een die alleen status toont: een externe sessie licht rood op zolang er iemand via gliff met deze machine is verbonden.

Als je liever hebt dat ze altijd zichtbaar zijn, zet je `alwaysShow` op `true` bij de widget. En als alleen sommige je interesseren, som je in `items` op welke je wilt: `["Dnd", "Reminder", "NightLight"]`. Je kunt meer dan één indicatorenwidget hebben, zodat verschillende secties verschillende subsets kunnen tonen.

## De balk opnieuw indelen

De balk configureert zichzelf. Je hoeft geen configuratiebestand te openen om dingen te verplaatsen.

Pak een leeg stuk van de balk rond het midden en sleep het naar een andere schermrand, en de balk verhuist daarheen — links, rechts, boven of onder werkt allemaal, en elke widget past zich aan (verticale balken vallen terug op compacte vormen met alleen pictogrammen). Klikken-en-vasthouden start dezelfde sleepactie. Dubbelklik links op diezelfde lege ruimte om de balkachtergrond te laten doorlopen van transparant naar glasachtig naar ondoorzichtig. En sleep een willekeurige widget om hem opnieuw te ordenen of naar een andere sectie te gooien; de andere widgets schuiven uit elkaar om ruimte te maken waar hij zal landen.

Het midden van de balk is een vak: wat erin zit, blijft als één groep gecentreerd, en de widgets aan weerszijden hangen aan de randen ervan. Terwijl je een widget sleept, verschijnt het vak als een omtrek, of als een lijn over de balk als het leeg is, en je kunt erin of ernaast neerzetten. Als een neerzetactie in het vak zou landen, groeit het vak om de widget op te nemen.

Een widget die je bij de hand wilt hebben maar niet altijd in beeld, kan in de lade van het systeemvak: sleep hem op het systeemvak en de lade opent om hem op te nemen. Hij zit daar achter de app-pictogrammen, verschijnt telkens als de lade dat doet en houdt zijn lade open zolang zijn paneel openstaat. Sleep hem terug naar de balk om hem terug te zetten.

Als je liever uit een menu kiest, staat de positie bij **Appearance → Menu Bar** en kies je met **Bar Background** hoe de balk wordt getekend: **Opaque Bar**, **Glassy Bar** (doorzichtig, met wat erachter zit vervaagd) of **Clear Bar**.

Hetzelfde kan met commando's, wat je wilt voor een [dotfiles](31-dotfiles.md)-opzet:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Om een widget helemaal toe te voegen of te verwijderen, gebruik je de plugincommando's. `omarchy plugin list` toont elke widget die de shell kent met zijn id, en daarna:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## De balk verbergen

`Super + Shift + Space` schakelt de balk uit en weer in zonder de shell te beëindigen — panelen en sneltoetsen blijven werken, je krijgt alleen de pixels terug. Het staat ook in het menu onder **Appearance → Menu Bar → Hide Bar**.

## Het configuratiebestand

Dit alles wordt opgeslagen in `~/.config/omarchy/shell.json`, onder de sleutel `bar`. Hier is een ingekorte versie:

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

Elke widget is één item in een van de vijf layout-arrays, en de instellingen staan inline bij dat item — er is geen apart instellingenbestand en geen `config`-subobject. De `format`, `formatAlt` (waar een rechterklik naartoe doorloopt) en `verticalFormat` van de klok staan allemaal precies daar bij `{ "id": "omarchy.clock" }`.

`center` is het vak in het midden van de balk: alles erin wordt als één groep in het midden van het scherm gecentreerd. `centerBegin` en `centerEnd` hangen aan weerszijden van het vak, en zo blijft de klok precies in het midden, ook als het weer en de updatebadge komen en gaan. Zet je meer dan één widget in `center`, dan worden ze samen gecentreerd; laat je het leeg, dan komen `centerBegin` en `centerEnd` elkaar tegen in het midden van de balk.

Een regel die de moeite waard is om te onthouden: **zodra je je eigen `shell.json` hebt, is die leidend**. Totdat je iets aanpast, leest de shell het standaardbestand van Omarchy. Zodra je een widget sleept, `omarchy bar` uitvoert of het bestand zelf bewerkt, is het van jou — er is geen diepe samenvoeging, dus nieuwe standaardwidgets in toekomstige Omarchy-releases verschijnen niet automatisch op je balk. `omarchy bar defaults` zet de meegeleverde indeling terug wanneer je met een schone lei wilt beginnen.

Hetzelfde bestand bevat ook je inactiviteitstijden op het hoogste niveau, buiten de sleutel `bar`: `idle.screensaver` en `idle.lock`, beide in seconden sinds je inactief werd. De standaard screensaver treedt dus in werking na 150 seconden en de vergrendeling na 300.
