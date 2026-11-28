# A felső sáv

A képernyő tetején végigfutó sáv az Omarchy sáv. Nem egy utólag felcsavarozott állapotsáv, hanem az Omarchy shell része, azé az egyetlen, hosszan futó Quickshell folyamaté, amely a menüt, az értesítéseket, az OSD felugró ablakokat és a zárolási képernyőt is rajzolja. Ezért illeszkedik tökéletesen minden máshoz témában, és ezért nyílik meg egy panel azonnal, új alkalmazás indítása helyett.

Ez az asztal egyetlen olyan darabja is, amely mindig a képernyőn van, ezért érdemes tudni, mit csinálnak azok a kis jelek.

## Mi van rajta alapértelmezetten

A sávnak három szakasza van. Bal oldalon ül az Omarchy logó (a menüindító) és a munkaterület-jelzők. Középen kapod az állapotjelzőket, az órát, az Elsewhen-t (egy világórát), az időjárást és egy Omarchy frissítési jelvényt. Jobb oldalon: a rendszertálca, a billentyűzetkiosztás (amikor egynél több kiosztás vagy beviteli mód van beállítva), az ügynökök, a bluetooth, a hálózat, a hang, a kijelző és az energia.

Ezek közül néhány csak akkor jelenik meg, amikor mondanivalója van. A billentyűzetkiosztás csak akkor jelenik meg, ha egynél több kiosztást vagy beviteli módot állítottál be. A frissítési jelvény csak akkor jelenik meg, amikor Omarchy frissítés vár rád.

## Kattintgatás

Szinte minden widget csinál valamit bal, jobb és középső kattintásra, és több reagál a görgetésre is. Ez az a rész, ami az embereknek kimarad — a jobb és a középső gomb rejti a jó dolgok nagy részét.

| Widget | Bal | Jobb | Középső / görgetés |
| --- | --- | --- | --- |
| Menü | Omarchy menü | Új terminál | — |
| Munkaterületek | Az adott munkaterületre fókuszál ezen a monitoron | — | Görgetés: következő/előző munkaterület |
| Óra | Naptár felugró ablak | A címkeformátum váltogatása | Középső: időzóna-választó |
| Világóra | Világóra panel | Frissítés | Középső: frissítés |
| Időjárás | Előrejelzés felugró ablak | Teljes időjárás értesítésként | Középső: frissítés |
| Hang | Hangpanel | Némítás | Középső: panel · görgetés: hangerő |
| Mikrofon | Mikrofon némítása | — | Középső: hangpanel · görgetés: bemeneti hangerő |
| Hálózat | Hálózat panel | — | — |
| Bluetooth | Bluetooth panel | A rádió ki-/bekapcsolása | — |
| Kijelző | Kijelző panel | — | Görgetés: fényerő |
| Energia | Energia panel | Az akkumulátorszázalék ki-/bekapcsolása | — |
| Média | Lejátszás/szünet | Borítókép felugró ablak | Középső: következő · görgetés: előző/következő |
| Ügynökök | Ügynökök panel | Az ügynököd indítása | Középső: használat frissítése |
| Tálca | Föléviszed az egeret a fiók felfedéséhez | Jobb kattintás a chevronra a kezeléshez | — |
| Omarchy frissítés | A frissítés futtatása | — | — |

Abból a táblázatból nem minden van ott a sávodon alapból. A média widget (MPRIS éppen játszott, görgetődő számmal és előadóval) és a mikrofon widget is be van építve, de alapértelmezetten ki van kapcsolva — add hozzá őket, ha akarod, az alábbiak szerint.

## A panelek

Egy sáv ikonra kattintva egy panel nyílik meg, amely egy rendes felugró ablak csúszkákkal, listákkal és billentyűzetes navigációval, nem pedig egy eszköztipp. Mindegyikhez tartozik egy gyorsbillentyű is, így soha nem kell egy 16 pixeles jelre céloznod:

| Gyorsbillentyű | Panel |
| --- | --- |
| `Super + Ctrl + A` | Hang |
| `Super + Ctrl + N` | Hálózat |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Kijelző |
| `Super + Ctrl + P` | Energia |
| `Super + Ctrl + Alt + D` | Naptár |
| `Super + Ctrl + Alt + E` | Világóra |
| `Super + Ctrl + X` | Ügynökök |
| `Super + Ctrl + 1-9` | A jobb szakasz n-edik paneljének ki-/bekapcsolása |

A panelek nem kijelzők. Ezek azok, ahol ténylegesen elvégzed a dolgot:

- **Hang** rendelkezik fő hangerőcsúszkával, kimeneti eszköz választóval és alkalmazásonkénti keverővel, így lehalkíthatod azt az egy böngészőlapot anélkül, hogy minden máshoz hozzányúlnál.
- **Hálózat** Wi-Fi-t keres, mutatja a jelerősséget, csatlakozik, és lehetővé teszi, hogy DNS-szolgáltatót válassz.
- **Bluetooth** listázza az eszközeidet csatlakozással/leválasztással és akkumulátorszintekkel.
- **Energia** akkumulátorstatisztikákat mutat, energiaprofilokat vált (külön választást jegyez meg akkumulátorra és AC-re), és némi rendszerinformációt is kiír.
- **Kijelző** fényerőcsúszkát, szövegméretet, monitorméretezési előbeállításokat tartalmaz, és — amikor egynél több képernyőd van — monitoronkénti vezérlőket. A mélyebb történethez lásd: [monitorok](33-monitors.md).
- **Óra** egy hónaprácsot nyit meg ISO hétszámokkal és hónapok közötti léptetéssel.
- **Világóra** városonként egy sort tart, annak időjárásával és azzal, hogyan alakul a napja. A keresés városokat és időzónákat is talál, így Fort Lauderdale Fort Lauderdale, és nem New York. Ha a felül lévő sor rossz várost nevez meg, kattints rá, és mondd meg, hol vagy; válassz egy helyet egy másik időzónában, és a rendszeróra is oda ugrik, ami utazáskor jól jön. Vigyd az egeret egy város fölé, és kattints a személy gombra, hogy megmondd, ki lakik ott — egyszerű nevek, vagy `@` GitHub azonosítók, hogy az arcuk is velük jöjjön.

Minden panel kezeli a billentyűzetet éppúgy, mint az egeret: a nyilak mozgatnak, a Return aktivál, a Tab a szomszédos panelre lép, az Escape pedig bezár.

A `Super + Ctrl + 1-9` balról jobbra számolja a paneleket a jobb szakaszban, kihagyva a tálcát, mivel annak nincs saját panelje. Így a szám megegyezik azzal az ikonnal, amelyre mutatnál.

### Tailscale és Dropbox

Két további widget csak akkor jelenik meg a sávon, ha telepíted a megfelelő szolgáltatást az **Install → Service** menüpontból, és mindkettőt érdemes ismerni, mert többet csinálnak, mint állapotot jelenteni.

A **Tailscale** panel csatlakoztatja és leválasztja a tailnetet, fiókok között vált, és kilépési csomópontot választ (a saját gépeid és a Mullvad régiók is megjelennek azon a listán). Böngészi is a gépeidet — és ha egy ki van választva, az `s` fájlokat küld rá Taildrop segítségével, ami a leggyorsabb módja annak, hogy egy fájlt a telefonodra vagy egy másik laptopra juttass. A `c` a gép IP-címét másolja, az `n` a nevét, a `d` pedig a teljes DNS-nevét. Minden gépsoron van egy küldés gomb is, ha inkább kattintanál. Ugyanez terminálból: `omarchy tailscale send <machine> [file...]`.

A **Dropbox** panel kezeli a bejelentkezést, mutatja, mennyi tárhelyet használtál, és listázza a nemrég szinkronizált fájlokat.

Bármelyik szolgáltatás eltávolítása leveszi a widgetjét a sávról.

## Jelzők

A középen lévő kis fürt a jelzők widget. Ezek állapotjelek azokhoz a módokhoz, amelyeket bekapcsoltál: ne zavarjanak, éjszakai fény, egy sorban álló [emlékeztető](09-reminders.md), egy aktív képernyőfelvétel és ébren maradás, valamint figyelmeztetések, amíg a jelszó nélküli sudo be van kapcsolva, vagy valaki egy távoli munkamenethez csatlakozik. Kigyulladnak, amikor a mód aktív, egyébként félrehúzódnak — vigyd az egeret közvetlenül melléjük, oda, ahol az inaktívak ülnének, hogy azokra is ráláss. Egy jelzőre kattintva ki-/bekapcsolod azt a módot. Van még egy, amely csak állapotot mutat: egy távoli munkamenet pirosan világít, amíg valaki gliff segítségével csatlakozik ehhez a géphez.

Ha inkább mindig láthatók lennének, állítsd az `alwaysShow` értékét `true`-ra a widgeten. És ha csak néhány érdekel közülük, sorold fel a kívántakat az `items` mezőben: `["Dnd", "Reminder", "NightLight"]`. Egynél több jelzők widgeted is lehet, így különböző szakaszok különböző részhalmazokat mutathatnak.

## A sáv átrendezése

A sáv önmagát konfigurálja. Nem kell konfigurációs fájlt megnyitnod ahhoz, hogy dolgokat mozgass.

