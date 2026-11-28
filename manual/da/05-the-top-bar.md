# Topbaren

Striben langs toppen af din skærm er Omarchy-baren. Den er ikke en statusbar, der er boltet på bagefter, men en del af Omarchy-skallen, den ene langvarigt kørende Quickshell-proces, der også tegner menuen, notifikationerne, OSD-popups og låseskærmen. Det er derfor, den matcher temaet perfekt med alt det andet, og derfor et panel åbner med det samme i stedet for at starte en ny app.

Den er også den eneste del af skrivebordet, der altid er på skærmen, så det er værd at vide, hvad alle de små glyffer laver.

## Hvad der er på den som standard

Baren har tre sektioner. Til venstre sidder Omarchy-logoet (menustarteren) og arbejdsområdeindikatorerne. I midten får du statusindikatorerne, uret, Elsewhen (et verdensur), vejret og et Omarchy-opdateringsbadge. Til højre: systembakken, tastaturlayoutet (når der er konfigureret mere end ét layout eller én inputmetode), agenter, bluetooth, netværk, lyd, skærm og strøm.

Nogle af dem vises kun, når de har noget at sige. Tastaturlayoutet vises kun, hvis du har konfigureret mere end ét layout eller én inputmetode. Opdateringsbadget vises kun, når der venter en Omarchy-opdatering.

## Klik dig omkring

Næsten alle widgets gør noget ved venstre-, højre- og midterklik, og flere reagerer på rulning. Det er den del, folk overser — højre- og midterknapperne er der, hvor meget af det gode gemmer sig.

| Widget | Venstre | Højre | Midterklik / rul |
| --- | --- | --- | --- |
| Menu | Omarchy-menu | Ny terminal | — |
| Arbejdsområder | Fokuser det arbejdsområde på denne skærm | — | Rul: næste/forrige arbejdsområde |
| Ur | Kalender-popup | Skift etiketformat i cyklus | Midterklik: tidszonevælger |
| Verdensur | Verdensurpanel | Opdater | Midterklik: opdater |
| Vejr | Vejrudsigts-popup | Fuldt vejr som en notifikation | Midterklik: opdater |
| Lyd | Lydpanel | Slå lyd fra | Midterklik: panel · rul: lydstyrke |
| Mikrofon | Sluk for mikrofonen | — | Midterklik: lydpanel · rul: inputlydstyrke |
| Netværk | Netværkspanel | — | — |
| Bluetooth | Bluetooth-panel | Slå radioen til/fra | — |
| Skærm | Skærmpanel | — | Rul: lysstyrke |
| Strøm | Strømpanel | Slå batteriprocent til/fra | — |
| Medier | Afspil/pause | Popup med coverbillede | Midterklik: næste · rul: forrige/næste |
| Agenter | Agentpanel | Start din agent | Midterklik: opdater forbrug |
| Bakke | Hold markøren over for at åbne skuffen | Højreklik på chevronen for at administrere | — |
| Omarchy-opdatering | Kør opdateringen | — | — |

Ikke alt i den tabel er på din bar fra start. Mediewidgetten (MPRIS, der afspiller nu, med et rullende nummer og kunstner) og mikrofonwidgetten er begge indbygget, men slået fra som standard — tilføj dem, hvis du vil have dem, som beskrevet nedenfor.

## Panelerne

Når du klikker på et barikon, åbnes et panel, som er en rigtig popup med skydere, lister og tastaturnavigation i stedet for et værktøjstip. Hvert panel har også en genvejstast, så du aldrig behøver at sigte efter en glyf på 16 pixel:

| Hotkey | Panel |
| --- | --- |
| `Super + Ctrl + A` | Lyd |
| `Super + Ctrl + N` | Netværk |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Skærm |
| `Super + Ctrl + P` | Strøm |
| `Super + Ctrl + Alt + D` | Kalender |
| `Super + Ctrl + Alt + E` | Verdensur |
| `Super + Ctrl + X` | Agenter |
| `Super + Ctrl + 1-9` | Slå det n-te panel i højre sektion til/fra |

