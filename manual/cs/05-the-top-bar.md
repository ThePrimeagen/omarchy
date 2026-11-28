# Horní lišta

Pruh podél horního okraje obrazovky je lišta Omarchy. Není to přišroubovaná stavová lišta, ale součást shellu Omarchy, jediného dlouho běžícího procesu Quickshell, který kreslí také nabídku, oznámení, vyskakovací okna OSD a zamykací obrazovku. Proto dokonale ladí se vším ostatním a proto se panel otevře okamžitě, místo aby spouštěl novou aplikaci.

Je to také jediná část plochy, která je neustále na obrazovce, takže stojí za to vědět, co všechny ty malé glyfy dělají.

## Co na ní je ve výchozím nastavení

Lišta má tři sekce. Vlevo sedí logo Omarchy (spouštěč nabídky) a indikátory pracovních ploch. Uprostřed máte stavové indikátory, hodiny, Elsewhen (světové hodiny), počasí a odznak aktualizace Omarchy. Vpravo: systémovou lištu, rozložení klávesnice (když je nakonfigurováno více než jedno rozložení nebo metoda vstupu), agenty, bluetooth, síť, zvuk, displej a napájení.

Některé z nich se ukážou, jen když mají co říct. Rozložení klávesnice se objeví, jen pokud jste nakonfigurovali více než jedno rozložení nebo metodu vstupu. Odznak aktualizace se objeví, jen když čeká aktualizace Omarchy.

## Klikání

Téměř každý widget něco dělá na levé, pravé a prostřední kliknutí a několik jich reaguje na rolování. Tohle je část, která lidem uniká — pod pravým a prostředním tlačítkem se skrývá spousta dobrých věcí.

| Widget | Levé | Pravé | Prostřední / rolování |
| --- | --- | --- | --- |
| Nabídka | Nabídka Omarchy | Nový terminál | — |
| Pracovní plochy | Přepnout na danou pracovní plochu na tomto monitoru | — | Rolování: další/předchozí pracovní plocha |
| Hodiny | Vyskakovací kalendář | Přepnout formát popisku | Prostřední: výběr časového pásma |
| Světové hodiny | Panel světových hodin | Obnovit | Prostřední: obnovit |
| Počasí | Vyskakovací předpověď | Úplné počasí jako oznámení | Prostřední: obnovit |
| Zvuk | Panel zvuku | Ztlumit | Prostřední: panel · rolování: hlasitost |
| Mikrofon | Ztlumit mikrofon | — | Prostřední: panel zvuku · rolování: vstupní hlasitost |
| Síť | Panel sítě | — | — |
| Bluetooth | Panel Bluetooth | Přepnout bezdrátový modul | — |
| Displej | Panel displeje | — | Rolování: jas |
| Napájení | Panel napájení | Přepnout procenta baterie | — |
| Média | Přehrát/pozastavit | Vyskakovací okno s obrázkem alba | Prostřední: další · rolování: předchozí/další |
| Agenti | Panel agentů | Spustit vašeho agenta | Prostřední: obnovit využití |
| Systémová lišta | Najetím myší zobrazit zásuvku | Pravým tlačítkem na šipku spravovat | — |
| Aktualizace Omarchy | Spustit aktualizaci | — | — |

Ne všechno v té tabulce máte na liště hned po instalaci. Widget médií (právě hrající MPRIS s rolujícím názvem skladby a interpretem) i widget mikrofonu jsou vestavěné, ale ve výchozím nastavení vypnuté — přidejte si je, pokud je chcete, jak je popsáno níže.

## Panely

Kliknutí na ikonu na liště otevře panel, což je pořádné vyskakovací okno s posuvníky, seznamy a ovládáním klávesnicí, ne jen popisek. Každý má také klávesovou zkratku, takže nikdy nemusíte mířit na 16pixelový glyf:

| Klávesová zkratka | Panel |
| --- | --- |
| `Super + Ctrl + A` | Zvuk |
| `Super + Ctrl + N` | Síť |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Displej |
| `Super + Ctrl + P` | Napájení |
| `Super + Ctrl + Alt + D` | Kalendář |
| `Super + Ctrl + Alt + E` | Světové hodiny |
| `Super + Ctrl + X` | Agenti |
| `Super + Ctrl + 1-9` | Přepnout n-tý panel v pravé sekci |

