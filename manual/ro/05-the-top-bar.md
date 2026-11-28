# Bara superioară

Fâșia de-a lungul marginii superioare a ecranului este bara Omarchy. Nu este o bară de stare atașată ulterior, ci o parte a shell-ului Omarchy, singurul proces Quickshell cu durată lungă de funcționare care desenează și meniul, notificările, ferestrele popup OSD și ecranul de blocare. De aceea se potrivește perfect ca temă cu toate celelalte și de aceea un panou se deschide instantaneu, în loc să pornească o aplicație nouă.

Este și singura parte a desktopului care este mereu pe ecran, așa că merită să știi ce fac toate acele mici glife.

## Ce se află pe ea în mod implicit

Bara are trei secțiuni. În stânga se află logo-ul Omarchy (lansatorul de meniu) și indicatorii spațiilor de lucru. În centru ai indicatorii de stare, ceasul, Elsewhen (un ceas mondial), vremea și o insignă de actualizare Omarchy. În dreapta: tava de sistem, dispunerea tastaturii (când sunt configurate mai multe dispuneri sau metode de introducere), agenții, bluetooth, rețeaua, sunetul, afișajul și alimentarea.

Unele dintre ele apar doar când au ceva de spus. Dispunerea tastaturii apare doar dacă ai configurat mai multe dispuneri sau metode de introducere. Insigna de actualizare apare doar când te așteaptă o actualizare Omarchy.

## Explorarea cu clicuri

Aproape fiecare widget face ceva la clic stânga, dreapta și mijloc, iar mai multe răspund la derulare. Aceasta este partea pe care oamenii o ratează — butoanele din dreapta și din mijloc sunt cele unde se ascunde o mare parte din lucrurile bune.

| Widget | Stânga | Dreapta | Mijloc / derulare |
| --- | --- | --- | --- |
| Meniu | Meniul Omarchy | Terminal nou | — |
| Spații de lucru | Comută la acel spațiu de lucru pe acest monitor | — | Derulare: spațiul de lucru următor/anterior |
| Ceas | Fereastră popup cu calendar | Schimbă ciclic formatul etichetei | Mijloc: selector de fus orar |
| Ceas mondial | Panoul ceasului mondial | Reîmprospătează | Mijloc: reîmprospătează |
| Vreme | Fereastră popup cu prognoza | Vremea completă ca notificare | Mijloc: reîmprospătează |
| Audio | Panoul audio | Mut | Mijloc: panou · derulare: volum |
| Microfon | Pune microfonul pe mut | — | Mijloc: panoul audio · derulare: volumul de intrare |
| Rețea | Panoul de rețea | — | — |
| Bluetooth | Panoul Bluetooth | Comută radioul | — |
| Afișaj | Panoul de afișaj | — | Derulare: luminozitate |
| Alimentare | Panoul de alimentare | Comută afișarea procentului bateriei | — |
| Media | Redare/pauză | Fereastră popup cu coperta | Mijloc: următorul · derulare: anterior/următor |
| Agenți | Panoul agenților | Lansează agentul tău | Mijloc: reîmprospătează utilizarea |
| Tavă | Trece cu mouse-ul pentru a dezvălui sertarul | Clic dreapta pe chevron pentru gestionare | — |
| Actualizare Omarchy | Rulează actualizarea | — | — |

Nu tot ce este în acel tabel se află pe bara ta din prima. Widgetul media (MPRIS cu redarea curentă, cu o piesă și un artist care derulează) și widgetul de microfon sunt ambele integrate, dar dezactivate în mod implicit — adaugă-le dacă le vrei, așa cum este descris mai jos.

## Panourile

Clicul pe o pictogramă din bară deschide un panou, care este o fereastră popup adevărată, cu glisoare, liste și navigare de la tastatură, nu un tooltip. Fiecare are și o tastă rapidă, așa că nu trebuie niciodată să țintești o glifă de 16 pixeli:

| Tastă rapidă | Panou |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Rețea |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Afișaj |
| `Super + Ctrl + P` | Alimentare |
| `Super + Ctrl + Alt + D` | Calendar |
| `Super + Ctrl + Alt + E` | Ceas mondial |
| `Super + Ctrl + X` | Agenți |
| `Super + Ctrl + 1-9` | Comută al n-lea panou din secțiunea din dreapta |

