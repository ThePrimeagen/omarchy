# La barra superiore

La striscia lungo il bordo superiore dello schermo è la barra di Omarchy. Non è una barra di stato aggiunta alla bell'e meglio, ma parte della shell di Omarchy, l'unico processo Quickshell di lunga durata che disegna anche il menu, le notifiche, i popup OSD e la schermata di blocco. Ecco perché si abbina perfettamente a tutto il resto e perché un pannello si apre all'istante invece di avviare una nuova app.

È anche l'unico elemento del desktop sempre presente sullo schermo, quindi vale la pena sapere cosa fanno tutti quei piccoli glifi.

## Cosa contiene per impostazione predefinita

La barra ha tre sezioni. A sinistra si trovano il logo di Omarchy (l'avviatore del menu) e gli indicatori degli spazi di lavoro. Al centro trovi gli indicatori di stato, l'orologio, Elsewhen (un orologio mondiale), il meteo e un badge di aggiornamento di Omarchy. A destra: l'area di notifica, il layout di tastiera (quando è configurato più di un layout o metodo di input), gli agenti, il bluetooth, la rete, l'audio, lo schermo e l'alimentazione.

Alcuni di questi compaiono solo quando hanno qualcosa da dire. Il layout di tastiera compare solo se hai configurato più di un layout o metodo di input. Il badge di aggiornamento compare solo quando c'è un aggiornamento di Omarchy in attesa.

## Fare clic in giro

Quasi ogni widget fa qualcosa con il clic sinistro, destro e centrale, e diversi rispondono allo scorrimento. È la parte che sfugge alla gente — è nei pulsanti destro e centrale che si nasconde gran parte delle cose buone.

| Widget | Sinistro | Destro | Centrale / scorrimento |
| --- | --- | --- | --- |
| Menu | Menu di Omarchy | Nuovo terminale | — |
| Spazi di lavoro | Metti a fuoco quello spazio di lavoro su questo monitor | — | Scorrimento: spazio di lavoro successivo/precedente |
| Orologio | Popup del calendario | Passa da un formato dell'etichetta all'altro | Centrale: selettore del fuso orario |
| Orologio mondiale | Pannello dell'orologio mondiale | Aggiorna | Centrale: aggiorna |
| Meteo | Popup delle previsioni | Meteo completo come notifica | Centrale: aggiorna |
| Audio | Pannello audio | Silenzia | Centrale: pannello · scorrimento: volume |
| Microfono | Silenzia il microfono | — | Centrale: pannello audio · scorrimento: volume in ingresso |
| Rete | Pannello di rete | — | — |
| Bluetooth | Pannello Bluetooth | Attiva/disattiva la radio | — |
| Schermo | Pannello dello schermo | — | Scorrimento: luminosità |
| Alimentazione | Pannello di alimentazione | Attiva/disattiva la percentuale della batteria | — |
| Media | Riproduci/pausa | Popup della copertina | Centrale: successivo · scorrimento: precedente/successivo |
| Agenti | Pannello degli agenti | Avvia il tuo agente | Centrale: aggiorna l'utilizzo |
| Area di notifica | Passa il mouse per mostrare il cassetto | Clic destro sulla freccia per gestire | — |
| Aggiornamento di Omarchy | Esegui l'aggiornamento | — | — |

Non tutto ciò che vedi in quella tabella è presente sulla tua barra fin dall'inizio. Il widget media (MPRIS con brano in riproduzione, con titolo e artista a scorrimento) e il widget del microfono sono entrambi integrati ma disattivati per impostazione predefinita — aggiungili se li vuoi, come descritto sotto.

## I pannelli

Facendo clic su un'icona della barra si apre un pannello, che è un vero popup con cursori, elenchi e navigazione da tastiera invece di un semplice suggerimento. Ognuno ha anche un tasto di scelta rapida, così non devi mai prendere la mira su un glifo di 16 pixel:

| Tasto di scelta rapida | Pannello |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Rete |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Schermo |
| `Super + Ctrl + P` | Alimentazione |
| `Super + Ctrl + Alt + D` | Calendario |
| `Super + Ctrl + Alt + E` | Orologio mondiale |
| `Super + Ctrl + X` | Agenti |
| `Super + Ctrl + 1-9` | Attiva/disattiva l'ennesimo pannello nella sezione destra |

I pannelli non sono semplici indicatori. Sono il punto in cui fai davvero la cosa:

- **Audio** ha un cursore per il volume principale, un selettore del dispositivo di uscita e un mixer per app, così puoi abbassare quella singola scheda del browser senza toccare tutto il resto.
- **Rete** cerca le reti Wi-Fi, mostra la potenza del segnale, si connette e ti permette di scegliere un provider DNS.
- **Bluetooth** elenca i tuoi dispositivi con connessione/disconnessione e livelli della batteria.
- **Alimentazione** mostra le statistiche della batteria, cambia i profili di alimentazione (ricorda una scelta separata per batteria e AC) e stampa alcune informazioni di sistema.
- **Schermo** include un cursore per la luminosità, la dimensione del testo, preset per il ridimensionamento dei monitor e — quando hai più di uno schermo — controlli per singolo monitor. Vedi [monitor](33-monitors.md) per approfondire.
- **Orologio** apre una griglia mensile con i numeri delle settimane ISO e la navigazione tra i mesi.
- **Orologio mondiale** mantiene una riga per città, con il suo meteo e come sta andando la sua giornata. La ricerca trova anche le località oltre ai fusi orari, quindi Fort Lauderdale è Fort Lauderdale e non New York. Se la riga in alto indica la città sbagliata, fai clic su di essa e dì dove ti trovi; scegli un luogo in un altro fuso orario e anche l'orologio di sistema si sposterà lì, il che è comodo quando viaggi. Passa il mouse su una città e fai clic sul pulsante con la persona per dire chi vive lì — nomi semplici, oppure handle GitHub con `@` per portare con sé anche i loro volti.

Ogni pannello accetta sia la tastiera sia il mouse: le frecce si spostano, Return attiva, Tab passa al pannello adiacente ed Escape chiude.

`Super + Ctrl + 1-9` conta i pannelli da sinistra a destra nella sezione destra, saltando l'area di notifica perché non ha un pannello proprio. Così il numero corrisponde all'icona che indicheresti.

### Tailscale e Dropbox

Altri due widget compaiono sulla barra solo dopo aver installato il servizio corrispondente da **Installa → Servizio**, ed entrambi meritano di essere conosciuti perché fanno più che segnalare uno stato.

Il pannello **Tailscale** connette e disconnette la tailnet, passa da un account all'altro e sceglie un nodo di uscita (nell'elenco compaiono sia le tue macchine sia le regioni Mullvad). Sfoglia anche le tue macchine — e, con una selezionata, `s` le invia file tramite Taildrop, che è il modo più veloce per spostare un file sul tuo telefono o su un altro portatile. `c` copia l'IP della macchina, `n` il suo nome e `d` il suo nome DNS completo. Su ogni riga della macchina c'è anche un pulsante di invio, se preferisci fare clic. La stessa cosa dal terminale è `omarchy tailscale send <machine> [file...]`.