Panely nejsou jen údaje ke čtení. Právě v nich se daná věc skutečně dělá:

- **Zvuk** má hlavní posuvník hlasitosti, výběr výstupního zařízení a mixér pro jednotlivé aplikace, takže můžete ztlumit tu jednu kartu prohlížeče, aniž byste sahali na všechno ostatní.
- **Síť** vyhledává Wi-Fi, ukazuje sílu signálu, připojuje a umožňuje vybrat poskytovatele DNS.
- **Bluetooth** uvádí vaše zařízení s připojením/odpojením a úrovněmi baterie.
- **Napájení** ukazuje statistiky baterie, přepíná profily napájení (pamatuje si zvláštní volbu pro baterii a pro AC) a vypisuje některé informace o systému.
- **Displej** nese posuvník jasu, velikost textu, předvolby škálování monitoru a — když máte více než jednu obrazovku — ovládací prvky pro jednotlivé monitory. Hlubší příběh najdete v části [monitory](33-monitors.md).
- **Hodiny** otevírají měsíční mřížku s čísly týdnů ISO a krokováním po měsících.
- **Světové hodiny** drží řádek pro každé město, s jeho počasím a s tím, jak se mu v jeho dni daří. Vyhledávání nachází města stejně jako časová pásma, takže Fort Lauderdale je Fort Lauderdale, a ne New York. Pokud řádek nahoře jmenuje špatné město, klikněte na něj a řekněte, kde jste; vyberte místo v jiném časovém pásmu a systémové hodiny se tam přesunou také, což se hodí na cestách. Najeďte na město a klikněte na tlačítko osoby, abyste řekli, kdo tam žije — prostá jména, nebo uživatelská jména GitHub s `@`, která s sebou přinesou i jejich tváře.

Každý panel přijímá klávesnici stejně jako myš: šipky se pohybují, Return aktivuje, Tab přejde na sousední panel a Escape zavírá.

`Super + Ctrl + 1-9` počítá panely zleva doprava v pravé sekci a přeskakuje systémovou lištu, protože ta nemá vlastní panel. Číslo tedy odpovídá ikoně, na kterou byste ukázali.

### Tailscale a Dropbox

Další dva widgety se na liště objeví, teprve až nainstalujete odpovídající službu z **Instalace → Služba**, a oba stojí za pozornost, protože dělají víc než jen hlásí stav.

Panel **Tailscale** připojuje a odpojuje tailnet, přepíná mezi účty a vybírá výstupní uzel (v tom seznamu se objeví vaše vlastní stroje i regiony Mullvad). Také prochází vaše stroje — a když je jeden vybraný, `s` mu pošle soubory přes Taildrop, což je nejrychlejší způsob, jak přesunout soubor do telefonu nebo jiného laptopu. `c` kopíruje IP stroje, `n` jeho jméno a `d` jeho úplný název DNS. Na každém řádku stroje je také tlačítko pro odeslání, pokud raději klikáte. Totéž z terminálu je `omarchy tailscale send <machine> [file...]`.

Panel **Dropbox** řeší přihlášení, ukazuje, kolik úložiště jste využili, a uvádí nedávno synchronizované soubory.

Odebrání kterékoli služby stáhne její widget z lišty zpět.

## Indikátory

Malý shluk uprostřed je widget indikátorů. Jsou to stavové glyfy pro režimy, které jste zapnuli: nerušit, noční světlo, zařazenou [připomínku](09-reminders.md), aktivní nahrávání obrazovky a zůstat vzhůru, plus varování, když je zapnuté sudo bez hesla nebo je někdo připojený ke vzdálené relaci. Rozsvítí se, když je režim aktivní, a jinak zůstávají stranou — najeďte těsně vedle nich, tam, kde by seděly ty neaktivní, abyste na ně nahlédli. Kliknutí na indikátor daný režim přepne. Ještě jeden je pouze stavový: vzdálená relace svítí červeně, když je někdo připojený k tomuto stroji přes gliff.

Pokud chcete, aby byly viditelné pořád, nastavte na widgetu `alwaysShow` na `true`. A pokud vám záleží jen na některých z nich, uveďte ty požadované v `items`: `["Dnd", "Reminder", "NightLight"]`. Widgetů indikátorů můžete mít více než jeden, takže různé sekce mohou zobrazovat různé podmnožiny.

## Přeskládání lišty

