# Den övre listen

Listen längs skärmens överkant är Omarchy-listen. Den är ingen påskruvad statuslist, utan en del av Omarchy-skalet, den enda långkörande Quickshell-processen som också ritar menyn, aviseringarna, OSD-popuperna och låsskärmen. Det är därför den följer temat perfekt med allt annat och därför en panel öppnas direkt i stället för att starta en ny app.

Den är också den enda delen av skrivbordet som alltid syns på skärmen, så det är värt att veta vad alla de där små symbolerna gör.

## Vad som finns på den som standard

Listen har tre sektioner. Till vänster sitter Omarchy-logotypen (menystartaren) och arbetsyteindikatorerna. I mitten får du statusindikatorerna, klockan, Elsewhen (en världsklocka), vädret och ett märke för Omarchy-uppdateringar. Till höger: systembrickan, tangentbordslayouten (när mer än en layout eller inmatningsmetod är konfigurerad), agenter, bluetooth, nätverk, ljud, skärm och ström.

Några av dem visas bara när de har något att säga. Tangentbordslayouten visas bara om du har konfigurerat mer än en layout eller inmatningsmetod. Uppdateringsmärket visas bara när en Omarchy-uppdatering väntar.

## Klicka runt

Nästan varje widget gör något vid vänsterklick, högerklick och mittenklick, och flera svarar på rullning. Det här är delen folk missar — höger- och mittenknapparna är där mycket av det bra grejerna gömmer sig.

| Widget | Vänster | Höger | Mitten / rullning |
| --- | --- | --- | --- |
| Meny | Omarchy-menyn | Ny terminal | — |
| Arbetsytor | Fokusera den arbetsytan på den här skärmen | — | Rullning: nästa/föregående arbetsyta |
| Klocka | Popup med kalender | Växla etikettformatet | Mitten: tidszonsväljare |
| Världsklocka | Panel för världsklocka | Uppdatera | Mitten: uppdatera |
| Väder | Popup med prognos | Fullständigt väder som en avisering | Mitten: uppdatera |
| Ljud | Ljudpanelen | Stäng av ljudet | Mitten: panel · rullning: volym |
| Mikrofon | Stäng av mikrofonen | — | Mitten: ljudpanelen · rullning: ingångsvolym |
| Nätverk | Nätverkspanelen | — | — |
| Bluetooth | Bluetooth-panelen | Växla radion | — |
| Skärm | Skärmpanelen | — | Rullning: ljusstyrka |
| Ström | Strömpanelen | Växla batteriprocenten | — |
| Media | Spela/pausa | Popup med omslagsbild | Mitten: nästa · rullning: föregående/nästa |
| Agenter | Agentpanelen | Starta din agent | Mitten: uppdatera användning |
| Bricka | Håll musen över för att visa lådan | Högerklicka på chevronen för att hantera | — |
| Omarchy-uppdatering | Kör uppdateringen | — | — |

Allt i den tabellen finns inte på din list direkt ur lådan. Mediawidgeten (MPRIS nu spelas, med rullande spår och artist) och mikrofonwidgeten är båda inbyggda men avstängda som standard — lägg till dem om du vill ha dem, som beskrivs nedan.

## Panelerna

När du klickar på en listikon öppnas en panel, vilket är en ordentlig popup med reglage, listor och tangentbordsnavigering i stället för en verktygstipsruta. Varje panel har också en snabbtangent, så du aldrig behöver sikta på en symbol på 16 pixlar:

| Snabbtangent | Panel |
| --- | --- |
| `Super + Ctrl + A` | Ljud |
| `Super + Ctrl + N` | Nätverk |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Skärm |
| `Super + Ctrl + P` | Ström |
| `Super + Ctrl + Alt + D` | Kalender |
| `Super + Ctrl + Alt + E` | Världsklocka |
| `Super + Ctrl + X` | Agenter |
| `Super + Ctrl + 1-9` | Växla den n:te panelen i högersektionen |

Panelerna är inga avläsningar. Det är där du faktiskt gör saken:

- **Ljud** har ett huvudvolymreglage, en väljare för utenhet och en mixer per app, så du kan sänka den där enda webbläsarfliken utan att röra allt annat.
- **Nätverk** söker efter Wi-Fi, visar signalstyrka, ansluter och låter dig välja en DNS-leverantör.
- **Bluetooth** listar dina enheter med anslut/koppla från och batterinivåer.
- **Ström** visar batteristatistik, växlar strömprofiler (den minns ett separat val för batteri och AC) och skriver ut lite systeminfo.
- **Skärm** har ett reglage för ljusstyrka, textstorlek, förinställningar för skärmskalning och — när du har mer än en skärm — kontroller per skärm. Se [skärmar](33-monitors.md) för den djupare historien.
- **Klocka** öppnar ett månadsgaller med ISO-veckonummer och stegning mellan månader.
- **Världsklocka** håller en rad per stad, med dess väder och hur dess dag går. Sökningen hittar orter såväl som tidszoner, så Fort Lauderdale är Fort Lauderdale och inte New York. Om raden längst upp namnger fel stad, klicka på den och säg var du är; välj någonstans i en annan tidszon och systemklockan flyttar dit också, vilket är praktiskt när du reser. Håll musen över en stad och klicka på personknappen för att säga vem som bor där — vanliga namn, eller `@` GitHub-handtag för att ta med deras ansikten.

Varje panel tar tangentbordet såväl som musen: pilar flyttar, Return aktiverar, Tab går till panelen bredvid och Escape stänger.

`Super + Ctrl + 1-9` räknar paneler från vänster till höger i högersektionen och hoppar över brickan eftersom den inte har någon egen panel. Så siffran matchar ikonen du skulle peka på.

### Tailscale och Dropbox