Il pannello **Dropbox** gestisce l'accesso, mostra quanto spazio di archiviazione hai usato ed elenca i file sincronizzati di recente.

La rimozione di uno dei due servizi toglie di nuovo il suo widget dalla barra.

## Indicatori

Il piccolo gruppo al centro è il widget degli indicatori. Sono glifi di stato per le modalità che hai attivato: non disturbare, luce notturna, un [promemoria](09-reminders.md) in coda, una registrazione dello schermo attiva e restare sveglio, oltre ad avvisi mentre sudo senza password è attivo o qualcuno è connesso a una sessione remota. Si illuminano quando la modalità è attiva e altrimenti restano in disparte — passa il mouse proprio accanto a essi, dove si troverebbero quelli inattivi, per dare un'occhiata a questi ultimi. Facendo clic su un indicatore si attiva o disattiva quella modalità. Ce n'è uno in più di solo stato: una sessione remota si illumina di rosso mentre qualcuno è connesso a questa macchina tramite gliff.

Se preferisci che siano sempre visibili, imposta `alwaysShow` su `true` sul widget. E se ti interessano solo alcuni di essi, elenca quelli che vuoi in `items`: `["Dnd", "Reminder", "NightLight"]`. Puoi avere più di un widget degli indicatori, così sezioni diverse possono mostrare sottoinsiemi diversi.

