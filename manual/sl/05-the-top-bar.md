# Zgornja vrstica

Pas vzdolž vrha zaslona je vrstica Omarchy. Ni privita statusna vrstica, ampak del lupine Omarchy, edinega dolgoživega procesa Quickshell, ki riše tudi meni, obvestila, pojavna okna OSD in zaklenjeni zaslon. Zato se tematsko popolnoma ujema z vsem ostalim in zato se panel odpre v trenutku, namesto da bi zagnal novo aplikacijo.

Je tudi edini del namizja, ki je vedno na zaslonu, zato se splača vedeti, kaj počnejo vsi ti mali glifi.

## Kaj je na njej privzeto

Vrstica ima tri razdelke. Na levi sta logotip Omarchy (zaganjalnik menija) in kazalniki delovnih prostorov. V sredini dobite kazalnike stanja, uro, Elsewhen (svetovno uro), vreme in značko za posodobitev Omarchy. Na desni: sistemski pladenj, razporeditev tipkovnice (kadar je konfigurirana več kot ena razporeditev ali način vnosa), agenti, bluetooth, omrežje, zvok, zaslon in napajanje.

Nekateri od teh se pokažejo le, kadar imajo kaj za povedati. Razporeditev tipkovnice se pokaže le, če ste konfigurirali več kot eno razporeditev ali način vnosa. Značka za posodobitev se pokaže le, kadar čaka posodobitev Omarchy.

## Klikanje naokoli

Skoraj vsak pripomoček nekaj naredi ob levem, desnem in srednjem kliku, več pa se jih odzove tudi na pomikanje. To je del, ki ga ljudje spregledajo — desni in srednji gumb sta tista, kjer se skriva veliko dobrih stvari.

| Pripomoček | Levi | Desni | Srednji / pomik |
| --- | --- | --- | --- |
| Meni | Meni Omarchy | Nov terminal | — |
| Delovni prostori | Osredotoči ta delovni prostor na tem monitorju | — | Pomik: naslednji/prejšnji delovni prostor |
| Ura | Pojavno okno s koledarjem | Kroži med oblikami oznake | Srednji: izbira časovnega pasu |
| Svetovna ura | Panel svetovne ure | Osveži | Srednji: osveži |
| Vreme | Pojavno okno z napovedjo | Celotno vreme kot obvestilo | Srednji: osveži |
| Zvok | Panel zvoka | Utišaj | Srednji: panel · pomik: glasnost |
| Mikrofon | Utišaj mikrofon | — | Srednji: panel zvoka · pomik: vhodna glasnost |
| Omrežje | Panel omrežja | — | — |
| Bluetooth | Panel Bluetooth | Preklopi radio | — |
| Zaslon | Panel zaslona | — | Pomik: svetlost |
| Napajanje | Panel napajanja | Preklopi odstotek baterije | — |
| Predstavnost | Predvajaj/premor | Pojavno okno z naslovnico | Srednji: naslednja · pomik: prejšnja/naslednja |
| Agenti | Panel agentov | Zaženi svojega agenta | Srednji: osveži porabo |
| Pladenj | Z lebdenjem razkrij predal | Desni klik na ševron za upravljanje | — |
| Posodobitev Omarchy | Zaženi posodobitev | — | — |

Vse v tej tabeli ni privzeto na vaši vrstici. Pripomoček za predstavnost (MPRIS trenutno predvajano, s pomikajočo se skladbo in izvajalcem) in pripomoček za mikrofon sta oba vgrajena, a privzeto izklopljena — dodajte ju, če ju želite, kot je opisano spodaj.

## Paneli

Klik na ikono v vrstici odpre panel, ki je pravo pojavno okno z drsniki, seznami in krmarjenjem s tipkovnico, namesto namiga. Vsak ima tudi bližnjico, tako da vam nikoli ni treba meriti na 16-pikselni glif:

| Bližnjica | Panel |
| --- | --- |
| `Super + Ctrl + A` | Zvok |
| `Super + Ctrl + N` | Omrežje |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Zaslon |
| `Super + Ctrl + P` | Napajanje |
| `Super + Ctrl + Alt + D` | Koledar |
| `Super + Ctrl + Alt + E` | Svetovna ura |
| `Super + Ctrl + X` | Agenti |
| `Super + Ctrl + 1-9` | Preklopi n-ti panel v desnem razdelku |

