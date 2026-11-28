# Efsta stikan

Ræman efst á skjánum þínum er Omarchy-stikan. Hún er ekki viðbætt stöðustika heldur hluti af Omarchy-skelinni, því eina langlífa Quickshell-ferli sem teiknar líka valmyndina, tilkynningarnar, OSD-sprettigluggana og læsiskjáinn. Þess vegna fellur hún fullkomlega að þemanu með öllu öðru og þess vegna opnast spjald samstundis í stað þess að kveikja á nýju forriti.

Hún er líka eini hluti skjáborðsins sem er alltaf á skjánum, svo það er þess virði að vita hvað öll þessi litlu tákn gera.

## Hvað er á henni sjálfgefið

Stikan hefur þrjá hluta. Vinstra megin situr Omarchy-merkið (ræsirinn fyrir valmyndina) og vísarnir fyrir vinnusvæðin. Í miðjunni færðu stöðuvísana, klukkuna, Elsewhen (alheimsklukku), veðrið og Omarchy-uppfærslumerki. Hægra megin: kerfisbakkann, lyklaborðsuppsetninguna (þegar fleiri en ein uppsetning eða innsláttaraðferð er stillt), agentana, bluetooth, netið, hljóðið, skjáinn og orkuna.

Nokkrir þeirra birtast aðeins þegar þeir hafa eitthvað að segja. Lyklaborðsuppsetningin birtist aðeins ef þú hefur stillt fleiri en eina uppsetningu eða innsláttaraðferð. Uppfærslumerkið birtist aðeins þegar Omarchy-uppfærsla bíður.

## Að smella um

Næstum sérhver græja gerir eitthvað við vinstri, hægri og miðjusmell og nokkrar svara skrunun. Þetta er sá hluti sem fólk missir af — hægri og miðjuhnappurinn eru þar sem mikið af því góða felst.

| Íhlutur | Vinstri | Hægri | Miðja / skrun |
| --- | --- | --- | --- |
| Valmynd | Omarchy-valmynd | Ný útstöð | — |
| Vinnusvæði | Færa fókus á það vinnusvæði á þessum skjá | — | Skrun: næsta/fyrra vinnusvæði |
| Klukka | Dagatalssprettigluggi | Skipta um snið á merki | Miðja: tímabeltisval |
| Alheimsklukka | Alheimsklukkuspjald | Endurhlaða | Miðja: endurhlaða |
| Veður | Veðurspársprettigluggi | Allt veðrið sem tilkynning | Miðja: endurhlaða |
| Hljóð | Hljóðspjald | Þagga | Miðja: spjald · skrun: hljóðstyrkur |
| Hljóðnemi | Þagga hljóðnemann | — | Miðja: hljóðspjald · skrun: inntaksstyrkur |
| Net | Netspjald | — | — |
| Bluetooth | Bluetooth-spjald | Víxla senditækinu | — |
| Skjár | Skjáspjald | — | Skrun: birta |
| Orka | Orkuspjald | Víxla prósentu rafhlöðu | — |
| Miðlar | Spila / gera hlé | Sprettigluggi með plötuumslagi | Miðja: næsti · skrun: fyrri/næsti |
| Agentar | Agentaspjald | Ræsa agentinn þinn | Miðja: endurhlaða notkun |
| Bakki | Sveima til að birta skúffuna | Hægri á örin til að stjórna | — |
| Omarchy-uppfærsla | Keyra uppfærsluna | — | — |

Ekki er allt í þessari töflu á stikunni þinni úr kassanum. Miðlagræjan (MPRIS sem spilast núna, með skrunandi lagi og listamanni) og hljóðnemagræjan eru báðar innbyggðar en slökktar sjálfgefið — bættu þeim við ef þú vilt þær, eins og lýst er hér að neðan.

## Spjöldin

Að smella á tákn á stikunni opnar spjald, sem er alvöru sprettigluggi með rennum, listum og lyklaborðsstjórnun frekar en vísbending. Sérhvert þeirra hefur líka flýtilykil, svo þú þarft aldrei að miða á 16 pixla tákn:

| Flýtilykill | Spjald |
| --- | --- |
| `Super + Ctrl + A` | Hljóð |
| `Super + Ctrl + N` | Net |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Skjár |
| `Super + Ctrl + P` | Orka |
| `Super + Ctrl + Alt + D` | Dagatal |
| `Super + Ctrl + Alt + E` | Alheimsklukka |
| `Super + Ctrl + X` | Agentar |
| `Super + Ctrl + 1-9` | Víxla n-ta spjaldinu í hægri hlutanum |

