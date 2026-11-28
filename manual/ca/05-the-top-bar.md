# La barra superior

La franja de la part superior de la pantalla és la barra d'Omarchy. No és una barra d'estat acoblada a posteriori, sinó part de la shell d'Omarchy, l'únic procés de Quickshell de llarga durada que també dibuixa el menú, les notificacions, les finestres emergents OSD i la pantalla de bloqueig. Per això el seu tema combina perfectament amb tota la resta i per això un panell s'obre a l'instant en lloc de generar una aplicació nova.

També és l'única peça de l'escriptori que sempre és a la pantalla, així que val la pena saber què fan tots aquests glifs petits.

## Què hi ha per defecte

La barra té tres seccions. A l'esquerra hi ha el logotip d'Omarchy (el llançador del menú) i els indicadors d'espais de treball. Al centre tens els indicadors d'estat, el rellotge, Elsewhen (un rellotge mundial), el temps i una insígnia d'actualització d'Omarchy. A la dreta: la safata del sistema, la disposició del teclat (quan hi ha configurada més d'una disposició o mètode d'entrada), els agents, Bluetooth, la xarxa, l'àudio, la pantalla i l'energia.

Alguns d'aquests només apareixen quan tenen alguna cosa a dir. La disposició del teclat només apareix si has configurat més d'una disposició o mètode d'entrada. La insígnia d'actualització només apareix quan hi ha una actualització d'Omarchy esperant.

## Fer clic per la barra

Gairebé tots els ginys fan alguna cosa amb el clic esquerre, el dret i el del mig, i diversos responen al desplaçament. Aquesta és la part que la gent passa per alt: els botons dret i del mig són on s'amaga bona part del que és bo.

| Giny | Clic esquerre | Clic dret | Clic del mig / desplaçament |
| --- | --- | --- | --- |
| Menú | Menú d'Omarchy | Terminal nou | — |
| Espais de treball | Centra aquest espai de treball en aquest monitor | — | Desplaçament: espai de treball següent/anterior |
| Rellotge | Finestra emergent del calendari | Recorre els formats de l'etiqueta | Mig: selector de fus horari |
| Rellotge mundial | Panell del rellotge mundial | Actualitza | Mig: actualitza |
| Temps | Finestra emergent de la previsió | Temps complet com a notificació | Mig: actualitza |
| Àudio | Panell d'àudio | Silencia | Mig: panell · desplaçament: volum |
| Micròfon | Silencia el micròfon | — | Mig: panell d'àudio · desplaçament: volum d'entrada |
| Xarxa | Panell de xarxa | — | — |
| Bluetooth | Panell de Bluetooth | Activa o desactiva la ràdio | — |
| Pantalla | Panell de pantalla | — | Desplaçament: brillantor |
| Energia | Panell d'energia | Mostra o amaga el percentatge de bateria | — |
| Multimèdia | Reprodueix/posa en pausa | Finestra emergent de la portada | Mig: següent · desplaçament: anterior/següent |
| Agents | Panell d'agents | Llança el teu agent | Mig: actualitza l'ús |
| Safata | Passa el cursor per sobre per revelar el calaix | Clic dret al símbol de fletxa per gestionar-lo | — |
| Actualització d'Omarchy | Executa l'actualització | — | — |

No tot el que hi ha en aquesta taula és a la teva barra de sèrie. El giny multimèdia (el que s'està reproduint ara via MPRIS, amb la pista i l'artista desplaçant-se) i el giny del micròfon estan integrats, però desactivats per defecte: afegeix-los si els vols, tal com s'explica més avall.

## Els panells

Fer clic en una icona de la barra obre un panell, que és una finestra emergent com cal, amb controls lliscants, llistes i navegació amb el teclat, i no una simple descripció emergent. Cadascun també té una drecera de teclat, així que mai no has d'apuntar a un glif de 16 píxels:

| Drecera de teclat | Panell |
| --- | --- |
| `Super + Ctrl + A` | Àudio |
| `Super + Ctrl + N` | Xarxa |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Pantalla |
| `Super + Ctrl + P` | Energia |
| `Super + Ctrl + Alt + D` | Calendari |
| `Super + Ctrl + Alt + E` | Rellotge mundial |
| `Super + Ctrl + X` | Agents |
| `Super + Ctrl + 1-9` | Activa o desactiva l'enèsim panell de la secció dreta |