Paneli niso le prikazi. Na njih dejansko opravite stvari:

- **Zvok** ima drsnik za glavno glasnost, izbiro izhodne naprave in mešalnik za posamezne aplikacije, tako da lahko utišate prav tisti zavihek brskalnika, ne da bi se dotaknili vsega ostalega.
- **Omrežje** išče Wi-Fi, pokaže moč signala, se poveže in vam omogoča izbiro ponudnika DNS.
- **Bluetooth** navede vaše naprave s povezovanjem/prekinjanjem in ravnmi baterije.
- **Napajanje** pokaže statistiko baterije, preklaplja med profili napajanja (zapomni si ločeno izbiro za baterijo in AC) in prikaže nekaj sistemskih informacij.
- **Zaslon** ima drsnik za svetlost, velikost besedila, prednastavitve skaliranja monitorja in — kadar imate več kot en zaslon — kontrolnike za posamezen monitor. Za podrobnejšo zgodbo glejte [monitorji](33-monitors.md).
- **Ura** odpre mesečno mrežo s številkami tednov ISO in pomikanjem po mesecih.
- **Svetovna ura** hrani vrstico za vsako mesto, z njegovim vremenom in tem, kako mu gre dan. Iskanje najde tako kraje kot časovne pasove, tako da je Fort Lauderdale Fort Lauderdale in ne New York. Če vrstica na vrhu imenuje napačno mesto, jo kliknite in povejte, kje ste; izberite kraj v drugem časovnem pasu in sistemska ura se premakne tja tudi sama, kar pride prav, kadar potujete. Lebdite nad mestom in kliknite gumb z osebo, da poveste, kdo tam živi — običajna imena ali `@` GitHub vzdevki, da s seboj pripeljete tudi njihove obraze.

Vsak panel sprejema tako tipkovnico kot miško: puščice premikajo, Return aktivira, Tab premakne na sosednji panel, Escape pa zapre.

`Super + Ctrl + 1-9` šteje panele z leve na desno v desnem razdelku, pri čemer preskoči pladenj, saj ta nima svojega panela. Številka se torej ujema z ikono, na katero bi pokazali.

### Tailscale in Dropbox

Še dva pripomočka se na vrstici pokažeta šele, ko iz **Namestitev → Storitev** namestite pripadajočo storitev, in oba je vredno poznati, ker počneta več, kot le poročata o stanju.

Panel **Tailscale** povezuje in prekinja povezavo s tailnet, preklaplja med računi in izbira izhodno vozlišče (na tem seznamu se pokažejo tako vaše naprave kot regije Mullvad). Prebrska tudi vaše naprave — in ko je ena izbrana, `s` ji pošlje datoteke prek Taildrop, kar je najhitrejši način, da datoteko premaknete na telefon ali drug prenosnik. `c` kopira IP naprave, `n` njeno ime in `d` njeno polno ime DNS. Na vsaki vrstici naprave je tudi gumb za pošiljanje, če raje klikate. Isto iz terminala je `omarchy tailscale send <machine> [file...]`.

Panel **Dropbox** skrbi za prijavo, pokaže, koliko prostora ste porabili, in navede nedavno sinhronizirane datoteke.

Odstranitev katere koli storitve njen pripomoček znova vzame z vrstice.

## Kazalniki

Mala skupina v sredini je pripomoček kazalnikov. To so glifi stanja za načine, ki ste jih vklopili: ne moti, nočna svetloba, čakajoči [opomnik](09-reminders.md), aktivno snemanje zaslona in ostani buden, poleg tega pa opozorila, medtem ko je vklopljen sudo brez gesla ali je nekdo povezan z oddaljeno sejo. Svetijo, kadar je način aktiven, sicer pa se umaknejo s poti — lebdite tik ob njih, kjer bi sedeli neaktivni, da pokukate k njim. Klik na kazalnik ta način preklopi. Še eden je le za stanje: oddaljena seja sveti rdeče, medtem ko je nekdo prek gliff povezan s to napravo.

Če želite, da so vedno vidni, na pripomočku nastavite `alwaysShow` na `true`. In če vas zanimajo le nekateri, v `items` navedite tiste, ki jih želite: `["Dnd", "Reminder", "NightLight"]`. Lahko imate več kot en pripomoček kazalnikov, tako da lahko različni razdelki pokažejo različne podnabore.

## Preurejanje vrstice

