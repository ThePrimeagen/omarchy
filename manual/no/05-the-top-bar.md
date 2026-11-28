# Toppfeltet

Stripen langs toppen av skjermen din er Omarchy-feltet. Det er ikke et påskrudd statusfelt, men en del av Omarchy-skallet, den ene Quickshell-prosessen som kjører lenge og også tegner menyen, varslene, OSD-popupene og låseskjermen. Derfor matcher det temaet perfekt med alt annet, og derfor åpnes et panel øyeblikkelig i stedet for å starte en ny app.

Det er også den eneste delen av skrivebordet som alltid er på skjermen, så det er verdt å vite hva alle de små glyfene gjør.

## Hva som er på det som standard

Feltet har tre seksjoner. Til venstre sitter Omarchy-logoen (menystarteren) og arbeidsområdeindikatorene. I midten får du statusindikatorene, klokken, Elsewhen (en verdensklokke), været og et merke for Omarchy-oppdatering. Til høyre: systemstatusfeltet, tastaturoppsettet (når mer enn ett oppsett eller én inndatametode er konfigurert), agenter, bluetooth, nettverk, lyd, skjerm og strøm.

Noen av disse dukker bare opp når de har noe å si. Tastaturoppsettet vises bare hvis du har konfigurert mer enn ett oppsett eller én inndatametode. Oppdateringsmerket vises bare når det venter en Omarchy-oppdatering.

## Å klikke rundt

Nesten hver widget gjør noe ved venstre-, høyre- og midtklikk, og flere reagerer på rulling. Dette er delen folk går glipp av — det er på høyre- og midtknappen mye av det gode skjuler seg.

| Widget | Venstre | Høyre | Midt / rull |
| --- | --- | --- | --- |
| Meny | Omarchy-meny | Ny terminal | — |
| Arbeidsområder | Fokuser det arbeidsområdet på denne skjermen | — | Rull: neste/forrige arbeidsområde |
| Klokke | Kalender-popup | Veksle etikettformatet | Midt: tidssonevelger |
| Verdensklokke | Verdensklokkepanel | Oppdater | Midt: oppdater |
| Vær | Værmelding-popup | Full værmelding som et varsel | Midt: oppdater |
| Lyd | Lydpanel | Demp | Midt: panel · rull: volum |
| Mikrofon | Demp mikrofonen | — | Midt: lydpanel · rull: inngangsvolum |
| Nettverk | Nettverkspanel | — | — |
| Bluetooth | Bluetooth-panel | Slå radioen av/på | — |
| Skjerm | Skjermpanel | — | Rull: lysstyrke |
| Strøm | Strømpanel | Veksle batteriprosenten | — |
| Media | Spill av / pause | Popup for coverbilde | Midt: neste · rull: forrige/neste |
| Agenter | Agentpanel | Start agenten din | Midt: oppdater bruk |
| Skuff | Svev for å vise skuffen | Høyreklikk på chevronen for å administrere | — |
| Omarchy-oppdatering | Kjør oppdateringen | — | — |

Ikke alt i den tabellen er på feltet ditt rett ut av boksen. Media-widgeten (MPRIS nå spilles, med et rullende spor og artist) og mikrofon-widgeten er begge innebygd, men av som standard — legg dem til hvis du vil ha dem, som beskrevet nedenfor.

## Panelene

Å klikke på et feltikon åpner et panel, som er en ordentlig popup med glidebrytere, lister og tastaturnavigasjon i stedet for et verktøytips. Hvert av dem har også en hurtigtast, så du aldri trenger å sikte på en glyf på 16 piksler:

| Hurtigtast | Panel |
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

Panelene er ikke avlesninger. Det er der du faktisk gjør tingen:

- **Audio** har en glidebryter for hovedvolum, en velger for utgangsenhet og en mikser per app, så du kan skru ned den ene nettleserfanen uten å røre alt annet.
- **Network** søker etter Wi-Fi, viser signalstyrke, kobler til og lar deg velge en DNS-leverandør.
- **Bluetooth** lister enhetene dine med tilkobling/frakobling og batterinivåer.
- **Power** viser batteristatistikk, bytter strømprofiler (den husker et eget valg for batteri og AC), og skriver ut litt systeminfo.
- **Display** har en glidebryter for lysstyrke, tekststørrelse, forhåndsinnstillinger for skjermskalering og — når du har mer enn én skjerm — kontroller per skjerm. Se [skjermer](33-monitors.md) for den dypere historien.
- **Clock** åpner et månedsrutenett med ISO-ukenumre og månedsbytte.
- **World clock** holder en rad per by, med været der og hvordan dagen dens går. Søk finner byer så vel som tidssoner, så Fort Lauderdale er Fort Lauderdale og ikke New York. Hvis linjen øverst navngir feil by, klikk på den og si hvor du er; velg et sted i en annen tidssone, så flytter systemklokken dit også, noe som er hendig når du reiser. Hold musepekeren over en by og klikk på personknappen for å si hvem som bor der — vanlige navn, eller `@` GitHub-brukernavn for å ta med ansiktene deres.

Hvert panel tar tastaturet så vel som musen: piler flytter, Return aktiverer, Tab går til nabopanelet, og Escape lukker.

`Super + Ctrl + 1-9` teller paneler fra venstre til høyre i høyre seksjon, og hopper over skuffen siden den ikke har noe eget panel. Så tallet samsvarer med ikonet du ville pekt på.

### Tailscale og Dropbox

To widgeter til dukker bare opp på feltet når du installerer den tilsvarende tjenesten fra **Install → Service**, og begge er verdt å kjenne til fordi de gjør mer enn å rapportere status.

