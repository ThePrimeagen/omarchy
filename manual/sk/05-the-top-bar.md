# Horný panel

Pás pozdĺž hornej časti obrazovky je panel Omarchy. Nie je to prišraubovaný stavový riadok, ale súčasť shellu Omarchy, jediného dlho bežiaceho procesu Quickshell, ktorý kreslí aj ponuku, oznámenia, vyskakovacie okná OSD a uzamykaciu obrazovku. Práve preto dokonale ladí témou so všetkým ostatným a práve preto sa panel otvorí okamžite, namiesto aby spúšťal novú aplikáciu.

Je to tiež jediná časť pracovnej plochy, ktorá je vždy na obrazovke, takže stojí za to vedieť, čo robia všetky tie malé glyfy.

## Čo je na ňom predvolene

Panel má tri časti. Vľavo sedí logo Omarchy (spúšťač ponuky) a indikátory pracovných plôch. V strede máte indikátory stavu, hodiny, Elsewhen (svetové hodiny), počasie a odznak aktualizácie Omarchy. Vpravo: oznamovacia oblasť, rozloženie klávesnice (keď je nakonfigurované viac než jedno rozloženie alebo metóda vstupu), agenti, Bluetooth, sieť, zvuk, displej a napájanie.

Niektoré z nich sa zobrazia len vtedy, keď majú čo povedať. Rozloženie klávesnice sa objaví len vtedy, ak ste nakonfigurovali viac než jedno rozloženie alebo metódu vstupu. Odznak aktualizácie sa objaví len vtedy, keď čaká aktualizácia Omarchy.

## Klikanie po paneli

Takmer každý widget niečo robí pri kliknutí ľavým, pravým a stredným tlačidlom a niekoľko z nich reaguje na rolovanie. Toto je časť, ktorú ľudia prehliadnu — pravé a stredné tlačidlá sú miestom, kde sa skrýva veľa dobrých vecí.

| Widget | Ľavé tlačidlo | Pravé tlačidlo | Stredné tlačidlo / rolovanie |
| --- | --- | --- | --- |
| Ponuka | Ponuka Omarchy | Nový terminál | — |
| Pracovné plochy | Zamerať tú pracovnú plochu na tomto monitore | — | Rolovanie: ďalšia/predchádzajúca pracovná plocha |
| Hodiny | Vyskakovací kalendár | Prepnúť formát popisu | Stredné tlačidlo: výber časového pásma |
| Svetové hodiny | Panel svetových hodín | Obnoviť | Stredné tlačidlo: obnoviť |
| Počasie | Vyskakovacia predpoveď | Úplné počasie ako oznámenie | Stredné tlačidlo: obnoviť |
| Zvuk | Panel zvuku | Stlmiť | Stredné tlačidlo: panel · rolovanie: hlasitosť |
| Mikrofón | Stlmiť mikrofón | — | Stredné tlačidlo: panel zvuku · rolovanie: vstupná hlasitosť |
| Sieť | Panel siete | — | — |
| Bluetooth | Panel Bluetooth | Prepnúť vysielač | — |
| Displej | Panel displeja | — | Rolovanie: jas |
| Napájanie | Panel napájania | Prepnúť percento batérie | — |
| Médiá | Prehrať/pozastaviť | Vyskakovacie okno s obalom albumu | Stredné tlačidlo: ďalšie · rolovanie: predchádzajúce/ďalšie |
| Agenti | Panel agentov | Spustiť vášho agenta | Stredné tlačidlo: obnoviť využitie |
| Oznamovacia oblasť | Podržaním kurzora odkryť zásuvku | Pravé tlačidlo na šípke na správu | — |
| Aktualizácia Omarchy | Spustiť aktualizáciu | — | — |

Nie všetko v tej tabuľke máte na paneli hneď od začiatku. Widget médií (MPRIS now-playing, s rolujúcou skladbou a interpretom) aj widget mikrofónu sú zabudované, ale predvolene vypnuté — pridajte si ich, ak ich chcete, ako je opísané nižšie.

## Panely

Kliknutie na ikonu panela otvorí panel, čo je poriadne vyskakovacie okno s posuvníkmi, zoznamami a navigáciou klávesnicou, a nie tooltip. Každý z nich má aj klávesovú skratku, takže nikdy nemusíte mieriť na 16-pixelový glyf:

| Klávesová skratka | Panel |
| --- | --- |
| `Super + Ctrl + A` | Zvuk |
| `Super + Ctrl + N` | Sieť |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Displej |
| `Super + Ctrl + P` | Napájanie |
| `Super + Ctrl + Alt + D` | Kalendár |
| `Super + Ctrl + Alt + E` | Svetové hodiny |
| `Super + Ctrl + X` | Agenti |
| `Super + Ctrl + 1-9` | Prepnúť n-tý panel v pravej časti |