Panourile nu sunt simple afișaje. În ele faci efectiv lucrul respectiv:

- **Audio** are un glisor pentru volumul principal, un selector al dispozitivului de ieșire și un mixer per aplicație, așa că poți da mai încet acea singură filă de browser fără să atingi tot restul.
- **Rețea** scanează după Wi-Fi, arată puterea semnalului, se conectează și te lasă să alegi un furnizor DNS.
- **Bluetooth** îți listează dispozitivele, cu conectare/deconectare și niveluri ale bateriei.
- **Alimentare** arată statistici despre baterie, schimbă profilurile de alimentare (reține o alegere separată pentru baterie și pentru AC) și afișează câteva informații despre sistem.
- **Afișaj** are un glisor de luminozitate, dimensiunea textului, presetări de scalare a monitorului și — când ai mai multe ecrane — comenzi per monitor. Vezi [monitoare](33-monitors.md) pentru povestea mai detaliată.
- **Ceas** deschide o grilă lunară cu numere de săptămâni ISO și navigare între luni.
- **Ceas mondial** păstrează câte un rând per oraș, cu vremea lui și cum decurge ziua lui. Căutarea găsește localități, precum și fusuri orare, așa că Fort Lauderdale este Fort Lauderdale și nu New York. Dacă rândul de sus numește orașul greșit, fă clic pe el și spune unde ești; alege un loc de pe alt fus orar și ceasul sistemului se mută și el acolo, ceea ce este util când călătorești. Trece cu mouse-ul peste un oraș și fă clic pe butonul cu persoană pentru a spune cine locuiește acolo — nume simple sau identificatori GitHub cu `@` pentru a le aduce și fețele.

Fiecare panou acceptă tastatura, precum și mouse-ul: săgețile mută, Return activează, Tab trece la panoul vecin, iar Escape închide.

`Super + Ctrl + 1-9` numără panourile de la stânga la dreapta în secțiunea din dreapta, sărind peste tavă, deoarece aceasta nu are un panou propriu. Așa că numărul corespunde pictogramei spre care ai arăta.

### Tailscale și Dropbox

Două widgeturi suplimentare apar pe bară doar după ce instalezi serviciul corespunzător din **Instalare → Serviciu** și ambele merită cunoscute, pentru că fac mai mult decât să raporteze starea.

Panoul **Tailscale** conectează și deconectează tailnet-ul, comută între conturi și alege un nod de ieșire (atât mașinile tale, cât și regiunile Mullvad apar în acea listă). De asemenea, îți răsfoiește mașinile — iar cu una selectată, `s` trimite fișiere către ea prin Taildrop, ceea ce este cel mai rapid mod de a muta un fișier pe telefon sau pe alt laptop. `c` copiază IP-ul mașinii, `n` numele ei, iar `d` numele ei DNS complet. Pe fiecare rând de mașină există și un buton de trimitere, dacă preferi să faci clic. Același lucru din terminal este `omarchy tailscale send <machine> [file...]`.

Panoul **Dropbox** se ocupă de autentificare, arată cât spațiu de stocare ai folosit și listează fișierele sincronizate recent.

Eliminarea oricăruia dintre servicii îi scoate din nou widgetul de pe bară.

## Indicatori

Micul grup din centru este widgetul de indicatori. Acestea sunt glife de stare pentru modurile pe care le-ai activat: nu deranja, lumină de noapte, un [memento](09-reminders.md) aflat în coadă, o înregistrare activă a ecranului și rămâi treaz, plus avertismente cât timp sudo fără parolă este activ sau cineva este conectat la o sesiune la distanță. Se aprind când modul este activ și, în rest, stau deoparte — trece cu mouse-ul chiar lângă ele, acolo unde ar sta cele inactive, pentru a le zări pe acelea. Clicul pe un indicator comută acel mod. Încă unul este doar de stare: o sesiune la distanță se aprinde în roșu cât timp cineva este conectat la această mașină prin gliff.

Dacă preferi ca ele să fie mereu vizibile, setează `alwaysShow` la `true` pe widget. Iar dacă te interesează doar unele dintre ele, listează-le pe cele dorite în `items`: `["Dnd", "Reminder", "NightLight"]`. Poți avea mai multe widgeturi de indicatori, așa că secțiuni diferite pot afișa subseturi diferite.

