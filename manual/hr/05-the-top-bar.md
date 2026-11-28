# Gornja traka

Traka uz vrh vašeg zaslona je Omarchy traka. Nije naknadno pričvršćena statusna traka, već dio Omarchy ljuske, jednog dugotrajnog Quickshell procesa koji također iscrtava izbornik, obavijesti, OSD skočne prozore i zaključani zaslon. Zato se savršeno uklapa u temu sa svime ostalim i zato se panel otvara trenutačno, umjesto da pokreće novu aplikaciju.

To je ujedno jedini dio radne površine koji je uvijek na zaslonu, pa vrijedi znati što svi ti mali glifovi rade.

## Što je na njoj prema zadanim postavkama

Traka ima tri odjeljka. Na lijevoj strani nalaze se Omarchy logotip (pokretač izbornika) i pokazatelji radnih prostora. U sredini dobivate pokazatelje statusa, sat, Elsewhen (svjetski sat), vremensku prognozu i značku za Omarchy ažuriranje. Na desnoj strani: paleta sustava, raspored tipkovnice (kada je konfigurirano više od jednog rasporeda ili načina unosa), agenti, Bluetooth, mreža, zvuk, zaslon i napajanje.

Neki od njih pojavljuju se samo kada imaju što reći. Raspored tipkovnice pojavljuje se samo ako ste konfigurirali više od jednog rasporeda ili načina unosa. Značka za ažuriranje pojavljuje se samo kada čeka Omarchy ažuriranje.

## Klikanje po traci

Gotovo svaki widget nešto radi na lijevi, desni i srednji klik, a nekoliko ih reagira na pomicanje. To je dio koji ljudi propuštaju — desna i srednja tipka mjesta su na kojima se skriva mnogo dobrih stvari.

| Widget | Lijevo | Desno | Srednje / pomicanje |
| --- | --- | --- | --- |
| Izbornik | Omarchy izbornik | Novi terminal | — |
| Radni prostori | Fokusiraj taj radni prostor na ovom monitoru | — | Pomicanje: sljedeći/prethodni radni prostor |
| Sat | Skočni kalendar | Kruži kroz formate oznake | Srednji: birač vremenske zone |
| Svjetski sat | Panel svjetskog sata | Osvježi | Srednji: osvježi |
| Vrijeme | Skočna prognoza | Potpuna vremenska prognoza kao obavijest | Srednji: osvježi |
| Zvuk | Panel zvuka | Utišaj | Srednji: panel · pomicanje: glasnoća |
| Mikrofon | Utišaj mikrofon | — | Srednji: panel zvuka · pomicanje: ulazna glasnoća |
| Mreža | Panel mreže | — | — |
| Bluetooth | Bluetooth panel | Uključi/isključi radio | — |
| Zaslon | Panel zaslona | — | Pomicanje: svjetlina |
| Napajanje | Panel napajanja | Uključi/isključi postotak baterije | — |
| Mediji | Reproduciraj/pauziraj | Skočni prozor s naslovnicom | Srednji: sljedeće · pomicanje: prethodno/sljedeće |
| Agenti | Panel agenata | Pokreni svog agenta | Srednji: osvježi uporabu |
| Paleta | Prijeđi pokazivačem za otkrivanje ladice | Desni klik na ševron za upravljanje | — |
| Omarchy ažuriranje | Pokreni ažuriranje | — | — |

Nije sve u toj tablici na vašoj traci iz kutije. Widget za medije (MPRIS trenutna reprodukcija, s pomicanjem pjesme i izvođača) i widget za mikrofon ugrađeni su, ali prema zadanim postavkama isključeni — dodajte ih ako ih želite, kako je opisano u nastavku.

## Paneli

Klikanje ikone na traci otvara panel, što je pravi skočni prozor s klizačima, popisima i navigacijom tipkovnicom, a ne opis alata. Svaki ima i prečac, pa nikada ne morate ciljati glif od 16 piksela:

| Prečac | Panel |
| --- | --- |
| `Super + Ctrl + A` | Zvuk |
| `Super + Ctrl + N` | Mreža |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Zaslon |
| `Super + Ctrl + P` | Napajanje |
| `Super + Ctrl + Alt + D` | Kalendar |
| `Super + Ctrl + Alt + E` | Svjetski sat |
| `Super + Ctrl + X` | Agenti |
| `Super + Ctrl + 1-9` | Uključi/isključi n-ti panel u desnom odjeljku |