Spjöldin eru ekki aflestrar. Þau eru þar sem þú gerir hlutinn í raun:

- **Hljóð** hefur aðalhljóðstyrksrennu, val fyrir úttakstæki og blöndunartæki fyrir hvert forrit, svo þú getur lækkað í þeim eina vafraflipa án þess að snerta allt annað.
- **Net** leitar að Wi-Fi, sýnir merkisstyrk, tengist og lætur þig velja DNS-veitu.
- **Bluetooth** telur upp tækin þín með tengingu/aftengingu og stöðu rafhlöðu.
- **Orka** sýnir tölfræði rafhlöðu, skiptir um orkusnið (hún man sérstakt val fyrir rafhlöðu og AC) og prentar einhverjar kerfisupplýsingar.
- **Skjár** ber birturennu, textastærð, forstillingar fyrir kvarðun skjás og — þegar þú hefur fleiri en einn skjá — stjórntæki fyrir hvern skjá. Sjá [skjái](33-monitors.md) fyrir dýpri frásögnina.
- **Klukka** opnar mánaðarnet með ISO-vikunúmerum og skrefum milli mánaða.
- **Alheimsklukka** heldur einni röð fyrir hverja borg, með veðri hennar og hvernig dagurinn gengur þar. Leitin finnur bæi jafnt sem tímabelti, svo Fort Lauderdale er Fort Lauderdale en ekki New York. Ef línan efst nefnir ranga borg skaltu smella á hana og segja hvar þú ert; veldu stað á öðru tímabelti og kerfisklukkan færist þangað líka, sem kemur sér vel þegar þú ferðast. Sveimaðu yfir borg og smelltu á persónuhnappinn til að segja hver býr þar — einföld nöfn, eða `@` GitHub-notendanöfn til að fá andlit þeirra með.

Sérhvert spjald tekur við lyklaborðinu jafnt sem músinni: örvar færa, Return virkjar, Tab stígur yfir á næsta spjald og Escape lokar.

`Super + Ctrl + 1-9` telur spjöld frá vinstri til hægri í hægri hlutanum og sleppir bakkanum þar sem hann hefur ekkert spjald sjálfur. Svo talan samsvarar tákninu sem þú myndir benda á.

### Tailscale og Dropbox

Tvær græjur í viðbót birtast á stikunni aðeins þegar þú setur upp samsvarandi þjónustu úr **Uppsetning → Þjónusta**, og báðar eru þess virði að vita um því þær gera meira en að tilkynna stöðu.

**Tailscale**-spjaldið tengir og aftengir tailnet-ið, skiptir milli reikninga og velur útgönguhnút (bæði þínar eigin vélar og Mullvad-svæði birtast á þeim lista). Það vafrar líka um vélarnar þínar — og með eina valda sendir `s` skrár til hennar yfir Taildrop, sem er fljótlegasta leiðin til að færa skrá í símann þinn eða aðra fartölvu. `c` afritar IP-tölu vélarinnar, `n` nafn hennar og `d` fullt DNS-nafn hennar. Á hverri vélaröð er líka sendihnappur ef þú vilt frekar smella. Sama hluturinn úr útstöðinni er `omarchy tailscale send <machine> [file...]`.

**Dropbox**-spjaldið sér um innskráningu, sýnir hve mikið geymslupláss þú hefur notað og telur upp nýlega samstilltar skrár.

Að fjarlægja hvora þjónustuna sem er tekur græju hennar aftur af stikunni.

## Vísar

Litla þyrpingin í miðjunni er vísagræjan. Þetta eru stöðutákn fyrir ham sem þú hefur kveikt á: ekki trufla, næturljós, [áminning](09-reminders.md) í biðröð, virk skjáupptaka og að halda sér vakandi, auk viðvarana meðan lykilorðalaust sudo er á eða einhver er tengdur við fjartengda lotu. Þau lýsast upp þegar hamurinn er virkur og halda sér annars til hlés — sveimaðu rétt við hliðina á þeim, þar sem óvirku þeirra myndu sitja, til að kíkja á þau. Að smella á vísi víxlar þeim ham. Einn til viðbótar er aðeins til stöðu: fjartengd lota lýsist rauð meðan einhver er tengdur við þessa vél í gegnum gliff.

Ef þú vilt frekar að þeir séu alltaf sýnilegir skaltu stilla `alwaysShow` á `true` á græjunni. Og ef þér er aðeins sama um suma þeirra skaltu telja upp þá sem þú vilt í `items`: `["Dnd", "Reminder", "NightLight"]`. Þú getur haft fleiri en eina vísagræju, svo mismunandi hlutar geta sýnt mismunandi undirmengi.

## Að endurraða stikunni