Panelerne er ikke bare aflæsninger. Det er der, du rent faktisk gør tingene:

- **Lyd** har en hovedlydstyrkeskyder, en vælger til outputenhed og en mixer pr. app, så du kan skrue ned for den ene browserfane uden at røre ved alt det andet.
- **Netværk** scanner efter Wi-Fi, viser signalstyrke, opretter forbindelse og lader dig vælge en DNS-udbyder.
- **Bluetooth** viser dine enheder med opret/afbryd forbindelse og batteriniveauer.
- **Strøm** viser batteristatistik, skifter strømprofiler (den husker et separat valg for batteri og AC) og viser nogle systemoplysninger.
- **Skærm** har en lysstyrkeskyder, tekststørrelse, forudindstillinger for skærmskalering og — når du har mere end én skærm — kontroller pr. skærm. Se [skærme](33-monitors.md) for den længere forklaring.
- **Ur** åbner et månedsgitter med ISO-ugenumre og trin mellem måneder.
- **Verdensur** holder en række pr. by med dens vejr, og hvordan dens dag går. Søgning finder også småbyer og ikke kun tidszoner, så Fort Lauderdale er Fort Lauderdale og ikke New York. Hvis linjen øverst nævner den forkerte by, skal du klikke på den og sige, hvor du er; vælg et sted i en anden tidszone, og systemuret flytter også derhen, hvilket er praktisk, når du rejser. Hold markøren over en by, og klik på personknappen for at sige, hvem der bor der — almindelige navne eller `@` GitHub-handle for også at få deres ansigter med.

Alle paneler tager imod tastaturet såvel som musen: piletaster flytter, Return aktiverer, Tab går til nabopanelet, og Escape lukker.

`Super + Ctrl + 1-9` tæller paneler fra venstre mod højre i højre sektion og springer bakken over, da den ikke har sit eget panel. Så tallet svarer til det ikon, du ville pege på.

### Tailscale and Dropbox

To yderligere widgets vises kun på baren, når du installerer den matchende tjeneste fra **Install → Service**, og begge er værd at kende, fordi de gør mere end at rapportere status.

**Tailscale**-panelet opretter og afbryder forbindelse til tailnettet, skifter mellem konti og vælger en exit node (både dine egne maskiner og Mullvad-regioner vises på den liste). Det gennemser også dine maskiner — og når en er valgt, sender `s` filer til den via Taildrop, hvilket er den hurtigste måde at flytte en fil til din telefon eller en anden bærbar på. `c` kopierer maskinens IP, `n` dens navn og `d` dens fulde DNS-navn. Der er også en send-knap på hver maskinrække, hvis du hellere vil klikke. Det samme fra terminalen er `omarchy tailscale send <machine> [file...]`.

**Dropbox**-panelet håndterer login, viser, hvor meget lagerplads du har brugt, og viser nyligt synkroniserede filer.

Hvis du fjerner en af tjenesterne, forsvinder dens widget også fra baren igen.

## Indikatorer

Den lille klynge i midten er indikatorwidgetten. Det er statusglyffer for tilstande, du har slået til: forstyr ikke, natlys, en [påmindelse](09-reminders.md) i kø, en aktiv skærmoptagelse og hold vågen plus advarsler, mens adgangskodefri sudo er slået til, eller nogen er forbundet til en fjernsession. De lyser op, når tilstanden er aktiv, og holder sig ellers ude af vejen — hold markøren lige ved siden af dem, hvor de inaktive ville sidde, for at kigge på dem. Når du klikker på en indikator, slår du den tilstand til eller fra. En mere er kun status: en fjernsession lyser rødt, mens nogen er forbundet til denne maskine via gliff.

Hvis du hellere vil have dem altid synlige, skal du sætte `alwaysShow` til `true` på widgetten. Og hvis du kun bryder dig om nogle af dem, skal du angive dem, du vil have, i `items`: `["Dnd", "Reminder", "NightLight"]`. Du kan have mere end én indikatorwidget, så forskellige sektioner kan vise forskellige delmængder.

