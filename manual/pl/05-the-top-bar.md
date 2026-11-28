# Górny pasek

Pasek wzdłuż górnej krawędzi ekranu to pasek Omarchy. Nie jest doczepianym paskiem stanu, lecz częścią powłoki Omarchy — tego jednego, długotrwającego procesu Quickshell, który rysuje też menu, powiadomienia, wyskakujące okienka OSD i ekran blokady. Dlatego idealnie współgra motywem ze wszystkim innym i dlatego panel otwiera się natychmiast, zamiast uruchamiać nową aplikację.

To też jedyny element pulpitu, który zawsze jest na ekranie, więc warto wiedzieć, co robią wszystkie te małe glify.

## Co jest na nim domyślnie

Pasek ma trzy sekcje. Po lewej stronie znajduje się logo Omarchy (program uruchamiający menu) oraz wskaźniki przestrzeni roboczych. Na środku masz wskaźniki stanu, zegar, Elsewhen (zegar światowy), pogodę oraz plakietkę aktualizacji Omarchy. Po prawej: zasobnik systemowy, układ klawiatury (gdy skonfigurowano więcej niż jeden układ lub metodę wprowadzania), agentów, bluetooth, sieć, dźwięk, wyświetlacz i zasilanie.

Kilka z nich pojawia się tylko wtedy, gdy ma coś do powiedzenia. Układ klawiatury pojawia się tylko wtedy, gdy skonfigurowano więcej niż jeden układ lub metodę wprowadzania. Plakietka aktualizacji pojawia się tylko wtedy, gdy czeka aktualizacja Omarchy.

## Klikanie

Prawie każdy widget coś robi po kliknięciu lewym, prawym i środkowym przyciskiem, a kilka reaguje na przewijanie. To jest ta część, którą ludzie pomijają — pod prawym i środkowym przyciskiem kryje się wiele dobrego.

| Widget | Lewy | Prawy | Środkowy / przewijanie |
| --- | --- | --- | --- |
| Menu | Menu Omarchy | Nowy terminal | — |
| Przestrzenie robocze | Skup tę przestrzeń roboczą na tym monitorze | — | Przewijanie: następna/poprzednia przestrzeń robocza |
| Zegar | Wyskakujące okienko kalendarza | Przełączaj format etykiety | Środkowy: wybór strefy czasowej |
| Zegar światowy | Panel zegara światowego | Odśwież | Środkowy: odśwież |
| Pogoda | Wyskakujące okienko prognozy | Pełna pogoda jako powiadomienie | Środkowy: odśwież |
| Dźwięk | Panel dźwięku | Wycisz | Środkowy: panel · przewijanie: głośność |
| Mikrofon | Wycisz mikrofon | — | Środkowy: panel dźwięku · przewijanie: głośność wejścia |
| Sieć | Panel sieci | — | — |
| Bluetooth | Panel Bluetooth | Przełącz radio | — |
| Wyświetlacz | Panel wyświetlacza | — | Przewijanie: jasność |
| Zasilanie | Panel zasilania | Przełącz procent baterii | — |
| Media | Odtwarzaj/wstrzymaj | Wyskakujące okienko okładki | Środkowy: następny · przewijanie: poprzedni/następny |
| Agenci | Panel agentów | Uruchom swojego agenta | Środkowy: odśwież zużycie |
| Zasobnik | Najedź, aby odsłonić szufladę | Kliknij prawym przyciskiem na strzałce, aby zarządzać | — |
| Aktualizacja Omarchy | Uruchom aktualizację | — | — |

Nie wszystko z tej tabeli jest na Twoim pasku od razu po instalacji. Widget multimediów (aktualnie odtwarzane MPRIS, z przewijającym się utworem i wykonawcą) oraz widget mikrofonu są wbudowane, ale domyślnie wyłączone — dodaj je, jeśli ich chcesz, tak jak opisano poniżej.

## Panele

Kliknięcie ikony na pasku otwiera panel, czyli porządne wyskakujące okienko z suwakami, listami i nawigacją z klawiatury, a nie podpowiedź. Każdy ma też skrót klawiszowy, więc nigdy nie musisz celować w 16-pikselowy glif:

| Skrót klawiszowy | Panel |
| --- | --- |
| `Super + Ctrl + A` | Dźwięk |
| `Super + Ctrl + N` | Sieć |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Wyświetlacz |
| `Super + Ctrl + P` | Zasilanie |
| `Super + Ctrl + Alt + D` | Kalendarz |
| `Super + Ctrl + Alt + E` | Zegar światowy |
| `Super + Ctrl + X` | Agenci |
| `Super + Ctrl + 1-9` | Przełącz n-ty panel w prawej sekcji |

Panele nie są tylko odczytami. To w nich naprawdę robisz daną rzecz:

- **Dźwięk** ma główny suwak głośności, wybór urządzenia wyjściowego i mikser dla poszczególnych aplikacji, więc możesz ściszyć tę jedną kartę przeglądarki, nie dotykając wszystkiego innego.
- **Sieć** skanuje w poszukiwaniu Wi-Fi, pokazuje siłę sygnału, łączy i pozwala wybrać dostawcę DNS.
- **Bluetooth** wyświetla listę Twoich urządzeń wraz z łączeniem/rozłączaniem i poziomami baterii.
- **Zasilanie** pokazuje statystyki baterii, przełącza profile zasilania (zapamiętuje osobny wybór dla baterii i zasilania sieciowego) i wyświetla trochę informacji o systemie.
- **Wyświetlacz** ma suwak jasności, rozmiar tekstu, gotowe ustawienia skalowania monitora oraz — gdy masz więcej niż jeden ekran — elementy sterowania dla poszczególnych monitorów. Zobacz [monitory](33-monitors.md), aby poznać głębszą historię.
- **Zegar** otwiera siatkę miesiąca z numerami tygodni ISO i przechodzeniem między miesiącami.
- **Zegar światowy** przechowuje wiersz dla każdego miasta, wraz z jego pogodą i tym, jak mija mu dzień. Wyszukiwanie znajduje miejscowości, a także strefy czasowe, więc Fort Lauderdale to Fort Lauderdale, a nie New York. Jeśli wiersz na górze podaje niewłaściwe miasto, kliknij go i powiedz, gdzie jesteś; wybierz miejsce w innej strefie czasowej, a zegar systemowy też się tam przeniesie, co jest przydatne w podróży. Najedź na miasto i kliknij przycisk osoby, aby powiedzieć, kto tam mieszka — zwykłe imiona lub nazwy użytkownika GitHub poprzedzone `@`, aby dołączyć ich twarze.

Każdy panel obsługuje klawiaturę równie dobrze jak mysz: strzałki przesuwają, Return aktywuje, Tab przechodzi do sąsiedniego panelu, a Escape zamyka.

`Super + Ctrl + 1-9` liczy panele od lewej do prawej w prawej sekcji, pomijając zasobnik, ponieważ nie ma on własnego panelu. Liczba odpowiada więc ikonie, na którą byś wskazał.

### Tailscale i Dropbox

Dwa kolejne widgety pojawiają się na pasku dopiero po zainstalowaniu pasującej usługi z **Install → Service** i oba warto znać, ponieważ robią więcej niż tylko zgłaszają stan.

Panel **Tailscale** łączy i rozłącza tailnet, przełącza między kontami i wybiera węzeł wyjściowy (na tej liście pojawiają się zarówno Twoje własne maszyny, jak i regiony Mullvad). Przegląda też Twoje maszyny — a gdy jedna jest wybrana, `s` wysyła do niej pliki przez Taildrop, co jest najszybszym sposobem przeniesienia pliku na telefon lub inny laptop. `c` kopiuje adres IP maszyny, `n` jej nazwę, a `d` jej pełną nazwę DNS. Na każdym wierszu maszyny jest też przycisk wysyłania, jeśli wolisz klikać. To samo z terminala to `omarchy tailscale send <machine> [file...]`.

Panel **Dropbox** obsługuje logowanie, pokazuje, ile miejsca wykorzystałeś, i wyświetla listę ostatnio zsynchronizowanych plików.

Usunięcie którejkolwiek usługi zdejmuje jej widget z powrotem z paska.

## Wskaźniki

Mały klaster na środku to widget wskaźników. Są to glify stanu dla włączonych przez Ciebie trybów: nie przeszkadzać, światło nocne, zakolejkowane [przypomnienie](09-reminders.md), aktywne nagrywanie ekranu i pozostawanie w gotowości, plus ostrzeżenia, gdy włączone jest sudo bez hasła lub ktoś jest połączony z sesją zdalną. Podświetlają się, gdy tryb jest aktywny, a w przeciwnym razie nie przeszkadzają — najedź tuż obok nich, tam gdzie siedziałyby nieaktywne, aby podejrzeć tamte. Kliknięcie wskaźnika przełącza ten tryb. Jeszcze jeden jest tylko od stanu: sesja zdalna świeci się na czerwono, gdy ktoś jest połączony z tą maszyną przez gliff.

Jeśli wolisz, aby były zawsze widoczne, ustaw `alwaysShow` na `true` w widgecie. A jeśli zależy Ci tylko na niektórych z nich, wypisz te, które chcesz, w `items`: `["Dnd", "Reminder", "NightLight"]`. Możesz mieć więcej niż jeden widget wskaźników, więc różne sekcje mogą pokazywać różne podzbiory.