**Tailscale**-panelet kobler til og fra tailnet-et, bytter mellom kontoer og velger en exit node (både dine egne maskiner og Mullvad-regioner dukker opp i den listen). Det blar også gjennom maskinene dine — og med én valgt sender `s` filer til den over Taildrop, som er den raskeste måten å flytte en fil til telefonen din eller en annen bærbar på. `c` kopierer maskinens IP, `n` navnet dens, og `d` det fulle DNS-navnet dens. Det er en sendeknapp på hver maskinrad også, hvis du heller vil klikke. Det samme fra terminalen er `omarchy tailscale send <machine> [file...]`.

**Dropbox**-panelet håndterer innlogging, viser hvor mye lagring du har brukt, og lister nylig synkroniserte filer.

Å fjerne en av tjenestene tar widgeten dens tilbake av feltet.

## Indikatorer

Den lille klyngen i midten er indikator-widgeten. Disse er statusglyfer for moduser du har slått på: ikke forstyrr, nattlys, en køet [påminnelse](09-reminders.md), et aktivt skjermopptak og hold deg våken, pluss advarsler mens passordløs sudo er på eller noen er koblet til en ekstern økt. De lyser opp når modusen er aktiv og holder seg ellers unna — hold musepekeren rett ved siden av dem, der de inaktive ville sittet, for å kikke på dem. Å klikke på en indikator veksler den modusen. Én til er kun status: en ekstern økt lyser rødt mens noen er koblet til denne maskinen gjennom gliff.

Hvis du heller vil at de alltid skal være synlige, sett `alwaysShow` til `true` på widgeten. Og hvis du bare bryr deg om noen av dem, list opp dem du vil ha i `items`: `["Dnd", "Reminder", "NightLight"]`. Du kan ha mer enn én indikator-widget, så forskjellige seksjoner kan vise forskjellige delmengder.

## Å omorganisere feltet

Feltet konfigurerer seg selv. Du trenger ikke åpne en konfigurasjonsfil for å flytte ting.

Ta tak i et tomt område på feltet rundt midten og dra det mot en annen skjermkant, så flytter feltet dit — venstre, høyre, topp eller bunn fungerer alle, og hver widget tilpasser seg (vertikale felt faller tilbake til kompakte former med kun ikoner). Et klikk-og-hold starter samme draing. Dobbelt-venstreklikk på samme tomme plass for å veksle feltbakgrunnen fra gjennomsiktig til glassaktig til ugjennomsiktig. Og dra en hvilken som helst widget for å omorganisere den eller kaste den inn i en annen seksjon; de andre widgetene glir fra hverandre for å gi plass der den skal lande.

Midten av feltet er en boks: det som er i den, holder seg sentrert som én gruppe, og widgetene på hver side av den henger på kantene dens. Mens du drar en widget, vises boksen som et omriss, eller en linje over feltet når den er tom, og du kan slippe inn i den eller ved siden av den. Når et slipp ville landet i boksen, vokser boksen for å ta widgeten inn.

En widget du vil ha rundt, men ikke alltid i syne, kan gå i skuffens skuff: dra den på skuffen, og skuffen åpnes for å ta den. Den sitter der etter appikonene, dukker opp når skuffen gjør det, og holder skuffen sin åpen mens panelet dens er oppe. Dra den tilbake ut på feltet for å sette den tilbake.

Hvis du heller vil velge fra en meny, har **Appearance → Menu Bar** posisjonen, og **Bar Background** velger hvordan feltet tegnes: **Opaque Bar**, **Glassy Bar** (gjennomsiktig, med det som er bak, uskarpt), eller **Clear Bar**.

De samme tingene har kommandoer, noe som er det du vil ha for et [dotfiles](31-dotfiles.md)-oppsett:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Å legge til eller fjerne en widget helt, bruk plugin-kommandoene. `omarchy plugin list` skriver ut hver widget skallet kjenner til med id-en dens, og deretter:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Å skjule feltet

`Super + Shift + Space` veksler feltet av og på igjen uten å drepe skallet — paneler og hurtigtaster fortsetter å fungere, du får bare pikslene tilbake. Det er også i menyen under **Appearance → Menu Bar → Hide Bar**.

## Konfigurasjonsfilen

Alt sammen lagres i `~/.config/omarchy/shell.json`, under `bar`-nøkkelen. Her er en trimmet versjon:

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

Hver widget er én oppføring i ett av de fem layout-arrayene, og innstillingene dens sitter innebygd på den oppføringen — det er ingen separat innstillingsfil og ingen `config`-underobjekt. Klokkens `format`, `formatAlt` (det høyreklikk veksler til), og `verticalFormat` bor alle rett der på `{ "id": "omarchy.clock" }`.

`center` er boksen midt på feltet: alt i den sentreres på skjermen som én gruppe. `centerBegin` og `centerEnd` henger på hver side av boksen, noe som er hvordan klokken forblir død sentrert selv om været og oppdateringsmerket kommer og går. Sett mer enn én widget i `center` og de sentreres sammen; la den være tom og `centerBegin` og `centerEnd` møtes midt på feltet.

Én regel verdt å internalisere: **når du først har din egen `shell.json`, er den kanonisk**. Inntil du tilpasser noe, leser skallet Omarchys standardfil. I det øyeblikket du drar en widget, kjører `omarchy bar`, eller redigerer filen selv, eier du den — det er ingen dyp fletting, så nye standardwidgeter i fremtidige Omarchy-utgivelser dukker ikke opp på feltet ditt automatisk. `omarchy bar defaults` setter det leverte oppsettet tilbake når du vil ha et rent ark.

Samme fil holder også inaktivitetstidene dine på toppnivå, utenfor `bar`-nøkkelen: `idle.screensaver` og `idle.lock`, begge i sekunder siden du ble inaktiv. Så standard skjermsparer slår inn ved 150 sekunder og låsen ved 300.