## Flyt rundt på baren

Baren konfigurerer sig selv. Du behøver ikke åbne en konfigurationsfil for at flytte rundt på ting.

Tag fat i et tomt stykke af baren omkring midten, og træk det mod en anden skærmkant, så flytter baren derhen — venstre, højre, top eller bund fungerer alle, og hver widget tilpasser sig (lodrette barer falder tilbage til kompakte former kun med ikoner). Et klik-og-hold starter det samme træk. Dobbeltklik med venstre museknap på det samme tomme område for at skifte barens baggrund i cyklus fra klar til glasagtig til uigennemsigtig. Og træk en hvilken som helst widget for at omarrangere den eller smide den over i en anden sektion; de andre widgets glider fra hinanden for at gøre plads, hvor den lander.

Midten af baren er en boks: hvad der end er i den, forbliver centreret som én gruppe, og widgets på hver side af den hænger ud fra dens kanter. Mens du trækker en widget, vises boksen som en kontur eller som en linje tværs over baren, når den er tom, og du kan slippe den i den eller ved siden af den. Når et slip ville lande i boksen, vokser boksen for at tage widgetten ind.

En widget, du gerne vil have i nærheden, men ikke altid i syne, kan komme i bakkens skuffe: træk den over på bakken, så åbner skuffen sig for at tage imod den. Den sidder der efter appikonerne, vises, hver gang skuffen gør det, og holder sin skuffe åben, mens dens panel er oppe. Træk den tilbage ud på baren for at sætte den tilbage.

Hvis du hellere vil vælge fra en menu, har **Appearance → Menu Bar** positionen, og **Bar Background** vælger, hvordan baren tegnes: **Opaque Bar**, **Glassy Bar** (gennemsigtig, med det bagved sløret) eller **Clear Bar**.

De samme ting har kommandoer, hvilket er det, du vil have til en [dotfiles](31-dotfiles.md)-opsætning:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Brug pluginkommandoerne til at tilføje eller fjerne en widget helt. `omarchy plugin list` udskriver hver widget, skallen kender til, med dens id, og derefter:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Skjul baren

`Super + Shift + Space` slår baren fra og til igen uden at dræbe skallen — paneler og genvejstaster bliver ved med at fungere, du får bare pixelsene tilbage. Den findes også i menuen under **Appearance → Menu Bar → Hide Bar**.

## Konfigurationsfilen

Alt sammen gemmes i `~/.config/omarchy/shell.json` under nøglen `bar`. Her er en beskåret version:

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

Hver widget er én post i et af de fem layoutarrays, og dens indstillinger sidder direkte på den post — der er ingen separat indstillingsfil og intet `config`-underobjekt. Urets `format`, `formatAlt` (det, højreklik skifter til i cyklus) og `verticalFormat` lever alle lige der på `{ "id": "omarchy.clock" }`.

`center` er boksen i midten af baren: alt i den centreres på skærmen som én gruppe. `centerBegin` og `centerEnd` hænger ud fra hver side af boksen, og det er sådan, uret forbliver helt i midten, selv når vejret og opdateringsbadget kommer og går. Sæt mere end én widget i `center`, og de centreres sammen; lad den stå tom, og `centerBegin` og `centerEnd` mødes midt på baren.

Én regel, der er værd at lære udenad: **når du først har din egen `shell.json`, er den kanonisk**. Indtil du tilpasser noget som helst, læser skallen Omarchys standardfil. I det øjeblik du trækker en widget, kører `omarchy bar` eller selv redigerer filen, ejer du den — der sker ingen dyb fletning, så nye standardwidgets i fremtidige Omarchy-udgivelser dukker ikke automatisk op på din bar. `omarchy bar defaults` sætter det leverede layout tilbage, når som helst du vil have en ren tavle.

Den samme fil rummer også dine tomgangstider på øverste niveau uden for `bar`-nøglen: `idle.screensaver` og `idle.lock`, begge i sekunder, efter at du blev inaktiv. Så standardskærmskåneren går i gang efter 150 sekunder og låsen efter 300.
