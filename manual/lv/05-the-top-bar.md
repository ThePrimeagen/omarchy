# Augšējā josla

Josla gar ekrāna augšpusi ir Omarchy josla. Tā nav pieskrūvēta statusa josla, bet gan daļa no Omarchy čaulas — viena ilgstoši darbojošās Quickshell procesa, kas zīmē arī izvēlni, paziņojumus, OSD uznirstošos logus un bloķēšanas ekrānu. Tāpēc tā perfekti sader ar visu pārējo un tāpēc panelis atveras acumirklī, nevis palaiž jaunu lietotni.

Tā ir arī vienīgā darbvirsmas daļa, kas vienmēr ir uz ekrāna, tāpēc ir vērts zināt, ko dara visas tās mazās zīmes.

## Kas tajā ir pēc noklusējuma

Joslai ir trīs sadaļas. Kreisajā pusē atrodas Omarchy logo (izvēlnes palaidējs) un darbvietu indikatori. Centrā ir statusa indikatori, pulkstenis, Elsewhen (pasaules pulkstenis), laikapstākļi un Omarchy atjauninājuma nozīmīte. Labajā pusē: sistēmas paplāte, tastatūras izkārtojums (kad ir konfigurēts vairāk nekā viens izkārtojums vai ievades metode), aģenti, Bluetooth, tīkls, audio, displejs un barošana.

Daži no tiem parādās tikai tad, kad tiem ir kas sakāms. Tastatūras izkārtojums parādās tikai tad, ja esi konfigurējis vairāk nekā vienu izkārtojumu vai ievades metodi. Atjauninājuma nozīmīte parādās tikai tad, kad gaida Omarchy atjauninājums.

## Klikšķināšana apkārt

Gandrīz katrs logrīks kaut ko dara ar kreiso, labo un vidējo klikšķi, un vairāki reaģē uz ritināšanu. Šī ir daļa, ko cilvēki palaiž garām — labajā un vidējā pogā slēpjas daudz labā.

| Logrīks | Kreisais klikšķis | Labais klikšķis | Vidējais klikšķis / ritināšana |
| --- | --- | --- | --- |
| Izvēlne | Omarchy izvēlne | Jauns terminālis | — |
| Darbvietas | Fokusēt šo darbvietu šajā monitorā | — | Ritināt: nākamā/iepriekšējā darbvieta |
| Pulkstenis | Kalendāra uznirstošais logs | Pārslēgt etiķetes formātu ciklā | Vidējais klikšķis: laika joslas izvēlne |
| Pasaules pulkstenis | Pasaules pulksteņa panelis | Atsvaidzināt | Vidējais klikšķis: atsvaidzināt |
| Laikapstākļi | Prognozes uznirstošais logs | Pilni laikapstākļi kā paziņojums | Vidējais klikšķis: atsvaidzināt |
| Audio | Audio panelis | Izslēgt skaņu | Vidējais klikšķis: panelis · ritināt: skaļums |
| Mikrofons | Izslēgt mikrofonu | — | Vidējais klikšķis: audio panelis · ritināt: ievades skaļums |
| Tīkls | Tīkla panelis | — | — |
| Bluetooth | Bluetooth panelis | Pārslēgt radio | — |
| Displejs | Displeja panelis | — | Ritināt: spilgtums |
| Barošana | Barošanas panelis | Pārslēgt akumulatora procentu rādīšanu | — |
| Multivide | Atskaņot/pauzēt | Vāka attēla uznirstošais logs | Vidējais klikšķis: nākamais · ritināt: iepriekšējais/nākamais |
| Aģenti | Aģentu panelis | Palaist savu aģentu | Vidējais klikšķis: atsvaidzināt lietojumu |
| Paplāte | Novietot kursoru, lai atklātu atvilktni | Labais klikšķis uz ševrona, lai pārvaldītu | — |
| Omarchy atjauninājums | Palaist atjauninājumu | — | — |

Ne viss šajā tabulā pēc noklusējuma ir tavā joslā. Multivides logrīks (MPRIS pašlaik atskaņotais, ar ritinošu ierakstu un izpildītāju) un mikrofona logrīks abi ir iebūvēti, bet pēc noklusējuma izslēgti — pievieno tos, ja vēlies, kā aprakstīts tālāk.

## Paneļi

Noklikšķinot uz joslas ikonas, atveras panelis, kas ir kārtīgs uznirstošais logs ar slīdņiem, sarakstiem un tastatūras navigāciju, nevis rīka padoms. Katram ir arī karstais taustiņš, tāpēc tev nekad nav jāmērķē uz 16 pikseļu zīmi:

| Karstais taustiņš | Panelis |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Tīkls |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Displejs |
| `Super + Ctrl + P` | Barošana |
| `Super + Ctrl + Alt + D` | Kalendārs |
| `Super + Ctrl + Alt + E` | Pasaules pulkstenis |
| `Super + Ctrl + X` | Aģenti |
| `Super + Ctrl + 1-9` | Pārslēgt n-to paneli labajā sadaļā |

