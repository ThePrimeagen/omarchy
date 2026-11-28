# Ülemine riba

Ekraani ülaosas olev riba on Omarchy riba. See ei ole külge poogitud olekuriba, vaid osa Omarchy kestast, ühest pikaealisest Quickshelli protsessist, mis joonistab ka menüü, teavitused, OSD hüpikaknad ja lukustuskuva. Seepärast sobitub see teemaliselt täiuslikult kõigega muuga ja seepärast avaneb paneel kohe, selle asemel et käivitada uus rakendus.

See on ka ainus töölaua osa, mis on alati ekraanil, nii et tasub teada, mida kõik need väikesed glüüfid teevad.

## Mis sellel vaikimisi on

Ribal on kolm jaotist. Vasakul on Omarchy logo (menüükäivitaja) ja tööruumide indikaatorid. Keskel on olekuindikaatorid, kell, Elsewhen (maailmakell), ilm ja Omarchy värskenduse märk. Paremal: süsteemisalv, klaviatuuripaigutus (kui on seadistatud rohkem kui üks paigutus või sisestusmeetod), agendid, bluetooth, võrk, heli, ekraan ja toide.

Mõni neist ilmub ainult siis, kui tal on midagi öelda. Klaviatuuripaigutus ilmub ainult siis, kui oled seadistanud rohkem kui ühe paigutuse või sisestusmeetodi. Värskenduse märk ilmub ainult siis, kui Omarchy värskendus ootab.

## Ringi klõpsimine

Peaaegu iga vidin teeb midagi vasaku, parema ja keskmise klõpsu korral ning mitu reageerib kerimisele. See on osa, mis inimestel kahe silma vahele jääb — parem ja keskmine nupp peidavad palju head kraami.

| Vidin | Vasak | Parem | Keskmine / kerimine |
| --- | --- | --- | --- |
| Menüü | Omarchy menüü | Uus terminal | — |
| Tööruumid | Fokuseeri see tööruum sellel monitoril | — | Kerimine: järgmine/eelmine tööruum |
| Kell | Kalendri hüpikaken | Vaheta sildi vormingut tsükliliselt | Keskmine: ajavööndi valija |
| Maailmakell | Maailmakella paneel | Värskenda | Keskmine: värskenda |
| Ilm | Ilmaennustuse hüpikaken | Täielik ilm teavitusena | Keskmine: värskenda |
| Heli | Heli paneel | Vaigista | Keskmine: paneel · kerimine: helitugevus |
| Mikrofon | Vaigista mikrofon | — | Keskmine: heli paneel · kerimine: sisendi helitugevus |
| Võrk | Võrgu paneel | — | — |
| Bluetooth | Bluetoothi paneel | Lülita raadio sisse/välja | — |
| Ekraan | Ekraani paneel | — | Kerimine: heledus |
| Toide | Toite paneel | Lülita aku protsendi näitamist | — |
| Meedia | Esita/peata | Kaanepildi hüpikaken | Keskmine: järgmine · kerimine: eelmine/järgmine |
| Agendid | Agentide paneel | Käivita oma agent | Keskmine: värskenda kasutusandmeid |
| Salv | Hõlju sahtli näitamiseks | Paremklõps noolel haldamiseks | — |
| Omarchy värskendus | Käivita värskendus | — | — |

Kõik tabelis olev ei ole sinu ribal karbist võttes. Meediavidin (MPRIS praegu mängiv, keriva loo ja esitajaga) ja mikrofonividin on mõlemad sisse ehitatud, kuid vaikimisi välja lülitatud — lisa need, kui soovid, nagu allpool kirjeldatud.

## Paneelid

Riba ikoonil klõpsamine avab paneeli, mis on korralik hüpikaken liugurite, loendite ja klaviatuuril navigeerimisega, mitte kohtspikker. Igal ühel on ka kiirklahv, nii et sa ei pea kunagi sihtima 16-pikslist glüüfi:

| Kiirklahv | Paneel |
| --- | --- |
| `Super + Ctrl + A` | Heli |
| `Super + Ctrl + N` | Võrk |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Ekraan |
| `Super + Ctrl + P` | Toide |
| `Super + Ctrl + Alt + D` | Kalender |
| `Super + Ctrl + Alt + E` | Maailmakell |
| `Super + Ctrl + X` | Agendid |
| `Super + Ctrl + 1-9` | Lülita parema jaotise n-ndat paneeli |

Paneelid ei ole näidikud. Need on kohad, kus sa asja tegelikult teed:

- **Heli** sisaldab üldist helitugevuse liugurit, väljundseadme valijat ja rakendusepõhist mikserit, nii et saad keerata vaiksemaks selle ühe brauseri vahekaardi, ilma kõike muud puudutamata.
- **Võrk** skannib Wi-Fi võrke, näitab signaali tugevust, ühendab ja laseb sul valida DNS pakkuja.
- **Bluetooth** loetleb sinu seadmed koos ühendamise/lahutamise ja aku tasemetega.
- **Toide** näitab aku statistikat, vahetab toiteprofiile (see jätab meelde eraldi valiku aku ja AC jaoks) ja prindib veidi süsteemiteavet.
- **Ekraan** sisaldab heleduse liugurit, teksti suurust, monitori skaleerimise eelseadistusi ja — kui sul on rohkem kui üks ekraan — monitoripõhiseid juhtelemente. Sügavama loo leiad jaotisest [monitorid](33-monitors.md).
- **Kell** avab kuuvõrgustiku ISO nädalanumbrite ja kuude vahetamisega.
- **Maailmakell** hoiab iga linna kohta ühte rida koos selle ilma ja sellega, kuidas selle päev läheb. Otsing leiab nii linnu kui ka ajavööndeid, nii et Fort Lauderdale on Fort Lauderdale ega mitte New York. Kui ülaosas olev rida nimetab vale linna, klõpsa sellel ja ütle, kus sa oled; vali koht teises ajavööndis ja süsteemikell liigub ka sinna, mis on reisides mugav. Hõlju linna kohal ja klõpsa inimese nuppu, et öelda, kes seal elab — tavalised nimed või `@` GitHubi kasutajanimesid, et tuua kaasa ka nende näod.

Iga paneel võtab vastu nii klaviatuuri kui ka hiire: nooled liigutavad, Return aktiveerib, Tab liigub naaberpaneelile ja Escape sulgeb.

`Super + Ctrl + 1-9` loendab paneele parempoolses jaotises vasakult paremale, jättes salve vahele, kuna sellel ei ole oma paneeli. Nii vastab number ikoonile, millele sa osutaksid.

### Tailscale ja Dropbox

Veel kaks vidinat ilmuvad ribale alles siis, kui paigaldad vastava teenuse jaotisest **Paigalda → Teenus**, ja mõlemat tasub tunda, sest need teevad enamat kui ainult olekut näitavad.

**Tailscale** paneel ühendab tailnetiga ja lahutab sellest, vahetab kontosid ja valib väljundsolme (sinu enda masinad ja Mullvad piirkonnad on mõlemad selles loendis). See sirbib ka sinu masinaid — ja kui üks on valitud, saadab `s` sellele Taildropi kaudu faile, mis on kiireim viis faili telefoni või teise sülearvutisse liigutamiseks. `c` kopeerib masina IP, `n` selle nime ja `d` selle täieliku DNS nime. Igal masina real on ka saatmisnupp, kui eelistad klõpsata. Sama asi terminalist on `omarchy tailscale send <machine> [file...]`.

**Dropbox** paneel tegeleb sisselogimisega, näitab, kui palju salvestusruumi oled kasutanud, ja loetleb hiljuti sünkroonitud faile.

Kummagi teenuse eemaldamine võtab selle vidina ribalt tagasi maha.

## Indikaatorid

Väike kobar keskel on indikaatorite vidin. Need on sisselülitatud režiimide olekuglüüfid: ära sega, öövalgus, järjekorras olev [meeldetuletus](09-reminders.md), aktiivne ekraanisalvestus ja ärkvel püsimine, lisaks hoiatused, kui paroolita sudo on sisse lülitatud või keegi on ühendatud kaugseansiga. Need süttivad, kui režiim on aktiivne, ja püsivad muidu eemal — hõlju kohe nende kõrval, kus passiivsed asuksid, et neid piiluda. Indikaatoril klõpsamine lülitab selle režiimi sisse/välja. Üks veel on ainult oleku jaoks: kaugseanss süttib punaselt, kui keegi on selle masinaga gliff kaudu ühendatud.

Kui eelistad, et need oleksid alati nähtavad, määra vidinal `alwaysShow` väärtuseks `true`. Ja kui hoolid ainult mõnest neist, loetle soovitud jaotises `items`: `["Dnd", "Reminder", "NightLight"]`. Sul võib olla rohkem kui üks indikaatorite vidin, nii et erinevad jaotised saavad näidata erinevaid alamhulki.

## Riba ümberkorraldamine