Vrstica se konfigurira sama. Za premikanje stvari vam ni treba odpirati konfiguracijske datoteke.

Primite prazen del vrstice okoli sredine in ga povlecite proti drugemu robu zaslona in vrstica se premakne tja — levo, desno, zgoraj ali spodaj, vse deluje, in vsak pripomoček se prilagodi (navpične vrstice se vrnejo na kompaktne oblike le z ikonami). Klik-in-zadrži začne isti vlek. Dvokliknite z levim gumbom na isti prazen prostor, da krožite med ozadji vrstice od prozornega do steklenega do neprozornega. In povlecite kateri koli pripomoček, da ga preuredite ali vržete v drug razdelek; drugi pripomočki se razmaknejo, da naredijo prostor tam, kjer bo pristal.

Sredina vrstice je škatla: kar je v njej, ostane na sredini kot ena skupina, pripomočki na obeh straneh pa visijo z njenih robov. Medtem ko vlečete pripomoček, se škatla pokaže kot obris ali kot črta čez vrstico, kadar je prazna, in lahko spustite vanjo ali ob njo. Kadar bi spust pristal v škatli, škatla zraste, da pripomoček vzame vase.

Pripomoček, ki ga želite imeti pri roki, a ne vedno na očeh, lahko gre v predal pladnja: povlecite ga na pladenj in predal se odpre, da ga sprejme. Tam sedi za ikonami aplikacij, se pokaže, kadar koli se pokaže predal, in predal drži odprt, medtem ko je njegov panel odprt. Povlecite ga nazaj na vrstico, da ga vrnete.

Če raje izbirate iz menija, ima **Videz → Vrstica menija** položaj, **Ozadje vrstice** pa izbere, kako se vrstica riše: **Neprozorna vrstica**, **Steklena vrstica** (prosojna, s tem, kar je za njo, zamegljenim) ali **Prozorna vrstica**.

Iste stvari imajo ukaze, kar potrebujete za postavitev [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Če želite pripomoček v celoti dodati ali odstraniti, uporabite ukaze za vtičnike. `omarchy plugin list` natisne vsak pripomoček, ki ga lupina pozna, z njegovim id, nato pa:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Skrivanje vrstice

`Super + Shift + Space` vrstico izklopi in znova vklopi, ne da bi ubil lupino — paneli in bližnjice delujejo še naprej, vi pa le dobite piksle nazaj. Je tudi v meniju pod **Videz → Vrstica menija → Skrij vrstico**.

## Konfiguracijska datoteka

Vse je shranjeno v `~/.config/omarchy/shell.json`, pod ključem `bar`. Tukaj je okleščena različica:

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

Vsak pripomoček je en vnos v eni od petih matrik postavitve, njegove nastavitve pa sedijo v vrstici na tem vnosu — ni ločene datoteke z nastavitvami in ni podobmočja `config`. `format`, `formatAlt` (na kar kroži desni klik) in `verticalFormat` ure vsi živijo prav tam na `{ "id": "omarchy.clock" }`.

`center` je škatla na sredini vrstice: vse v njej je na zaslonu na sredini kot ena skupina. `centerBegin` in `centerEnd` visita z obeh strani škatle, zato ura ostane mrtvo na sredini, tudi ko vreme in značka za posodobitev prihajata in odhajata. V `center` dajte več kot en pripomoček in skupaj bodo na sredini; pustite ga praznega in `centerBegin` ter `centerEnd` se srečata na sredini vrstice.

Eno pravilo, ki si ga je vredno vtisniti: **ko imate svoj `shell.json`, je ta merodajen**. Dokler ne prilagodite ničesar, lupina bere privzeto datoteko Omarchy. V trenutku, ko povlečete pripomoček, zaženete `omarchy bar` ali datoteko uredite sami, je vaša — ni globokega združevanja, zato se novi privzeti pripomočki v prihodnjih izdajah Omarchy na vaši vrstici ne bodo pokazali samodejno. `omarchy bar defaults` vrne priloženo postavitev, kadar koli želite čist začetek.

Ista datoteka na najvišji ravni, zunaj ključa `bar`, hrani tudi vaše čase nedejavnosti: `idle.screensaver` in `idle.lock`, oba v sekundah od takrat, ko ste postali nedejavni. Privzeti ohranjevalnik zaslona se torej vklopi pri 150 sekundah, zaklepanje pa pri 300.
