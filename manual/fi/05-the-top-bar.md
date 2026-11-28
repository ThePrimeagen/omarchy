# Yläpalkki

Näytön yläreunassa kulkeva nauha on Omarchy-palkki. Se ei ole kylkeen pultattu tilapalkki, vaan osa Omarchy-kuorta, sitä yhtä pitkään käynnissä olevaa Quickshell-prosessia, joka piirtää myös valikon, ilmoitukset, OSD-ponnahdusikkunat ja lukitusnäytön. Siksi sen teema sopii täydellisesti yhteen kaiken muun kanssa ja siksi paneeli aukeaa välittömästi sen sijaan, että käynnistäisi uuden sovelluksen.

Se on myös ainoa työpöydän osa, joka on aina näytöllä, joten kannattaa tietää, mitä kaikki nuo pienet merkit tekevät.

## Mitä siinä on oletuksena

Palkissa on kolme osaa. Vasemmalla ovat Omarchy-logo (valikon käynnistin) ja työtilaindikaattorit. Keskellä saat tilaindikaattorit, kellon, Elsewhenin (maailmankello), sään ja Omarchy-päivitysmerkin. Oikealla: järjestelmälokero, näppäimistöasettelu (kun useampi kuin yksi asettelu tai syöttötapa on määritetty), agentit, bluetooth, verkko, ääni, näyttö ja virta.

Muutama niistä näkyy vain, kun niillä on jotain sanottavaa. Näppäimistöasettelu näkyy vain, jos olet määrittänyt useamman kuin yhden asettelun tai syöttötavan. Päivitysmerkki näkyy vain, kun Omarchy-päivitys odottaa.

## Klikkailu ympäriinsä

Lähes jokainen pienoisohjelma tekee jotain vasemmalla, oikealla ja keskimmäisellä napsautuksella, ja useat reagoivat vieritykseen. Tämä on se osa, joka ihmisiltä jää huomaamatta — oikea ja keskimmäinen painike ovat paikkoja, joihin paljon hyvää tavaraa piiloutuu.

| Pienoisohjelma | Vasen | Oikea | Keski / vieritys |
| --- | --- | --- | --- |
| Valikko | Omarchy-valikko | Uusi pääte | — |
| Työtilat | Tarkenna kyseiseen työtilaan tällä näytöllä | — | Vieritys: seuraava/edellinen työtila |
| Kello | Kalenteri-ponnahdusikkuna | Vaihda tunnisteen muotoa | Keski: aikavyöhykkeen valitsin |
| Maailmankello | Maailmankellopaneeli | Päivitä | Keski: päivitä |
| Sää | Ennuste-ponnahdusikkuna | Täysi sää ilmoituksena | Keski: päivitä |
| Ääni | Äänipaneeli | Mykistä | Keski: paneeli · vieritys: äänenvoimakkuus |
| Mikrofoni | Mykistä mikrofoni | — | Keski: äänipaneeli · vieritys: sisääntulon voimakkuus |
| Verkko | Verkkopaneeli | — | — |
| Bluetooth | Bluetooth-paneeli | Kytke radio päälle/pois | — |
| Näyttö | Näyttöpaneeli | — | Vieritys: kirkkaus |
| Virta | Virtapaneeli | Vaihda akun prosenttiosuus päälle/pois | — |
| Media | Toista/keskeytä | Kansikuvan ponnahdusikkuna | Keski: seuraava · vieritys: edellinen/seuraava |
| Agentit | Agenttipaneeli | Käynnistä agenttisi | Keski: päivitä käyttö |
| Lokero | Vie hiiri päälle paljastaaksesi laatikon | Napsauta chevronia oikealla hallitaksesi | — |
| Omarchy-päivitys | Suorita päivitys | — | — |

Kaikki tuossa taulukossa oleva ei ole palkissasi heti käytössä. Mediapienoisohjelma (MPRIS nyt soi, vierivällä kappaleella ja esittäjällä) ja mikrofonipienoisohjelma ovat molemmat sisäänrakennettuja mutta oletuksena pois päältä — lisää ne, jos haluat ne, kuten alla kuvataan.

## Paneelit

Palkin kuvakkeen napsauttaminen avaa paneelin, joka on kunnollinen ponnahdusikkuna liukusäätimineen, luetteloineen ja näppäimistönavigointeineen vinkkikehyksen sijaan. Jokaisella on myös pikanäppäin, joten sinun ei koskaan tarvitse tähdätä 16 pikselin merkkiin:

| Pikanäppäin | Paneeli |
| --- | --- |
| `Super + Ctrl + A` | Ääni |
| `Super + Ctrl + N` | Verkko |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Näyttö |
| `Super + Ctrl + P` | Virta |
| `Super + Ctrl + Alt + D` | Kalenteri |
| `Super + Ctrl + Alt + E` | Maailmankello |
| `Super + Ctrl + X` | Agentit |
| `Super + Ctrl + 1-9` | Vaihda oikean osan n:s paneeli päälle/pois |

Paneelit eivät ole lukemia. Niissä itse asiassa teet asian:

- **Ääni** sisältää pää-äänenvoimakkuuden liukusäätimen, ulostulolaitteen valitsimen ja sovelluskohtaisen mikserin, joten voit hiljentää sen yhden selainvälilehden koskematta kaikkeen muuhun.
- **Verkko** skannaa Wi-Fi-verkkoja, näyttää signaalin voimakkuuden, muodostaa yhteyden ja antaa sinun valita DNS-palveluntarjoajan.
- **Bluetooth** luettelee laitteesi yhdistä/katkaise-toiminnoilla ja akkutasoilla.
- **Virta** näyttää akkutilastot, vaihtaa virtaprofiileja (se muistaa erillisen valinnan akulle ja AC:lle) ja tulostaa jonkin verran järjestelmätietoja.
- **Näyttö** sisältää kirkkauden liukusäätimen, tekstin koon, näytön skaalauksen esiasetukset ja — kun sinulla on useampi kuin yksi näyttö — näyttökohtaiset säätimet. Katso [näytöt](33-monitors.md) syvempää tarinaa varten.
- **Kello** avaa kuukausiruudukon ISO-viikkonumeroilla ja kuukauden vaihdolla.
- **Maailmankello** pitää rivin kaupunkia kohden, sen säällä ja sillä, miten sen päivä sujuu. Haku löytää kaupunkeja sekä aikavyöhykkeitä, joten Fort Lauderdale on Fort Lauderdale eikä New York. Jos yläreunan rivi nimeää väärän kaupungin, napsauta sitä ja kerro, missä olet; valitse jokin toisella aikavyöhykkeellä ja järjestelmän kello siirtyy sinne myös, mikä on kätevää matkustaessasi. Vie hiiri kaupungin päälle ja napsauta henkilö-painiketta kertoaksesi, kuka siellä asuu — pelkkiä nimiä, tai `@` GitHub-tunnuksia tuodaksesi heidän kasvonsa mukana.

Jokainen paneeli ottaa vastaan myös näppäimistön hiiren lisäksi: nuolet liikkuvat, Return aktivoi, Tab siirtyy viereiseen paneeliin ja Escape sulkee.

`Super + Ctrl + 1-9` laskee paneelit vasemmalta oikealle oikeassa osassa, ohittaen lokeron, koska sillä ei ole omaa paneelia. Joten numero vastaa kuvaketta, jota osoittaisit.

### Tailscale ja Dropbox

Kaksi pienoisohjelmaa lisää näkyy palkissa vasta, kun asennat vastaavan palvelun kohdasta **Asenna → Palvelu**, ja molemmat kannattaa tuntea, koska ne tekevät muutakin kuin raportoida tilasta.

**Tailscale**-paneeli yhdistää ja katkaisee tailnetin, vaihtaa tilien välillä ja valitsee poistumissolmun (omat koneesi ja Mullvad-alueet näkyvät molemmat siinä luettelossa). Se selaa myös koneitasi — ja kun yksi on valittu, `s` lähettää tiedostoja sille Taildropin kautta, mikä on nopein tapa siirtää tiedosto puhelimeesi tai toiselle kannettavalle. `c` kopioi koneen IP:n, `n` sen nimen ja `d` sen täyden DNS-nimen. Jokaisella konerivillä on myös lähetyspainike, jos mieluummin napsautat. Sama asia päätteestä on `omarchy tailscale send <machine> [file...]`.

**Dropbox**-paneeli hoitaa kirjautumisen, näyttää, kuinka paljon tallennustilaa olet käyttänyt, ja luettelee äskettäin synkronoidut tiedostot.

Kumman tahansa palvelun poistaminen vie sen pienoisohjelman takaisin pois palkista.

## Indikaattorit

Keskellä oleva pieni rypäs on indikaattoripienoisohjelma. Nämä ovat tilamerkkejä käyttöön ottamillesi tiloille: älä häiritse, yövalo, jonoon asetettu [muistutus](09-reminders.md), aktiivinen näytön tallennus ja pysy hereillä, sekä varoitukset, kun salasanaton sudo on päällä tai joku on yhdistetty etäistuntoon. Ne syttyvät, kun tila on aktiivinen, ja muuten pysyvät poissa tieltä — vie hiiri juuri niiden viereen, kohtaan, jossa inaktiiviset olisivat, kurkistaaksesi niitä. Indikaattorin napsauttaminen vaihtaa kyseisen tilan päälle/pois. Yksi lisää on vain tila: etäistunto syttyy punaisena, kun joku on yhdistetty tähän koneeseen gliffin kautta.

Jos haluat niiden olevan mieluummin aina näkyvissä, aseta pienoisohjelmassa `alwaysShow` arvoon `true`. Ja jos välität vain joistakin niistä, luettele haluamasi kohdassa `items`: `["Dnd", "Reminder", "NightLight"]`. Sinulla voi olla useampi kuin yksi indikaattoripienoisohjelma, joten eri osat voivat näyttää eri osajoukkoja.

## Palkin järjesteleminen uudelleen

Palkki määrittää itse itsensä. Sinun ei tarvitse avata määritystiedostoa siirtääksesi asioita.