Riba seadistab ennast ise. Sa ei pea asjade liigutamiseks seadistusfaili avama.

Haara keskel olevast tühjast lapist ja lohista seda teise ekraaniserva poole ning riba liigub sinna — vasak, parem, ülemine ja alumine töötavad kõik ning iga vidin kohandub (vertikaalsed ribad langevad tagasi kompaktsetele ainult ikoonidega vormidele). Klõps ja all hoidmine alustab sama lohistamist. Tee topeltvasakklõps samal tühjal alal, et vahetada riba tausta tsükliliselt selgest klaasjaks ja läbipaistmatuks. Ja lohista iga vidinat selle ümberjärjestamiseks või teise jaotisse viskamiseks; teised vidinad libisevad lahku, et teha ruumi sinna, kuhu see maandub.

Riba keskosa on kast: kõik, mis selles on, püsib ühe rühmana keskel ja selle mõlemal küljel olevad vidinad ripuvad selle servade küljes. Vidina lohistamise ajal näidatakse kasti kontuurina või joonena üle riba, kui see on tühi, ja saad selle sisse või selle kõrvale kukutada. Kui kukutamine maanduks kasti, kasvab kast vidina sissevõtmiseks.

Vidin, mida tahad käepärast hoida, kuid mitte alati nähtaval, võib minna salve sahtlisse: lohista see salvele ja sahtel avaneb selle vastuvõtmiseks. See istub seal pärast rakenduste ikoone, ilmub iga kord, kui sahtel ilmub, ja hoiab oma sahtlit avatuna, kuni selle paneel on üleval. Lohista see ribale tagasi välja, et see tagasi panna.

Kui eelistad menüüst valida, on jaotises **Välimus → Menüüriba** asukoht ja **Riba taust** valib, kuidas riba joonistatakse: **Läbipaistmatu riba**, **Klaasjas riba** (läbipaistev, taga olev hägustatud) või **Selge riba**.

Samadel asjadel on käsud, mis on see, mida tahad [dotfiles](31-dotfiles.md) seadistuse jaoks:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Vidina täielikuks lisamiseks või eemaldamiseks kasuta plugina käske. `omarchy plugin list` prindib iga vidina, mida kest teab, koos selle id-ga, ja seejärel:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Riba peitmine

`Super + Shift + Space` lülitab riba välja ja tagasi sisse, ilma kesta tapmata — paneelid ja kiirklahvid töötavad edasi, saad lihtsalt pikslid tagasi. See on ka menüüs jaotise **Välimus → Menüüriba → Peida riba** all.

## Seadistusfail

Kõik see on salvestatud faili `~/.config/omarchy/shell.json`, võtme `bar` alla. Siin on kärbitud versioon:

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

Iga vidin on üks kirje ühes viiest paigutuse massiivist ja selle seaded asuvad sellel kirjel samal real — eraldi seadete faili ei ole ja `config` alamobjekti ei ole. Kella `format`, `formatAlt` (millele paremklõps tsükliliselt vahetab) ja `verticalFormat` elavad kõik otse seal kirjel `{ "id": "omarchy.clock" }`.

`center` on kast riba keskel: kõik selles olev on ekraanil ühe rühmana keskel. `centerBegin` ja `centerEnd` ripuvad kasti mõlemal küljel, mis ongi viis, kuidas kell püsib täpselt keskel isegi siis, kui ilm ja värskenduse märk tulevad ja lähevad. Pane `center` alla rohkem kui üks vidin ja need on koos keskel; jäta see tühjaks ja `centerBegin` ning `centerEnd` kohtuvad riba keskel.

Üks reegel, mis tasub endale selgeks teha: **kui sul on oma `shell.json`, on see kanoniline**. Kuni sa midagi ei kohanda, loeb kest Omarchy vaikefaili. Hetkel, kui lohistad vidinat, käivitad `omarchy bar` või muudad faili ise, kuulub see sulle — sügavat liitmist ei ole, nii et tulevaste Omarchy väljalasete uued vaikimisi vidinad ei ilmu sinu ribale automaatselt. `omarchy bar defaults` paneb tarnitud paigutuse tagasi iga kord, kui tahad puhast lehte.

Sama fail hoiab ka sinu jõudeaja ajastusi ülemisel tasemel, väljaspool võtit `bar`: `idle.screensaver` ja `idle.lock`, mõlemad sekundites alates jõudeolekusse minekust. Nii käivitub vaikimisi ekraanisäästja 150 sekundi ja lukk 300 sekundi kohal.