Els panells no són simples lectures. És on realment fas la cosa:

- **Àudio** té un control lliscant de volum principal, un selector de dispositiu de sortida i un mesclador per aplicació, perquè puguis abaixar aquella pestanya del navegador sense tocar tota la resta.
- **Xarxa** cerca xarxes Wi-Fi, mostra la intensitat del senyal, s'hi connecta i et deixa triar un proveïdor de DNS.
- **Bluetooth** enumera els teus dispositius amb l'opció de connectar-los i desconnectar-los i els nivells de bateria.
- **Energia** mostra les estadístiques de la bateria, canvia els perfils d'energia (recorda una tria diferent per a bateria i per a AC) i imprimeix una mica d'informació del sistema.
- **Pantalla** inclou un control lliscant de brillantor, la mida del text, valors predefinits d'escalat del monitor i, quan tens més d'una pantalla, controls per a cada monitor. Consulta [pantalles](33-monitors.md) per aprofundir-hi.
- **Rellotge** obre una graella mensual amb els números de setmana ISO i navegació per mesos.
- **Rellotge mundial** manté una fila per ciutat, amb el seu temps i com li va el dia. La cerca troba pobles i ciutats, a més de fusos horaris, així que Fort Lauderdale és Fort Lauderdale i no Nova York. Si la línia de dalt indica la ciutat equivocada, fes-hi clic i digues on ets; tria un lloc d'un altre fus horari i el rellotge del sistema també s'hi desplaçarà, cosa molt pràctica quan viatges. Passa el cursor per sobre d'una ciutat i fes clic al botó de la persona per dir qui hi viu: noms normals, o noms d'usuari de GitHub amb `@` perquè també hi apareguin les seves cares.

Tots els panells accepten tant el teclat com el ratolí: les fletxes mouen, Return activa, Tab passa al panell veí i Escape tanca.

`Super + Ctrl + 1-9` compta els panells d'esquerra a dreta a la secció dreta, saltant-se la safata perquè no té cap panell propi. Així, el número coincideix amb la icona a què apuntaries.

### Tailscale i Dropbox

Dos ginys més apareixen a la barra només quan instal·les el servei corresponent des d'**Instal·la → Servei**, i val la pena conèixer tots dos perquè fan més que informar de l'estat.

El panell de **Tailscale** connecta i desconnecta la tailnet, canvia entre comptes i tria un node de sortida (tant les teves pròpies màquines com les regions de Mullvad apareixen en aquesta llista). També explora les teves màquines i, amb una de seleccionada, `s` hi envia fitxers mitjançant Taildrop, que és la manera més ràpida de passar un fitxer al teu telèfon o a un altre portàtil. `c` copia l'IP de la màquina, `n` el seu nom i `d` el seu nom DNS complet. També hi ha un botó d'enviament a cada fila de màquina, si prefereixes fer clic. El mateix des del terminal és `omarchy tailscale send <machine> [file...]`.

El panell de **Dropbox** gestiona l'inici de sessió, mostra quant d'emmagatzematge has fet servir i enumera els fitxers sincronitzats recentment.

Si elimines qualsevol dels dos serveis, el seu giny desapareix de la barra.

## Indicadors

El petit grup del centre és el giny d'indicadors. Són glifs d'estat per als modes que has activat: no molestis, llum nocturna, un [recordatori](09-reminders.md) a la cua, una gravació de pantalla activa i mantenir-se despert, a més d'avisos mentre el sudo sense contrasenya estigui activat o algú estigui connectat a una sessió remota. S'il·luminen quan el mode està actiu i, si no, es fan a un costat: passa el cursor just al seu costat, on serien els inactius, per espiar-los. Fer clic en un indicador activa o desactiva aquell mode. N'hi ha un més que és només d'estat: una sessió remota s'encén en vermell mentre algú està connectat a aquesta màquina mitjançant gliff.

Si prefereixes que sempre siguin visibles, defineix `alwaysShow` com a `true` al giny. I si només t'interessen alguns, enumera els que vols a `items`: `["Dnd", "Reminder", "NightLight"]`. Pots tenir més d'un giny d'indicadors, així que seccions diferents poden mostrar subconjunts diferents.