Paneli nisu prikazi za čitanje. Na njima zapravo radite ono što treba:

- **Zvuk** ima klizač za glavnu glasnoću, birač izlaznog uređaja i mikser po aplikaciji, pa možete stišati baš tu jednu karticu preglednika, a da ne dirate sve ostalo.
- **Mreža** traži Wi-Fi, prikazuje jačinu signala, povezuje se i omogućuje vam odabir DNS pružatelja.
- **Bluetooth** navodi vaše uređaje s povezivanjem/odspajanjem i razinama baterije.
- **Napajanje** prikazuje statistiku baterije, prebacuje profile napajanja (pamti odvojeni odabir za bateriju i AC) i ispisuje neke informacije o sustavu.
- **Zaslon** sadrži klizač za svjetlinu, veličinu teksta, unaprijed postavljene postavke skaliranja monitora i — kada imate više od jednog zaslona — kontrole po monitoru. Pogledajte [monitore](33-monitors.md) za dublju priču.
- **Sat** otvara mjesečnu mrežu s ISO brojevima tjedana i pomicanjem po mjesecima.
- **Svjetski sat** drži redak po gradu, s njegovom vremenskom prognozom i time kako mu prolazi dan. Pretraživanje pronalazi gradiće kao i vremenske zone, pa je Fort Lauderdale Fort Lauderdale, a ne New York. Ako redak na vrhu navodi pogrešan grad, kliknite ga i recite gdje se nalazite; odaberete li negdje u drugoj vremenskoj zoni, tamo se pomiče i sistemski sat, što je zgodno kada putujete. Prijeđite pokazivačem preko grada i kliknite gumb s osobom kako biste rekli tko ondje živi — obična imena ili `@` GitHub korisnička imena kako biste povukli i njihova lica.

Svaki panel prihvaća tipkovnicu kao i miša: strelice pomiču, Return aktivira, Tab prelazi na susjedni panel, a Escape zatvara.

`Super + Ctrl + 1-9` broji panele slijeva nadesno u desnom odjeljku, preskačući paletu jer ona nema vlastiti panel. Tako broj odgovara ikoni na koju biste pokazali.

### Tailscale and Dropbox

Još dva widgeta pojavljuju se na traci tek kada instalirate odgovarajuću uslugu iz **Instalacija → Usluga**, a oba vrijedi poznavati jer rade više od izvještavanja o statusu.

**Tailscale** panel povezuje i odspaja tailnet, prebacuje između računa i bira izlazni čvor (vaši vlastiti strojevi i Mullvad regije pojavljuju se na tom popisu). Također pregledava vaše strojeve — a kada je jedan odabran, `s` mu šalje datoteke preko Taildrop, što je najbrži način da datoteku premjestite na telefon ili drugo prijenosno računalo. `c` kopira IP stroja, `n` njegovo ime, a `d` njegovo puno DNS ime. Na svakom retku stroja postoji i gumb za slanje, ako radije klikate. Ista stvar iz terminala je `omarchy tailscale send <machine> [file...]`.

**Dropbox** panel upravlja prijavom, prikazuje koliko ste prostora za pohranu iskoristili i navodi nedavno sinkronizirane datoteke.

Uklanjanje bilo koje od tih usluga uklanja i njezin widget s trake.

## Pokazatelji

Mala skupina u sredini je widget pokazatelja. To su glifovi statusa za načine koje ste uključili: ne ometaj, noćno svjetlo, [podsjetnik](09-reminders.md) na čekanju, aktivno snimanje zaslona i ostani budan, uz upozorenja dok je uključen sudo bez lozinke ili je netko povezan na udaljenu sesiju. Svijetle kada je način aktivan i inače se drže po strani — prijeđite pokazivačem tik pokraj njih, gdje bi sjedili neaktivni, kako biste ih načas pogledali. Klikanje pokazatelja uključuje ili isključuje taj način. Još jedan je samo za status: udaljena sesija svijetli crveno dok je netko povezan na ovaj stroj kroz gliff.

Ako biste radije da uvijek budu vidljivi, postavite `alwaysShow` na `true` na widgetu. A ako vas zanimaju samo neki od njih, navedite one koje želite u `items`: `["Dnd", "Reminder", "NightLight"]`. Možete imati više od jednog widgeta pokazatelja, pa različiti odjeljci mogu prikazivati različite podskupove.