## Przestawianie paska

Pasek konfiguruje się sam. Nie musisz otwierać pliku konfiguracyjnego, aby coś przesunąć.

Chwyć pusty fragment paska wokół środka i przeciągnij go w stronę innej krawędzi ekranu, a pasek tam się przeniesie — działa lewa, prawa, górna i dolna, a każdy widget się dostosowuje (pionowe paski przechodzą na kompaktowe formy tylko z ikonami). Kliknięcie i przytrzymanie rozpoczyna to samo przeciąganie. Kliknij dwukrotnie lewym przyciskiem to samo puste miejsce, aby przełączać tło paska z przezroczystego na szkliste i nieprzezroczyste. I przeciągaj dowolny widget, aby zmienić jego kolejność lub wrzucić go do innej sekcji; pozostałe widgety rozsuną się, aby zrobić miejsce tam, gdzie wyląduje.

Środek paska to pudełko: wszystko, co w nim jest, pozostaje wyśrodkowane jako jedna grupa, a widgety po obu jego stronach zwisają z jego krawędzi. Gdy przeciągasz widget, pudełko pokazuje się jako kontur, albo jako linia w poprzek paska, gdy jest puste, i możesz upuścić do niego lub obok niego. Gdy upuszczenie wylądowałoby w pudełku, pudełko rośnie, aby przyjąć widget.

Widget, który chcesz mieć pod ręką, ale nie zawsze na widoku, może trafić do szuflady zasobnika: przeciągnij go na zasobnik, a szuflada otworzy się, aby go przyjąć. Siedzi tam po ikonach aplikacji, pojawia się zawsze, gdy pojawia się szuflada, i utrzymuje swoją szufladę otwartą, gdy jego panel jest otwarty. Przeciągnij go z powrotem na pasek, aby go tam przywrócić.

Jeśli wolisz wybierać z menu, **Appearance → Menu Bar** ma położenie, a **Bar Background** wybiera, jak pasek jest rysowany: **Opaque Bar**, **Glassy Bar** (przezroczysty, z rozmyciem tego, co jest za nim) lub **Clear Bar**.

Te same rzeczy mają polecenia, a to właśnie chcesz mieć w konfiguracji [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Aby całkowicie dodać lub usunąć widget, użyj poleceń wtyczek. `omarchy plugin list` wypisuje każdy widget znany powłoce wraz z jego id, a potem:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Ukrywanie paska

`Super + Shift + Space` przełącza pasek w stan wyłączony i z powrotem włączony bez zabijania powłoki — panele i skróty klawiszowe nadal działają, po prostu odzyskujesz piksele. Jest to też w menu pod **Appearance → Menu Bar → Hide Bar**.

## Plik konfiguracyjny

Wszystko to jest przechowywane w `~/.config/omarchy/shell.json`, pod kluczem `bar`. Oto przycięta wersja:

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

Każdy widget to jeden wpis w jednej z pięciu tablic układu, a jego ustawienia znajdują się bezpośrednio w tym wpisie — nie ma osobnego pliku ustawień ani podobiektu `config`. `format`, `formatAlt` (to, na co przełącza kliknięcie prawym przyciskiem) i `verticalFormat` zegara znajdują się wszystkie dokładnie tam, w `{ "id": "omarchy.clock" }`.

`center` to pudełko na środku paska: wszystko w nim jest wyśrodkowane na ekranie jako jedna grupa. `centerBegin` i `centerEnd` zwisają z obu stron pudełka, dzięki czemu zegar pozostaje dokładnie na środku, nawet gdy pogoda i plakietka aktualizacji pojawiają się i znikają. Umieść więcej niż jeden widget w `center`, a będą wyśrodkowane razem; zostaw je puste, a `centerBegin` i `centerEnd` spotkają się na środku paska.

Jedna zasada, którą warto sobie przyswoić: **gdy już masz własny `shell.json`, to on jest kanoniczny**. Dopóki niczego nie dostosujesz, powłoka odczytuje domyślny plik Omarchy. W chwili, gdy przeciągniesz widget, uruchomisz `omarchy bar` albo sam edytujesz plik, należy on do Ciebie — nie ma głębokiego scalania, więc nowe domyślne widgety w przyszłych wydaniach Omarchy nie pojawią się automatycznie na Twoim pasku. `omarchy bar defaults` przywraca dostarczony układ, kiedykolwiek chcesz mieć czystą kartę.

Ten sam plik przechowuje też na najwyższym poziomie, poza kluczem `bar`, Twoje czasy bezczynności: `idle.screensaver` i `idle.lock`, oba w sekundach od momentu przejścia w stan bezczynności. Domyślny wygaszacz ekranu włącza się więc po 150 sekundach, a blokada po 300.