Stikan stillir sig sjálf. Þú þarft ekki að opna stillingaskrá til að færa hluti.

Gríptu í tómt svæði á stikunni í kringum miðjuna og dragðu það að annarri skjábrún, og stikan færist þangað — vinstri, hægri, efst eða neðst virkar allt, og sérhver græja aðlagast (lóðréttar stikur falla til baka í þétt form með táknum eingöngu). Að smella og halda byrjar sama drag. Tvísmelltu vinstra megin á sama tóma rýmið til að skipta bakgrunni stikunnar úr tærum í glæran í ógegnsæjan. Og dragðu hvaða græju sem er til að endurraða henni eða henda henni í annan hluta; hinar græjurnar renna í sundur til að búa til pláss þar sem hún mun lenda.

Miðja stikunnar er kassi: það sem er í honum helst miðjuð sem einn hópur, og græjurnar sitt hvoru megin við hann hanga á brúnum hans. Meðan þú dregur græju birtist kassinn sem útlína, eða lína þvert yfir stikuna þegar hann er tómur, og þú getur sleppt í hann eða við hliðina á honum. Þegar slepping myndi lenda í kassanum stækkar kassinn til að taka græjuna inn.

Græja sem þú vilt hafa nálægt en ekki alltaf í sjónmáli getur farið í skúffu bakkans: dragðu hana á bakkann, og skúffan opnast til að taka við henni. Hún situr þar á eftir forritatáknunum, birtist alltaf þegar skúffan gerir það og heldur skúffunni sinni opinni meðan spjald hennar er uppi. Dragðu hana aftur út á stikuna til að setja hana til baka.

Ef þú vilt frekar velja úr valmynd hefur **Útlit → Valmyndastika** staðsetninguna, og **Bakgrunnur stiku** velur hvernig stikan er teiknuð: **Ógegnsæ stika**, **Glær stika** (gagnsæ, með það sem er á bak við hana þokað), eða **Tær stika**.

Sömu hlutirnir hafa skipanir, sem er það sem þú vilt fyrir [dotfiles](31-dotfiles.md)-uppsetningu:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Til að bæta við eða fjarlægja græju alfarið skaltu nota viðbótarskipanirnar. `omarchy plugin list` prentar sérhverja græju sem skelin þekkir með auðkenni hennar, og síðan:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Að fela stikuna

`Super + Shift + Space` víxlar stikunni af og aftur á án þess að drepa skelina — spjöld og flýtilyklar halda áfram að virka, þú færð bara pixlana til baka. Hún er líka í valmyndinni undir **Útlit → Valmyndastika → Fela stiku**.

## Stillingaskráin

Allt þetta er geymt í `~/.config/omarchy/shell.json`, undir `bar`-lyklinum. Hér er stytt útgáfa:

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

Sérhver græja er ein færsla í einu af fimm uppsetningarfylkjunum, og stillingar hennar sitja innan línu á þeirri færslu — það er engin aðskilin stillingaskrá og ekkert `config`-undirhlutfall. `format`, `formatAlt` (það sem hægrismellur skiptir yfir í) og `verticalFormat` klukkunnar búa öll rétt þar á `{ "id": "omarchy.clock" }`.

`center` er kassinn í miðju stikunnar: allt í honum er miðjuð á skjánum sem einn hópur. `centerBegin` og `centerEnd` hanga sitt hvoru megin við kassann, sem er hvernig klukkan helst dauðmiðjuð jafnvel þegar veðrið og uppfærslumerkið koma og fara. Settu fleiri en eina græju í `center` og þær miðjast saman; skildu hann eftir tóman og `centerBegin` og `centerEnd` mætast í miðju stikunnar.

Ein regla sem vert er að tileinka sér: **þegar þú hefur þína eigin `shell.json` er hún frumheimildin**. Þangað til þú aðlagar eitthvað les skelin sjálfgefna skrá Omarchy. Um leið og þú dregur græju, keyrir `omarchy bar` eða breytir skránni sjálfur átt þú hana — það er engin djúp samruni, svo nýjar sjálfgefnar græjur í framtíðarútgáfum Omarchy munu ekki birtast á stikunni þinni sjálfkrafa. `omarchy bar defaults` setur meðfylgjandi uppsetningu til baka hvenær sem þú vilt hreint borð.

Sama skrá geymir líka aðgerðaleysistímana þína á efsta stigi, utan `bar`-lykilsins: `idle.screensaver` og `idle.lock`, bæði í sekúndum frá því þú varðst óvirkur. Svo sjálfgefni skjásvæfan fer í gang eftir 150 sekúndur og læsingin eftir 300.