Ytterligare två widgetar dyker upp på listen först när du installerar matchande tjänst från **Installera → Tjänst**, och båda är värda att känna till eftersom de gör mer än att rapportera status.

**Tailscale**-panelen ansluter till och kopplar från tailnet, växlar mellan konton och väljer en exit-nod (både dina egna maskiner och Mullvad-regioner dyker upp i den listan). Den bläddrar också bland dina maskiner — och med en vald, `s` skickar filer till den över Taildrop, vilket är det snabbaste sättet att flytta en fil till din telefon eller en annan laptop. `c` kopierar maskinens IP, `n` dess namn och `d` dess fullständiga DNS-namn. Det finns också en skicka-knapp på varje maskinrad, om du hellre klickar. Samma sak från terminalen är `omarchy tailscale send <machine> [file...]`.

**Dropbox**-panelen hanterar inloggning, visar hur mycket lagring du har använt och listar nyligen synkade filer.

Tar du bort någon av tjänsterna tas dess widget bort från listen igen.

## Indikatorer

Den lilla klungan i mitten är indikatorwidgeten. Det här är statussymboler för lägen du har slagit på: stör ej, nattljus, en köad [påminnelse](09-reminders.md), en aktiv skärminspelning och håll dig vaken, plus varningar medan lösenordslös sudo är på eller någon är ansluten till en fjärrsession. De lyser upp när läget är aktivt och håller sig annars ur vägen — håll musen precis bredvid dem, där de inaktiva skulle sitta, för att tjuvkika på dem. Klickar du på en indikator växlas det läget. Ytterligare en är bara status: en fjärrsession lyser rött medan någon är ansluten till den här maskinen via gliff.

Om du hellre vill att de alltid ska synas, ställ in `alwaysShow` till `true` på widgeten. Och om du bara bryr dig om några av dem, lista dem du vill ha i `items`: `["Dnd", "Reminder", "NightLight"]`. Du kan ha mer än en indikatorwidget, så olika sektioner kan visa olika delmängder.

## Ordna om listen

Listen konfigurerar sig själv. Du behöver inte öppna en konfigurationsfil för att flytta saker.

Ta tag i ett tomt område på listen runt mitten och dra det mot en annan skärmkant, så flyttar listen dit — vänster, höger, överst eller underst fungerar alla, och varje widget anpassar sig (vertikala lister faller tillbaka till kompakta former med bara ikoner). Klicka-och-håll startar samma dragning. Dubbelvänsterklicka på samma tomma yta för att växla listbakgrunden från klar till glasig till ogenomskinlig. Och dra vilken widget som helst för att ordna om den eller kasta den i en annan sektion; de andra widgetarna glider isär för att göra rum där den kommer att landa.

Listens mitt är en låda: vad som än finns i den stannar centrerat som en grupp, och widgetarna på vardera sidan om den hänger på dess kanter. Medan du drar en widget visas lådan som en kontur, eller en linje tvärs över listen när den är tom, och du kan släppa in i den eller bredvid den. När ett släpp skulle landa i lådan växer lådan för att ta in widgeten.

En widget du vill ha runt men inte alltid i synfältet kan gå i brickans låda: dra den till brickan, så öppnas lådan för att ta den. Den sitter där efter appikonerna, dyker upp när lådan gör det och håller sin låda öppen medan dess panel är uppe. Dra den tillbaka ut på listen för att sätta tillbaka den.

Om du hellre vill välja från en meny har **Utseende → Menyrad** positionen, och **Listbakgrund** väljer hur listen ritas: **Ogenomskinlig list**, **Glasig list** (genomskinlig, med det som ligger bakom suddigt) eller **Klar list**.

Samma saker har kommandon, vilket är vad du vill för en [dotfiles](31-dotfiles.md)-setup:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

För att lägga till eller ta bort en widget helt, använd pluginkommandona. `omarchy plugin list` skriver ut varje widget skalet känner till med dess id, och sedan:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Dölja listen

`Super + Shift + Space` växlar listen av och tillbaka på utan att döda skalet — paneler och snabbtangenter fortsätter fungera, du får bara tillbaka pixlarna. Den finns också i menyn under **Utseende → Menyrad → Dölj list**.

## Konfigurationsfilen

Allt lagras i `~/.config/omarchy/shell.json`, under nyckeln `bar`. Här är en trimmad version:

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

Varje widget är en post i en av de fem layoutarrayerna, och dess inställningar sitter inline på den posten — det finns ingen separat inställningsfil och inget `config`-underobjekt. Klockans `format`, `formatAlt` (vad högerklick växlar till) och `verticalFormat` bor alla precis där på `{ "id": "omarchy.clock" }`.

`center` är lådan i listens mitt: allt i den centreras på skärmen som en grupp. `centerBegin` och `centerEnd` hänger på vardera sidan om lådan, vilket är hur klockan stannar exakt i mitten även när vädret och uppdateringsmärket kommer och går. Lägg mer än en widget i `center` och de centreras tillsammans; lämna den tom och `centerBegin` och `centerEnd` möts i listens mitt.

En regel värd att internalisera: **när du väl har din egen `shell.json` är den kanonisk**. Tills du anpassar någonting läser skalet Omarchys standardfil. I samma ögonblick som du drar en widget, kör `omarchy bar` eller redigerar filen själv, äger du den — det finns ingen djup sammanslagning, så nya standardwidgetar i framtida Omarchy-släpp dyker inte upp på din list automatiskt. `omarchy bar defaults` lägger tillbaka den levererade layouten när du vill ha ett rent blad.

Samma fil håller också dina idle-tider på toppnivån, utanför nyckeln `bar`: `idle.screensaver` och `idle.lock`, båda i sekunder sedan du blev idle. Så standardskärmsläckaren går igång vid 150 sekunder och låset vid 300.