Fogj meg egy üres foltot a sávon a középpont környékén, és húzd egy másik képernyőszél felé, és a sáv oda költözik — balra, jobbra, felülre vagy alulra, mindegyik működik, és minden widget alkalmazkodik (a függőleges sávok kompakt, csak ikonos formákra váltanak vissza). A kattintás és nyomva tartás ugyanezt a húzást indítja. Dupla bal kattintás ugyanazon az üres helyen végiglépteti a sáv hátterét átlátszóról üvegesre, majd átlátszatlanra. És húzz bármely widgetet az átrendezéséhez, vagy dobj át egy másik szakaszba; a többi widget szétcsúszik, hogy helyet csináljon ott, ahová érkezik.

A sáv közepe egy doboz: ami benne van, az egy csoportként középen marad, és a két oldalán lévő widgetek a széleihez kapcsolódnak. Amíg egy widgetet húzol, a doboz körvonalként jelenik meg, vagy egy vonalként a sávon keresztül, amikor üres, és beleejtheted vagy mellé ejtheted. Amikor egy ejtés a dobozba érkezne, a doboz megnő, hogy befogadja a widgetet.

Egy widget, amelyet kéznél akarsz tartani, de nem mindig szem előtt, bekerülhet a tálca fiókjába: húzd a tálcára, és a fiók kinyílik, hogy befogadja. Ott ül az alkalmazásikonok után, megjelenik, valahányszor a fiók is megjelenik, és nyitva tartja a fiókját, amíg a panelje fent van. Húzd vissza a sávra, hogy visszategyed.

Ha inkább menüből választanál, az **Appearance → Menu Bar** tartalmazza a pozíciót, a **Bar Background** pedig azt választja ki, hogyan rajzolódjon a sáv: **Opaque Bar**, **Glassy Bar** (átlátszó, a mögötte lévő elmosásával), vagy **Clear Bar**.

Ugyanezekhez parancsok is tartoznak, ami az, amit egy [dotfiles](31-dotfiles.md) beállításhoz akarsz:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Egy widget teljes hozzáadásához vagy eltávolításához használd a plugin parancsokat. Az `omarchy plugin list` minden widgetet kiír, amelyet a shell ismer, az azonosítójával együtt, és aztán:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## A sáv elrejtése

A `Super + Shift + Space` ki- és visszakapcsolja a sávot a shell megölése nélkül — a panelek és a gyorsbillentyűk továbbra is működnek, csak visszakapod a pixeleket. A menüben is megtalálható az **Appearance → Menu Bar → Hide Bar** alatt.

## A konfigurációs fájl

Mindez a `~/.config/omarchy/shell.json` fájlban tárolódik, a `bar` kulcs alatt. Íme egy rövidített változat:

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

Minden widget egy bejegyzés az öt elrendezési tömb egyikében, és a beállításai soron belül, azon a bejegyzésen ülnek — nincs külön beállításfájl és nincs `config` alobjektum. Az óra `format`, `formatAlt` (amire a jobb kattintás váltogat) és `verticalFormat` értéke mind ott él a `{ "id": "omarchy.clock" }` bejegyzésen.

A `center` a sáv közepén lévő doboz: minden, ami benne van, egy csoportként középre kerül a képernyőn. A `centerBegin` és a `centerEnd` a doboz két oldalához kapcsolódik, így marad az óra pontosan középen akkor is, amikor az időjárás és a frissítési jelvény jön és megy. Tegyél egynél több widgetet a `center` mezőbe, és együtt kerülnek középre; hagyd üresen, és a `centerBegin` és a `centerEnd` a sáv közepén találkozik.

Egy szabály, amelyet érdemes megjegyezni: **ha egyszer megvan a saját `shell.json` fájlod, az a mérvadó**. Amíg semmit nem szabtál testre, a shell az Omarchy alapértelmezett fájlját olvassa. Abban a pillanatban, amikor elhúzol egy widgetet, futtatod az `omarchy bar` parancsot, vagy magad szerkeszted a fájlt, a tiéd lesz — nincs mély összefésülés, így a jövőbeli Omarchy kiadások új alapértelmezett widgetjei nem jelennek meg automatikusan a sávodon. Az `omarchy bar defaults` visszaállítja a szállított elrendezést, amikor tiszta lapot akarsz.

Ugyanez a fájl tartalmazza az üresjárati időzítéseidet is a felső szinten, a `bar` kulcson kívül: az `idle.screensaver` és az `idle.lock` értékeket, mindkettőt másodpercben mérve azóta, hogy üresjáratba kerültél. Így az alapértelmezett képernyővédő 150 másodpercnél kapcsol be, a zárolás pedig 300-nál.