## Preslagivanje trake

Traka se konfigurira sama. Ne morate otvarati konfiguracijsku datoteku kako biste pomicali stvari.

Uhvatite prazan dio trake oko sredine i povucite ga prema drugom rubu zaslona i traka se pomiče onamo — lijevo, desno, gore ili dolje, sve radi, a svaki se widget prilagođava (okomite trake vraćaju se na kompaktne oblike samo s ikonama). Klik i držanje započinje isto povlačenje. Dvostrukim lijevim klikom na isti prazan prostor kružite kroz pozadinu trake od prozirne do staklene do neprozirne. I povucite bilo koji widget kako biste ga presložili ili bacili u drugi odjeljak; ostali widgeti razmiču se kako bi napravili mjesta ondje gdje će sletjeti.

Sredina trake je okvir: što god je u njemu ostaje centrirano kao jedna skupina, a widgeti s obje njegove strane vise s njegovih rubova. Dok povlačite widget, okvir se prikazuje kao obris, ili kao crta preko trake kada je prazan, i možete ispustiti u njega ili pokraj njega. Kada bi ispuštanje sletjelo u okvir, okvir raste kako bi primio widget.

Widget koji želite imati pri ruci, ali ne uvijek na vidiku, može otići u ladicu palete: povucite ga na paletu i ladica će se otvoriti kako bi ga primila. Sjedi ondje nakon ikona aplikacija, pojavljuje se kad god se pojavi ladica i drži svoju ladicu otvorenom dok je njegov panel otvoren. Povucite ga natrag na traku kako biste ga vratili.

Ako biste radije birali iz izbornika, **Izgled → Traka izbornika** ima položaj, a **Pozadina trake** bira kako se traka iscrtava: **Neprozirna traka**, **Staklena traka** (prozirna, s onim što je iza nje zamućenim) ili **Prozirna traka**.

Iste stvari imaju naredbe, što je ono što želite za postavku s [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Kako biste widget u potpunosti dodali ili uklonili, upotrijebite naredbe za dodatke. `omarchy plugin list` ispisuje svaki widget koji ljuska poznaje, zajedno s njegovim id-om, a zatim:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Skrivanje trake

`Super + Shift + Space` uključuje i isključuje traku bez ubijanja ljuske — paneli i prečaci i dalje rade, samo dobivate natrag piksele. Nalazi se i u izborniku pod **Izgled → Traka izbornika → Sakrij traku**.

## Konfiguracijska datoteka

Sve je pohranjeno u `~/.config/omarchy/shell.json`, pod ključem `bar`. Evo skraćene verzije:

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

Svaki widget je jedan unos u jednom od pet nizova rasporeda, a njegove postavke nalaze se izravno na tom unosu — ne postoji zasebna datoteka s postavkama niti podobjekt `config`. Satovi `format`, `formatAlt` (na što desni klik kruži) i `verticalFormat` svi žive upravo ondje na `{ "id": "omarchy.clock" }`.

`center` je okvir u sredini trake: sve u njemu centrirano je na zaslonu kao jedna skupina. `centerBegin` i `centerEnd` vise s obje strane okvira, zbog čega sat ostaje točno u sredini čak i dok vremenska prognoza i značka za ažuriranje dolaze i odlaze. Stavite li više od jednog widgeta u `center`, oni se centriraju zajedno; ostavite li ga praznim, `centerBegin` i `centerEnd` sastaju se u sredini trake.

Jedno pravilo koje vrijedi usvojiti: **kada imate vlastiti `shell.json`, on je kanoničan**. Dok ne prilagodite ništa, ljuska čita zadanu Omarchy datoteku. U trenutku kada povučete widget, pokrenete `omarchy bar` ili sami uredite datoteku, ona je vaša — nema dubokog spajanja, pa se novi zadani widgeti u budućim Omarchy izdanjima neće automatski pojaviti na vašoj traci. `omarchy bar defaults` vraća isporučeni raspored kad god želite čist početak.

Ista datoteka također drži vaša vremena neaktivnosti na najvišoj razini, izvan ključa `bar`: `idle.screensaver` i `idle.lock`, oba u sekundama od kada ste postali neaktivni. Tako se zadani čuvar zaslona uključuje nakon 150 sekundi, a zaključavanje nakon 300.