Paneļi nav tikai rādījumi. Tajos tu patiešām dari lietu:

- **Audio** ir galvenā skaļuma slīdnis, izvades ierīces izvēlne un mikseris katrai lietotnei, tāpēc vari pieklusināt to vienu pārlūka cilni, neaiztiekot visu pārējo.
- **Tīkls** meklē Wi-Fi, rāda signāla stiprumu, izveido savienojumu un ļauj izvēlēties DNS pakalpojumu sniedzēju.
- **Bluetooth** uzskaita tavas ierīces ar savienošanu/atvienošanu un akumulatora līmeņiem.
- **Barošana** rāda akumulatora statistiku, pārslēdz barošanas profilus (tā atceras atsevišķu izvēli akumulatoram un AC) un izdrukā nedaudz sistēmas informācijas.
- **Displejs** satur spilgtuma slīdni, teksta lielumu, monitora mērogošanas priekšiestatījumus un — kad tev ir vairāk nekā viens ekrāns — vadīklas katram monitoram. Skaties [monitorus](33-monitors.md), lai uzzinātu dziļāko stāstu.
- **Pulkstenis** atver mēneša režģi ar ISO nedēļu numuriem un mēnešu pārslēgšanu.
- **Pasaules pulkstenis** uztur rindu katrai pilsētai, ar tās laikapstākļiem un to, kā rit tās diena. Meklēšana atrod gan pilsētas, gan laika joslas, tāpēc Fort Lauderdale ir Fort Lauderdale, nevis New York. Ja augšējā rinda nosauc nepareizo pilsētu, noklikšķini uz tās un pasaki, kur atrodies; izvēlies vietu citā laika joslā, un sistēmas pulkstenis arī pārvietosies turp, kas ir ērti ceļojot. Novieto kursoru virs pilsētas un noklikšķini uz personas pogas, lai pateiktu, kurš tur dzīvo — ar vienkāršiem vārdiem vai `@` GitHub lietotājvārdiem, lai atvestu līdzi arī viņu sejas.

Katrs panelis pieņem gan tastatūru, gan peli: bultiņas pārvieto, Return aktivizē, Tab pāriet uz blakus paneli un Escape aizver.

`Super + Ctrl + 1-9` skaita paneļus no kreisās uz labo labajā sadaļā, izlaižot paplāti, jo tai nav sava paneļa. Tāpēc numurs atbilst ikonai, uz kuru tu norādītu.

### Tailscale un Dropbox

Vēl divi logrīki parādās joslā tikai tad, kad instalē atbilstošo pakalpojumu no **Instalēt → Pakalpojums**, un abus ir vērts zināt, jo tie dara vairāk nekā tikai ziņo statusu.

**Tailscale** panelis savieno un atvieno tailnet, pārslēdzas starp kontiem un izvēlas izejas mezglu (tajā sarakstā parādās gan tavas paša ierīces, gan Mullvad reģioni). Tas arī pārlūko tavas ierīces — un ar vienu izvēlētu `s` sūta tai failus caur Taildrop, kas ir ātrākais veids, kā pārvietot failu uz tālruni vai citu klēpjdatoru. `c` kopē ierīces IP, `n` tās nosaukumu un `d` tās pilno DNS nosaukumu. Katrā ierīces rindā ir arī sūtīšanas poga, ja labprātāk klikšķini. Tas pats no termināļa ir `omarchy tailscale send <machine> [file...]`.

**Dropbox** panelis apstrādā pieteikšanos, rāda, cik daudz krātuves esi izmantojis, un uzskaita nesen sinhronizētos failus.

Jebkura pakalpojuma noņemšana noņem arī tā logrīku no joslas.

## Indikatori

Mazā kopa centrā ir indikatoru logrīks. Tās ir statusa zīmes režīmiem, kurus esi ieslēdzis: netraucēt, nakts apgaismojums, rindā ievietots [atgādinājums](09-reminders.md), aktīva ekrāna ierakstīšana un palikšana nomodā, kā arī brīdinājumi, kamēr ir ieslēgts sudo bez paroles vai kāds ir savienots ar attālo sesiju. Tie iedegas, kad režīms ir aktīvs, un citādi paliek malā — novieto kursoru tieši blakus tiem, kur atrastos neaktīvie, lai uz tiem palūkotos. Noklikšķinot uz indikatora, šis režīms tiek pārslēgts. Vēl viens ir tikai statusam: attālā sesija iedegas sarkanā krāsā, kamēr kāds ir savienots ar šo ierīci caur gliff.

Ja labprātāk tos vienmēr redzētu, logrīkam iestati `alwaysShow` uz `true`. Un ja tev rūp tikai daži no tiem, uzskaiti vēlamos `items`: `["Dnd", "Reminder", "NightLight"]`. Tev var būt vairāk nekā viens indikatoru logrīks, tāpēc dažādas sadaļas var rādīt dažādas apakškopas.