## Rearanjarea barei

Bara se configurează singură. Nu trebuie să deschizi un fișier de configurare pentru a muta lucrurile.

Prinde o porțiune goală a barei din jurul centrului și trage-o spre altă margine a ecranului, iar bara se mută acolo — stânga, dreapta, sus sau jos funcționează toate, iar fiecare widget se adaptează (barele verticale revin la forme compacte, doar cu pictograme). Un clic menținut pornește aceeași tragere. Fă dublu clic stânga pe același spațiu gol pentru a schimba ciclic fundalul barei de la transparent la sticlos la opac. Și trage orice widget pentru a-l reordona sau a-l arunca în altă secțiune; celelalte widgeturi se dau la o parte pentru a face loc acolo unde va ajunge.

Mijlocul barei este o casetă: tot ce se află în ea rămâne centrat ca un singur grup, iar widgeturile de o parte și de alta a ei atârnă de marginile ei. În timp ce tragi un widget, caseta apare ca un contur sau ca o linie de-a lungul barei când este goală, și poți să-l lași în ea sau lângă ea. Când o plasare ar ajunge în casetă, caseta crește pentru a primi widgetul.

Un widget pe care îl vrei prin preajmă, dar nu mereu la vedere, poate merge în sertarul tăvii: trage-l pe tavă, iar sertarul se deschide pentru a-l primi. Stă acolo după pictogramele aplicațiilor, apare ori de câte ori apare sertarul și își ține sertarul deschis cât timp panoul lui este deschis. Trage-l înapoi pe bară pentru a-l pune la loc.

Dacă preferi să alegi dintr-un meniu, **Aspect → Bară de meniu** are poziția, iar **Fundalul barei** alege cum este desenată bara: **Bară opacă**, **Bară sticloasă** (transparentă, cu ceea ce se află în spatele ei estompat) sau **Bară transparentă**.

Aceleași lucruri au comenzi, ceea ce îți trebuie pentru o configurare cu [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Pentru a adăuga sau elimina complet un widget, folosește comenzile pentru pluginuri. `omarchy plugin list` afișează fiecare widget pe care shell-ul îl cunoaște, împreună cu id-ul lui, și apoi:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Ascunderea barei

`Super + Shift + Space` ascunde bara și o readuce fără să oprească shell-ul — panourile și tastele rapide continuă să funcționeze, doar că recuperezi pixelii. Se află și în meniu, la **Aspect → Bară de meniu → Ascunde bara**.

## Fișierul de configurare

Totul este stocat în `~/.config/omarchy/shell.json`, sub cheia `bar`. Iată o versiune prescurtată:

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

Fiecare widget este o singură intrare într-una dintre cele cinci liste de dispunere, iar setările lui stau în linie, pe acea intrare — nu există un fișier de setări separat și niciun subobiect `config`. `format`, `formatAlt` (la care trece clicul dreapta, ciclic) și `verticalFormat` ale ceasului trăiesc toate chiar acolo, pe `{ "id": "omarchy.clock" }`.

`center` este caseta din mijlocul barei: tot ce se află în ea este centrat pe ecran ca un singur grup. `centerBegin` și `centerEnd` atârnă de o parte și de alta a casetei, și așa rămâne ceasul exact în centru, chiar și atunci când vremea și insigna de actualizare vin și pleacă. Pune mai multe widgeturi în `center` și ele sunt centrate împreună; lasă-l gol și `centerBegin` și `centerEnd` se întâlnesc la mijlocul barei.

O regulă care merită interiorizată: **odată ce ai propriul tău `shell.json`, el este canonic**. Până când nu personalizezi nimic, shell-ul citește fișierul implicit al Omarchy. În momentul în care tragi un widget, rulezi `omarchy bar` sau editezi singur fișierul, el îți aparține — nu există nicio îmbinare profundă, așa că widgeturile implicite noi din versiunile viitoare Omarchy nu vor apărea automat pe bara ta. `omarchy bar defaults` pune la loc dispunerea livrată oricând vrei un început curat.

Același fișier conține și timpii tăi de inactivitate la nivelul superior, în afara cheii `bar`: `idle.screensaver` și `idle.lock`, ambele în secunde de când ai devenit inactiv. Așadar, screensaver-ul implicit pornește la 150 de secunde, iar blocarea la 300.