Panely nie sú len výpisy. Sú miestom, kde vec skutočne urobíte:

- **Zvuk** má hlavný posuvník hlasitosti, výber výstupného zariadenia a mixér pre jednotlivé aplikácie, takže môžete stíšiť práve tú jednu kartu prehliadača bez toho, aby ste zasiahli všetko ostatné.
- **Sieť** vyhľadáva Wi-Fi, ukazuje silu signálu, pripája a umožňuje vám vybrať poskytovateľa DNS.
- **Bluetooth** vypíše vaše zariadenia s pripojením/odpojením a úrovňami batérie.
- **Napájanie** ukazuje štatistiky batérie, prepína profily napájania (pamätá si samostatnú voľbu pre batériu a AC) a vypíše niektoré systémové informácie.
- **Displej** má posuvník jasu, veľkosť textu, predvoľby škálovania monitora a — keď máte viac než jednu obrazovku — ovládanie pre jednotlivé monitory. Podrobnejší príbeh nájdete v časti [monitory](33-monitors.md).
- **Hodiny** otvoria mriežku mesiaca s číslami týždňov podľa ISO a krokovaním po mesiacoch.
- **Svetové hodiny** majú riadok pre každé mesto, s jeho počasím a tým, ako sa mu vodí počas dňa. Vyhľadávanie nájde mestečká aj časové pásma, takže Fort Lauderdale je Fort Lauderdale, a nie New York. Ak riadok navrchu uvádza nesprávne mesto, kliknite naň a povedzte, kde ste; vyberte si miesto v inom časovom pásme a systémové hodiny sa tam presunú tiež, čo je praktické, keď cestujete. Prejdite kurzorom na mesto a kliknite na tlačidlo osoby, aby ste povedali, kto tam žije — obyčajné mená, alebo popisovače `@` na GitHub, aby ste so sebou priniesli aj ich tváre.

Každý panel prijíma aj klávesnicu, nielen myš: šípky presúvajú, Return aktivuje, Tab prejde na susedný panel a Escape zatvorí.

`Super + Ctrl + 1-9` počíta panely zľava doprava v pravej časti, pričom preskakuje oznamovaciu oblasť, keďže nemá vlastný panel. Číslo teda zodpovedá ikone, na ktorú by ste ukázali.

### Tailscale a Dropbox

Ďalšie dva widgety sa na paneli objavia až po nainštalovaní príslušnej služby z **Inštalácia → Služba** a oba stoja za poznanie, pretože robia viac než len hlásia stav.

Panel **Tailscale** pripája a odpája tailnet, prepína medzi účtami a vyberá výstupný uzol (v tom zozname sa objavia vaše vlastné stroje aj regióny Mullvad). Prechádza tiež vaše stroje — a keď je jeden vybraný, `s` mu pošle súbory cez Taildrop, čo je najrýchlejší spôsob, ako presunúť súbor do telefónu alebo iného laptopu. `c` skopíruje IP stroja, `n` jeho názov a `d` jeho úplný názov DNS. Na každom riadku stroja je aj tlačidlo na odoslanie, ak radšej klikáte. To isté z terminálu je `omarchy tailscale send <machine> [file...]`.

Panel **Dropbox** rieši prihlásenie, ukazuje, koľko úložiska ste využili, a vypíše nedávno synchronizované súbory.

Odstránením ktorejkoľvek služby sa jej widget z panela zase odstráni.

## Indikátory

Malý zhluk v strede je widget indikátorov. Sú to stavové glyfy pre režimy, ktoré ste zapli: nerušiť, nočné svetlo, [pripomienka](09-reminders.md) vo fronte, aktívne nahrávanie obrazovky a zostať prebudený, plus varovania, kým je zapnuté sudo bez hesla alebo je niekto pripojený k vzdialenej relácii. Rozsvietia sa, keď je režim aktívny, a inak zostávajú mimo cesty — prejdite kurzorom hneď vedľa nich, tam, kde by sedeli tie neaktívne, aby ste na ne nakukli. Kliknutie na indikátor ten režim prepne. Jeden ďalší je len stavový: vzdialená relácia svieti načerveno, kým je niekto pripojený k tomuto stroju cez gliff.

Ak chcete, aby boli vždy viditeľné, nastavte na widgete `alwaysShow` na `true`. A ak vám záleží len na niektorých z nich, uveďte tie, ktoré chcete, v `items`: `["Dnd", "Reminder", "NightLight"]`. Môžete mať viac než jeden widget indikátorov, takže rôzne časti môžu zobrazovať rôzne podmnožiny.