Tartu tyhjään kohtaan palkissa keskustan ympärillä ja vedä se kohti toista näytön reunaa, ja palkki siirtyy sinne — vasen, oikea, ylä- tai alareuna toimivat kaikki, ja jokainen pienoisohjelma mukautuu (pystypalkit palaavat kompakteihin vain kuvakkeita sisältäviin muotoihin). Napsautus ja pitäminen aloittaa saman vedon. Kaksoisnapsauta vasemmalla samaa tyhjää tilaa vaihtaaksesi palkin taustan kirkkaasta lasimaiseen ja läpinäkymättömään. Ja vedä mitä tahansa pienoisohjelmaa järjestääksesi sen uudelleen tai heittääksesi sen toiseen osaan; muut pienoisohjelmat liukuvat erilleen tehdäkseen tilaa kohtaan, johon se laskeutuu.

Palkin keskikohta on laatikko: mikä tahansa siinä pysyy keskitettynä yhtenä ryhmänä, ja sen molemmin puolin olevat pienoisohjelmat roikkuvat sen reunoista. Kun vedät pienoisohjelmaa, laatikko näkyy ääriviivana tai viivana palkin poikki, kun se on tyhjä, ja voit pudottaa sen sisään tai sen viereen. Kun pudotus osuisi laatikkoon, laatikko kasvaa ottaakseen pienoisohjelman sisäänsä.

Pienoisohjelma, jonka haluat olevan lähellä mutta ei aina näkyvissä, voi mennä lokeron laatikkoon: vedä se lokeron päälle, ja laatikko aukeaa ottaakseen sen vastaan. Se istuu siellä sovelluskuvakkeiden jälkeen, näkyy aina, kun laatikko näkyy, ja pitää laatikkonsa auki, kun sen paneeli on ylhäällä. Vedä se takaisin ulos palkille laittaaksesi sen takaisin.

Jos valitset mieluummin valikosta, kohdassa **Ulkoasu → Valikkopalkki** on sijainti, ja **Palkin tausta** valitsee, kuinka palkki piirretään: **Läpinäkymätön palkki**, **Lasimainen palkki** (läpinäkyvä, takana oleva sumentuneena) tai **Kirkas palkki**.

Samoille asioille on komennot, mikä on se, mitä haluat [dotfiles](31-dotfiles.md)-asetusta varten:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Pienoisohjelman lisäämiseen tai poistamiseen kokonaan käytä lisäosakomentoja. `omarchy plugin list` tulostaa jokaisen pienoisohjelman, jonka kuori tuntee, sen tunnisteen kanssa, ja sitten:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Palkin piilottaminen

`Super + Shift + Space` vaihtaa palkin pois päältä ja takaisin päälle tappamatta kuorta — paneelit ja pikanäppäimet toimivat edelleen, saat vain pikselit takaisin. Se on myös valikossa kohdassa **Ulkoasu → Valikkopalkki → Piilota palkki**.

## Määritystiedosto

Kaikki se on tallennettu tiedostoon `~/.config/omarchy/shell.json`, avaimen `bar` alle. Tässä on karsittu versio:

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

Jokainen pienoisohjelma on yksi merkintä yhdessä viidestä asettelutaulukosta, ja sen asetukset ovat suoraan kyseisessä merkinnässä — erillistä asetustiedostoa ei ole eikä `config`-aliobjektia ole. Kellon `format`, `formatAlt` (mihin oikea napsautus vaihtaa) ja `verticalFormat` sijaitsevat kaikki juuri siinä kohdassa `{ "id": "omarchy.clock" }`.

`center` on laatikko palkin keskellä: kaikki siinä on keskitetty näytölle yhtenä ryhmänä. `centerBegin` ja `centerEnd` roikkuvat laatikon kummallakin puolella, minkä ansiosta kello pysyy täsmälleen keskellä, vaikka sää ja päivitysmerkki tulevat ja menevät. Laita useampi kuin yksi pienoisohjelma kohtaan `center`, ja ne keskitetään yhdessä; jätä se tyhjäksi, ja `centerBegin` ja `centerEnd` kohtaavat palkin keskellä.

Yksi sääntö kannattaa sisäistää: **kun sinulla on oma `shell.json`, se on kanoninen**. Kunnes mukautat mitään, kuori lukee Omarchyn oletustiedoston. Sillä hetkellä, kun vedät pienoisohjelmaa, suoritat `omarchy bar` -komennon tai muokkaat tiedostoa itse, omistat sen — syvää yhdistämistä ei ole, joten tulevien Omarchy-julkaisujen uudet oletuspienoisohjelmat eivät ilmesty palkillesi automaattisesti. `omarchy bar defaults` palauttaa toimitetun asettelun aina, kun haluat puhtaan pöydän.

Samassa tiedostossa ovat myös tyhjäkäyntiaikasi ylätasolla, avaimen `bar` ulkopuolella: `idle.screensaver` ja `idle.lock`, molemmat sekunteina siitä, kun menit tyhjäkäyntitilaan. Joten oletusnäytönsäästäjä käynnistyy 150 sekunnissa ja lukko 300 sekunnissa.