Lišta se konfiguruje sama. Nemusíte kvůli přesouvání věcí otevírat konfigurační soubor.

Chyťte prázdné místo na liště kolem středu a táhněte je k jinému okraji obrazovky a lišta se tam přesune — funguje levá, pravá, horní i dolní strana a každý widget se přizpůsobí (svislé lišty přejdou do kompaktních forem jen s ikonami). Stejné tažení zahájí kliknutí a podržení. Dvojité kliknutí levým tlačítkem na totéž prázdné místo přepíná pozadí lišty z průhledného přes skleněné až po neprůhledné. A kterýkoli widget přetáhněte, chcete-li změnit jeho pořadí nebo ho hodit do jiné sekce; ostatní widgety se roztáhnou, aby uvolnily místo tam, kam dopadne.

Střed lišty je box: cokoli je v něm, zůstává vycentrované jako jedna skupina a widgety po jeho stranách visí na jeho okrajích. Když widget táhnete, box se ukáže jako obrys, nebo jako čára přes lištu, když je prázdný, a můžete pustit do něj nebo vedle něj. Když by puštění dopadlo do boxu, box se zvětší, aby widget přijal.

Widget, který chcete mít po ruce, ale ne pořád na očích, může jít do zásuvky systémové lišty: přetáhněte ho na systémovou lištu a zásuvka se otevře, aby ho přijala. Sedí tam za ikonami aplikací, ukazuje se, kdykoli se ukáže zásuvka, a nechává svou zásuvku otevřenou, když je jeho panel nahoře. Přetáhněte ho zpět na lištu, abyste ho vrátili.

Pokud raději vybíráte z nabídky, **Vzhled → Lišta nabídek** má pozici a **Pozadí lišty** vybírá, jak se lišta kreslí: **Neprůhledná lišta**, **Skleněná lišta** (průhledná, s rozmazaným pozadím za ní) nebo **Průhledná lišta**.

Tytéž věci mají příkazy, což je to, co chcete pro sestavu [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Chcete-li widget přidat nebo odebrat úplně, použijte příkazy pluginů. `omarchy plugin list` vypíše každý widget, který shell zná, s jeho id, a potom:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Skrytí lišty

`Super + Shift + Space` lištu vypne a zase zapne, aniž by zabil shell — panely a klávesové zkratky dál fungují, jen dostanete zpět pixely. Je to také v nabídce pod **Vzhled → Lišta nabídek → Skrýt lištu**.

## Konfigurační soubor

Všechno je uloženo v `~/.config/omarchy/shell.json` pod klíčem `bar`. Tady je ořezaná verze:

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

Každý widget je jedna položka v jednom z pěti polí layoutu a jeho nastavení sedí přímo na té položce — není žádný samostatný soubor nastavení a žádný podobjekt `config`. `format`, `formatAlt` (to, na co přepíná pravé kliknutí) a `verticalFormat` hodin žijí přímo tam na `{ "id": "omarchy.clock" }`.

`center` je box uprostřed lišty: všechno v něm je vycentrované na obrazovce jako jedna skupina. `centerBegin` a `centerEnd` visí po obou stranách boxu, a právě tak zůstávají hodiny přesně uprostřed, i když počasí a odznak aktualizace přicházejí a odcházejí. Dejte do `center` více než jeden widget a budou vycentrované společně; nechte ho prázdné a `centerBegin` a `centerEnd` se potkají uprostřed lišty.

Jedno pravidlo, které stojí za to si osvojit: **jakmile máte vlastní `shell.json`, je kanonický**. Dokud si nic nepřizpůsobíte, shell čte výchozí soubor Omarchy. V okamžiku, kdy přetáhnete widget, spustíte `omarchy bar` nebo soubor sami upravíte, vlastníte ho — nedochází k žádnému hlubokému slučování, takže nové výchozí widgety v budoucích vydáních Omarchy se na vaší liště neobjeví automaticky. `omarchy bar defaults` vrátí dodávaný layout zpět, kdykoli chcete čistý štít.

Tentýž soubor drží také vaše časování nečinnosti na nejvyšší úrovni, mimo klíč `bar`: `idle.screensaver` a `idle.lock`, obojí v sekundách od chvíle, kdy jste přešli do nečinnosti. Výchozí spořič obrazovky se tedy spustí po 150 sekundách a zámek po 300.