## Joslas pārkārtošana

Josla konfigurējas pati. Tev nav jāatver konfigurācijas fails, lai kaut ko pārvietotu.

Satver tukšu vietu joslā ap centru un velc to uz citu ekrāna malu, un josla pārvietosies turp — kreisā, labā, augšējā vai apakšējā puse visas darbojas, un katrs logrīks pielāgojas (vertikālās joslas pāriet uz kompaktām tikai ikonu formām). Klikšķis un turēšana sāk to pašu vilkšanu. Veic dubultu kreiso klikšķi uz tās pašas tukšās vietas, lai joslas fonu ciklā pārslēgtu no caurspīdīga uz stiklainu uz necaurspīdīgu. Un velc jebkuru logrīku, lai to pārkārtotu vai iemestu citā sadaļā; pārējie logrīki pašķiras, lai atbrīvotu vietu tur, kur tas nolaidīsies.

Joslas vidus ir kaste: viss, kas tajā ir, paliek centrēts kā viena grupa, un logrīki abās tās pusēs karājas pie tās malām. Kamēr velc logrīku, kaste tiek rādīta kā kontūra vai kā līnija pāri joslai, kad tā ir tukša, un tu vari nomest tajā vai blakus tai. Kad nomešana nonāktu kastē, kaste izaug, lai uzņemtu logrīku.

Logrīku, ko vēlies tuvumā, bet ne vienmēr redzeslokā, var ievietot paplātes atvilktnē: uzvelc to uz paplātes, un atvilktne atvērsies, lai to uzņemtu. Tas tur atrodas aiz lietotņu ikonām, parādās ikreiz, kad parādās atvilktne, un tur savu atvilktni atvērtu, kamēr tā panelis ir augšā. Izvelc to atpakaļ uz joslas, lai to atgrieztu.

Ja labprātāk izvēlies no izvēlnes, **Izskats → Izvēlnes josla** satur novietojumu, un **Joslas fons** izvēlas, kā josla tiek zīmēta: **Necaurspīdīga josla**, **Stiklaina josla** (caurspīdīga, ar aizmugurē esošā izpludināšanu) vai **Caurspīdīga josla**.

Tām pašām lietām ir komandas, kas ir tas, ko vēlies [dotfiles](31-dotfiles.md) iestatījumam:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Lai pilnībā pievienotu vai noņemtu logrīku, izmanto spraudņu komandas. `omarchy plugin list` izdrukā katru logrīku, ko čaula pazīst, ar tā id, un pēc tam:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Joslas slēpšana

`Super + Shift + Space` pārslēdz joslu izslēgtu un atpakaļ ieslēgtu, nenogalinot čaulu — paneļi un karstie taustiņi turpina darboties, tu vienkārši atgūsti pikseļus. Tas ir arī izvēlnē zem **Izskats → Izvēlnes josla → Slēpt joslu**.

## Konfigurācijas fails

Viss tas tiek glabāts `~/.config/omarchy/shell.json`, zem `bar` atslēgas. Šeit ir saīsināta versija:

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

Katrs logrīks ir viens ieraksts vienā no pieciem izkārtojuma masīviem, un tā iestatījumi atrodas iekļauti šajā ierakstā — nav atsevišķa iestatījumu faila un nav `config` apakšobjekta. Pulksteņa `format`, `formatAlt` (uz ko pārslēdz labais klikšķis ciklā) un `verticalFormat` visi dzīvo tieši tur uz `{ "id": "omarchy.clock" }`.

`center` ir kaste joslas vidū: viss tajā ir centrēts uz ekrāna kā viena grupa. `centerBegin` un `centerEnd` karājas abās kastes pusēs, un tā pulkstenis paliek pašā centrā pat tad, kad laikapstākļi un atjauninājuma nozīmīte nāk un iet. Ieliec vairāk nekā vienu logrīku `center`, un tie tiek centrēti kopā; atstāj to tukšu, un `centerBegin` un `centerEnd` satiekas joslas vidū.

Viens noteikums, ko vērts iegaumēt: **kad tev ir savs `shell.json`, tas ir kanoniskais**. Kamēr neko nepielāgo, čaula lasa Omarchy noklusējuma failu. Tiklīdz tu velc logrīku, palaiž `omarchy bar` vai rediģē failu pats, tas pieder tev — nav dziļas sapludināšanas, tāpēc jauni noklusējuma logrīki turpmākajos Omarchy izlaidumos tavā joslā automātiski neparādīsies. `omarchy bar defaults` atgriež piegādāto izkārtojumu ikreiz, kad vēlies tīru lapu.

Tas pats fails augstākajā līmenī, ārpus `bar` atslēgas, glabā arī tavus dīkstāves laikus: `idle.screensaver` un `idle.lock`, abi sekundēs kopš tu kļuvi dīkstāvē. Tāpēc noklusējuma ekrānsaudzētājs ieslēdzas pie 150 sekundēm un bloķēšana pie 300.