## Preusporiadanie panela

Panel sa konfiguruje sám. Na presúvanie vecí nemusíte otvárať konfiguračný súbor.

Chyťte prázdne miesto na paneli okolo stredu a potiahnite ho k inému okraju obrazovky a panel sa tam presunie — vľavo, vpravo, hore alebo dole, všetko funguje a každý widget sa prispôsobí (zvislé panely prejdú na kompaktné formy len s ikonami). Kliknutie a podržanie spustí rovnaké ťahanie. Dvojitým kliknutím ľavým tlačidlom na to isté prázdne miesto prepnete pozadie panela z priehľadného na sklené a na nepriehľadné. A potiahnutím ktoréhokoľvek widgetu ho preusporiadate alebo hodíte do inej časti; ostatné widgety sa od seba posunú, aby urobili miesto tam, kde pristane.

Stred panela je box: čokoľvek v ňom zostáva vycentrované ako jedna skupina a widgety po oboch jeho stranách visia z jeho okrajov. Počas ťahania widgetu sa box zobrazí ako obrys, alebo ako čiara cez panel, keď je prázdny, a môžete ho pustiť doň alebo vedľa neho. Keď by pustenie pristálo v boxe, box narastie, aby widget prijal.

Widget, ktorý chcete mať poruke, ale nie vždy na očiach, môže ísť do zásuvky oznamovacej oblasti: potiahnite ho na oznamovaciu oblasť a zásuvka sa otvorí, aby ho prijala. Sedí tam za ikonami aplikácií, zobrazí sa vždy, keď sa zobrazí zásuvka, a zásuvku nechá otvorenú, kým je jeho panel otvorený. Potiahnite ho späť von na panel, aby ste ho vrátili.

Ak si radšej vyberiete z ponuky, **Vzhľad → Panel ponúk** má polohu a **Pozadie panela** vyberá, ako sa panel kreslí: **Nepriehľadný panel**, **Sklený panel** (priehľadný, s tým, čo je za ním, rozmazaným) alebo **Priehľadný panel**.

Tie isté veci majú príkazy, čo je to, čo chcete pre nastavenie [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Na úplné pridanie alebo odstránenie widgetu použite príkazy pluginov. `omarchy plugin list` vypíše každý widget, ktorý shell pozná, spolu s jeho id, a potom:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Skrytie panela

`Super + Shift + Space` vypne panel a zase ho zapne bez toho, aby zabilo shell — panely a klávesové skratky fungujú ďalej, len získate späť pixely. Je to aj v ponuke pod **Vzhľad → Panel ponúk → Skryť panel**.

## Konfiguračný súbor

Všetko je uložené v `~/.config/omarchy/shell.json`, pod kľúčom `bar`. Tu je skrátená verzia:

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

Každý widget je jeden záznam v jednom z piatich polí rozloženia a jeho nastavenia sedia priamo na tom zázname — neexistuje samostatný súbor nastavení ani podobobjekt `config`. `format`, `formatAlt` (na čo prepne pravé kliknutie) a `verticalFormat` hodín žijú všetky priamo tam na `{ "id": "omarchy.clock" }`.

`center` je box v strede panela: všetko v ňom je vycentrované na obrazovke ako jedna skupina. `centerBegin` a `centerEnd` visia po oboch stranách boxu, vďaka čomu hodiny zostávajú presne v strede, aj keď počasie a odznak aktualizácie prichádzajú a odchádzajú. Dajte do `center` viac než jeden widget a budú vycentrované spolu; nechajte ho prázdne a `centerBegin` a `centerEnd` sa stretnú v strede panela.

Jedno pravidlo, ktoré stojí za to si osvojiť: **keď už máte vlastný `shell.json`, je kanonický**. Kým si nič neprispôsobíte, shell číta predvolený súbor Omarchy. V okamihu, keď potiahnete widget, spustíte `omarchy bar` alebo súbor upravíte sami, vlastníte ho vy — neexistuje žiadne hlboké zlučovanie, takže nové predvolené widgety v budúcich vydaniach Omarchy sa na vašom paneli automaticky neobjavia. `omarchy bar defaults` vráti dodávané rozloženie späť, kedykoľvek chcete čistý štít.

Ten istý súbor tiež uchováva vaše časovania nečinnosti na najvyššej úrovni, mimo kľúča `bar`: `idle.screensaver` a `idle.lock`, obe v sekundách odvtedy, čo ste šli do nečinnosti. Predvolený šetrič obrazovky sa teda spustí po 150 sekundách a zámok po 300.