## Reordenar la barra

La barra es configura sola. No has d'obrir cap fitxer de configuració per moure coses.

Agafa un tros buit de la barra al voltant del centre i arrossega'l cap a una altra vora de la pantalla, i la barra s'hi mourà: esquerra, dreta, dalt o baix funcionen, i tots els ginys s'hi adapten (les barres verticals recorren a formes compactes només amb icones). Un clic mantingut inicia el mateix arrossegament. Fes doble clic esquerre en aquest mateix espai buit per recórrer el fons de la barra, de transparent a vidriós a opac. I arrossega qualsevol giny per reordenar-lo o llançar-lo a una altra secció; els altres ginys s'apartaran per fer lloc on anirà a parar.

El mig de la barra és una caixa: tot el que hi ha es manté centrat com un sol grup, i els ginys de cada costat pengen de les seves vores. Mentre arrossegues un giny, la caixa es mostra com un contorn, o com una línia que travessa la barra quan és buida, i pots deixar-lo anar dins seu o al seu costat. Quan una deixada aniria a parar a la caixa, la caixa creix per acollir el giny.

Un giny que vols tenir a prop però no sempre a la vista pot anar al calaix de la safata: arrossega'l a la safata i el calaix s'obrirà per acollir-lo. S'hi queda després de les icones de les aplicacions, apareix sempre que ho fa el calaix i manté el seu calaix obert mentre el seu panell està obert. Arrossega'l de nou a la barra per tornar-lo a posar.

Si prefereixes triar-ho d'un menú, **Aparença → Barra de menú** té la posició, i **Fons de la barra** tria com es dibuixa la barra: **Barra opaca**, **Barra vidriosa** (transparent, amb el que hi ha darrere difuminat) o **Barra transparent**.

Les mateixes coses tenen ordres, que és el que vols per a una configuració amb [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Per afegir o eliminar un giny del tot, fes servir les ordres de connectors. `omarchy plugin list` imprimeix tots els ginys que coneix la shell amb el seu id, i després:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Amagar la barra

`Super + Shift + Space` activa o desactiva la barra sense matar la shell: els panells i les dreceres de teclat continuen funcionant, simplement recuperes els píxels. També és al menú, a **Aparença → Barra de menú → Amaga la barra**.

## El fitxer de configuració

Tot s'emmagatzema a `~/.config/omarchy/shell.json`, sota la clau `bar`. Aquí en tens una versió retallada:

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

Cada giny és una entrada en una de les cinc matrius de disposició, i la seva configuració és a la mateixa entrada, en línia: no hi ha cap fitxer de configuració separat ni cap subobjecte `config`. El `format`, el `formatAlt` (allò a què passa el clic dret) i el `verticalFormat` del rellotge viuen tots just aquí, a `{ "id": "omarchy.clock" }`.

`center` és la caixa del mig de la barra: tot el que hi ha es centra a la pantalla com un sol grup. `centerBegin` i `centerEnd` pengen a cada costat de la caixa, i és així com el rellotge es manté ben bé al centre encara que el temps i la insígnia d'actualització vinguin i vagin. Posa més d'un giny a `center` i es centraran junts; deixa'l buit i `centerBegin` i `centerEnd` es trobaran al mig de la barra.

Una regla que val la pena interioritzar: **un cop tens el teu propi `shell.json`, és canònic**. Fins que no personalitzis res, la shell llegeix el fitxer per defecte d'Omarchy. En el moment que arrossegues un giny, executes `omarchy bar` o edites tu mateix el fitxer, és teu: no hi ha cap fusió en profunditat, així que els ginys per defecte nous de versions futures d'Omarchy no apareixeran automàticament a la teva barra. `omarchy bar defaults` torna a posar la disposició de fàbrica sempre que vulguis començar de zero.

El mateix fitxer també desa els teus temps d'inactivitat al nivell superior, fora de la clau `bar`: `idle.screensaver` i `idle.lock`, tots dos en segons des que vas quedar inactiu. Així, l'estalvi de pantalla per defecte s'activa als 150 segons i el bloqueig als 300.