## Riorganizzare la barra

La barra si configura da sola. Non devi aprire un file di configurazione per spostare le cose.

Afferra un tratto vuoto della barra intorno al centro e trascinalo verso un altro bordo dello schermo, e la barra si sposterà lì — sinistra, destra, alto o basso funzionano tutti, e ogni widget si adatta (le barre verticali ripiegano su forme compatte con sole icone). Un clic prolungato avvia lo stesso trascinamento. Fai doppio clic sinistro su quello stesso spazio vuoto per far passare lo sfondo della barra da trasparente a vetroso a opaco. E trascina qualsiasi widget per riordinarlo o lanciarlo in un'altra sezione; gli altri widget si scostano per fare spazio nel punto in cui atterrerà.

Il centro della barra è un riquadro: tutto ciò che contiene resta centrato come un unico gruppo, e i widget ai suoi lati pendono dai suoi bordi. Mentre trascini un widget, il riquadro appare come un contorno, o come una linea attraverso la barra quando è vuoto, e puoi rilasciare dentro di esso o accanto a esso. Quando un rilascio atterrerebbe nel riquadro, il riquadro si allarga per accogliere il widget.

Un widget che vuoi tenere a portata di mano ma non sempre in vista può andare nel cassetto dell'area di notifica: trascinalo sull'area di notifica e il cassetto si aprirà per accoglierlo. Resta lì dopo le icone delle app, compare ogni volta che compare il cassetto e mantiene il suo cassetto aperto mentre il suo pannello è visibile. Trascinalo di nuovo sulla barra per rimetterlo al suo posto.

Se preferisci scegliere da un menu, **Aspetto → Barra dei menu** ha la posizione, e **Sfondo della barra** sceglie come viene disegnata la barra: **Barra opaca**, **Barra vetrosa** (trasparente, con ciò che sta dietro sfocato) o **Barra trasparente**.

Le stesse cose hanno comandi, che è ciò che vuoi per una configurazione con [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Per aggiungere o rimuovere completamente un widget, usa i comandi dei plugin. `omarchy plugin list` stampa ogni widget conosciuto dalla shell con il suo id, e poi:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Nascondere la barra

`Super + Shift + Space` attiva e disattiva la barra senza terminare la shell — pannelli e tasti di scelta rapida continuano a funzionare, recuperi solo i pixel. Si trova anche nel menu sotto **Aspetto → Barra dei menu → Nascondi barra**.

## Il file di configurazione

Tutto è memorizzato in `~/.config/omarchy/shell.json`, sotto la chiave `bar`. Ecco una versione ridotta:

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

Ogni widget è una voce in uno dei cinque array del layout, e le sue impostazioni si trovano inline su quella voce — non c'è un file di impostazioni separato né un sotto-oggetto `config`. `format`, `formatAlt` (ciò a cui passa il clic destro) e `verticalFormat` dell'orologio vivono tutti lì su `{ "id": "omarchy.clock" }`.

`center` è il riquadro al centro della barra: tutto ciò che contiene è centrato sullo schermo come un unico gruppo. `centerBegin` e `centerEnd` pendono dai due lati del riquadro, ed è così che l'orologio resta perfettamente al centro anche mentre meteo e badge di aggiornamento vanno e vengono. Metti più di un widget in `center` e saranno centrati insieme; lascialo vuoto e `centerBegin` e `centerEnd` si incontrano al centro della barra.

Una regola che vale la pena interiorizzare: **una volta che hai il tuo `shell.json`, è canonico**. Finché non personalizzi nulla, la shell legge il file predefinito di Omarchy. Nel momento in cui trascini un widget, esegui `omarchy bar` o modifichi il file tu stesso, diventa tuo — non c'è alcuna fusione profonda, quindi i nuovi widget predefiniti nelle future versioni di Omarchy non compariranno automaticamente sulla tua barra. `omarchy bar defaults` ripristina il layout fornito ogni volta che vuoi ripartire da zero.

Lo stesso file contiene anche le tue temporizzazioni di inattività al livello superiore, fuori dalla chiave `bar`: `idle.screensaver` e `idle.lock`, entrambi in secondi da quando sei diventato inattivo. Quindi lo screensaver predefinito si attiva a 150 secondi e il blocco a 300.
