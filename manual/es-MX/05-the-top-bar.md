# La barra superior

La franja en la parte superior de tu pantalla es la barra de Omarchy. No es una barra de estado atornillada encima, sino parte del shell de Omarchy, el único proceso de larga duración de Quickshell que también dibuja el menú, las notificaciones, las ventanas emergentes OSD y la pantalla de bloqueo. Por eso combina perfecto con todo lo demás y por eso un panel se abre al instante en lugar de lanzar una app nueva.

También es la única parte del escritorio que siempre está en pantalla, así que vale la pena saber qué hacen todos esos glifos pequeños.

## Qué trae por defecto

La barra tiene tres secciones. A la izquierda está el logotipo de Omarchy (el lanzador del menú) y los indicadores de espacios de trabajo. En el centro tienes los indicadores de estado, el reloj, Elsewhen (un reloj mundial), el clima y una insignia de actualización de Omarchy. A la derecha: la bandeja del sistema, la distribución del teclado (cuando hay más de una distribución o método de entrada configurado), agentes, bluetooth, red, audio, pantalla y energía.

Algunos de esos solo aparecen cuando tienen algo que decir. La distribución del teclado aparece solo si configuraste más de una distribución o método de entrada. La insignia de actualización aparece solo cuando hay una actualización de Omarchy esperando.

## Al hacer clic por ahí

Casi todos los widgets hacen algo con el clic izquierdo, derecho y central, y varios responden al desplazamiento. Esta es la parte que la gente se pierde: en los botones derecho y central se esconde mucho de lo bueno.

| Widget | Clic izquierdo | Clic derecho | Clic central / desplazamiento |
| --- | --- | --- | --- |
| Menú | Menú de Omarchy | Nueva terminal | — |
| Espacios de trabajo | Ir a ese espacio de trabajo en este monitor | — | Desplazamiento: espacio de trabajo anterior/siguiente |
| Reloj | Ventana emergente del calendario | Alternar el formato de la etiqueta | Clic central: selector de zona horaria |
| Reloj mundial | Panel del reloj mundial | Actualizar | Clic central: actualizar |
| Clima | Ventana emergente del pronóstico | Clima completo como notificación | Clic central: actualizar |
| Audio | Panel de audio | Silenciar | Clic central: panel · desplazamiento: volumen |
| Micrófono | Silenciar el micrófono | — | Clic central: panel de audio · desplazamiento: volumen de entrada |
| Red | Panel de red | — | — |
| Bluetooth | Panel de Bluetooth | Activar o desactivar el Bluetooth | — |
| Pantalla | Panel de pantalla | — | Desplazamiento: brillo |
| Energía | Panel de energía | Mostrar u ocultar el porcentaje de batería | — |
| Multimedia | Reproducir/pausar | Ventana emergente de la portada | Clic central: siguiente · desplazamiento: anterior/siguiente |
| Agentes | Panel de agentes | Abrir tu agente | Clic central: actualizar el uso |
| Bandeja | Pasar el cursor para revelar el cajón | Clic derecho en el chevron para administrar | — |
| Actualización de Omarchy | Ejecutar la actualización | — | — |

No todo lo que está en esa tabla viene en tu barra desde el inicio. El widget de multimedia (MPRIS con lo que se está reproduciendo, con la pista y el artista desplazándose) y el widget de micrófono ya vienen incluidos, pero están desactivados por defecto: agrégalos si los quieres, como se describe más abajo.

## Los paneles

Al hacer clic en un ícono de la barra se abre un panel, que es una ventana emergente en forma, con controles deslizantes, listas y navegación con el teclado, en lugar de un tooltip. Cada uno también tiene un atajo, para que nunca tengas que apuntarle a un glifo de 16 píxeles:

| Atajo | Panel |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Red |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Pantalla |
| `Super + Ctrl + P` | Energía |
| `Super + Ctrl + Alt + D` | Calendario |
| `Super + Ctrl + Alt + E` | Reloj mundial |
| `Super + Ctrl + X` | Agentes |
| `Super + Ctrl + 1-9` | Activar o desactivar el enésimo panel de la sección derecha |

Los paneles no son solo lecturas. Son donde realmente haces la cosa:

- **Audio** tiene un control deslizante de volumen general, un selector de dispositivo de salida y un mezclador por app, para que puedas bajarle a esa única pestaña del navegador sin tocar todo lo demás.
- **Red** busca redes Wi-Fi, muestra la intensidad de la señal, se conecta y te permite elegir un proveedor de DNS.
- **Bluetooth** enumera tus dispositivos con opciones para conectar/desconectar y los niveles de batería.
- **Energía** muestra estadísticas de la batería, cambia perfiles de energía (recuerda una elección distinta para batería y AC) y muestra algo de información del sistema.
- **Pantalla** trae un control deslizante de brillo, tamaño del texto, ajustes predefinidos de escala del monitor y, cuando tienes más de una pantalla, controles por monitor. Consulta [monitores](33-monitors.md) para conocer la historia completa.
- **Reloj** abre una cuadrícula mensual con números de semana ISO y navegación por meses.
- **Reloj mundial** mantiene una fila por ciudad, con su clima y cómo va su día. La búsqueda encuentra pueblos además de zonas horarias, así que Fort Lauderdale es Fort Lauderdale y no Nueva York. Si la línea de arriba indica la ciudad equivocada, haz clic en ella y di dónde estás; elige un lugar en otra zona horaria y el reloj del sistema también se moverá ahí, algo muy útil cuando viajas. Pasa el cursor sobre una ciudad y haz clic en el botón de la persona para decir quién vive ahí: nombres simples o nombres de usuario de GitHub con `@` para traer también sus caras.

Todos los paneles aceptan el teclado además del mouse: las flechas se mueven, Return activa, Tab pasa al panel vecino y Escape cierra.

`Super + Ctrl + 1-9` cuenta los paneles de izquierda a derecha en la sección derecha, saltándose la bandeja porque no tiene un panel propio. Así, el número coincide con el ícono al que apuntarías.

### Tailscale y Dropbox

Aparecen dos widgets más en la barra solo cuando instalas el servicio correspondiente desde **Instalar → Servicio**, y vale la pena conocer ambos porque hacen más que reportar el estado.

El panel de **Tailscale** conecta y desconecta la tailnet, cambia entre cuentas y elige un nodo de salida (tanto tus propias máquinas como las regiones de Mullvad aparecen en esa lista). También explora tus máquinas, y con una seleccionada, `s` le envía archivos por Taildrop, que es la forma más rápida de mover un archivo a tu teléfono u otra laptop. `c` copia la IP de la máquina, `n` su nombre y `d` su nombre DNS completo. También hay un botón de envío en cada fila de máquina, por si prefieres hacer clic. Lo mismo desde la terminal es `omarchy tailscale send <machine> [file...]`.

El panel de **Dropbox** se encarga del inicio de sesión, muestra cuánto almacenamiento has usado y enumera los archivos sincronizados recientemente.

Quitar cualquiera de los dos servicios también quita su widget de la barra.

## Indicadores

El pequeño grupo en el centro es el widget de indicadores. Son glifos de estado para los modos que activaste: no molestar, luz nocturna, un [recordatorio](09-reminders.md) en cola, una grabación de pantalla activa y mantenerse despierto, además de advertencias mientras sudo sin contraseña está activo o alguien está conectado a una sesión remota. Se encienden cuando el modo está activo y, si no, no estorban: pasa el cursor justo al lado de ellos, donde estarían los inactivos, para echar un vistazo a esos. Al hacer clic en un indicador se activa o desactiva ese modo. Uno más es solo de estado: una sesión remota se enciende en rojo mientras alguien está conectado a esta máquina a través de gliff.

Si prefieres que siempre estén visibles, establece `alwaysShow` en `true` en el widget. Y si solo te importan algunos, enumera los que quieres en `items`: `["Dnd", "Reminder", "NightLight"]`. Puedes tener más de un widget de indicadores, así que distintas secciones pueden mostrar distintos subconjuntos.

## Reordenar la barra

La barra se configura sola. No tienes que abrir un archivo de configuración para mover cosas.

Agarra un pedazo vacío de la barra alrededor del centro y arrástralo hacia otro borde de la pantalla, y la barra se moverá ahí: izquierda, derecha, arriba o abajo funcionan, y todos los widgets se adaptan (las barras verticales recurren a formas compactas de solo íconos). Mantener presionado un clic inicia el mismo arrastre. Haz doble clic izquierdo en ese mismo espacio vacío para alternar el fondo de la barra entre transparente, cristalino y opaco. Y arrastra cualquier widget para reordenarlo o lanzarlo a otra sección; los demás widgets se abren para hacerle lugar donde va a caer.

El centro de la barra es una caja: lo que esté en ella se mantiene centrado como un solo grupo, y los widgets a cada lado cuelgan de sus bordes. Mientras arrastras un widget, la caja se muestra como un contorno, o como una línea que cruza la barra cuando está vacía, y puedes soltar dentro de ella o junto a ella. Cuando un elemento soltado caería en la caja, la caja crece para recibir el widget.

Un widget que quieres tener cerca pero no siempre a la vista puede ir en el cajón de la bandeja: arrástralo hasta la bandeja y el cajón se abrirá para recibirlo. Se queda ahí después de los íconos de las apps, aparece cada vez que aparece el cajón y mantiene su cajón abierto mientras su panel está abierto. Arrástralo de vuelta a la barra para regresarlo.

Si prefieres elegir desde un menú, **Apariencia → Barra de menú** tiene la posición, y **Fondo de la barra** elige cómo se dibuja la barra: **Barra opaca**, **Barra cristalina** (transparente, con lo que hay detrás borroso) o **Barra transparente**.

Lo mismo tiene comandos, que es lo que quieres para una configuración de [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Para agregar o quitar un widget por completo, usa los comandos de plugin. `omarchy plugin list` imprime todos los widgets que el shell conoce, con su id, y luego:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Ocultar la barra

`Super + Shift + Space` activa o desactiva la barra sin matar el shell: los paneles y los atajos siguen funcionando, solo recuperas los píxeles. También está en el menú, en **Apariencia → Barra de menú → Ocultar barra**.

## El archivo de configuración

Todo se guarda en `~/.config/omarchy/shell.json`, bajo la clave `bar`. Aquí está una versión recortada:

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

Cada widget es una entrada en uno de los cinco arreglos de layout, y su configuración va en línea en esa entrada: no hay un archivo de configuración separado ni un subobjeto `config`. El `format`, el `formatAlt` (a lo que alterna el clic derecho) y el `verticalFormat` del reloj viven justo ahí, en `{ "id": "omarchy.clock" }`.

`center` es la caja en el centro de la barra: todo lo que esté en ella se centra en la pantalla como un solo grupo. `centerBegin` y `centerEnd` cuelgan a cada lado de la caja, y así es como el reloj se mantiene justo en el centro aunque el clima y la insignia de actualización van y vienen. Pon más de un widget en `center` y se centrarán juntos; déjalo vacío y `centerBegin` y `centerEnd` se encontrarán en el centro de la barra.

Una regla que vale la pena interiorizar: **una vez que tienes tu propio `shell.json`, es canónico**. Hasta que personalizas algo, el shell lee el archivo predeterminado de Omarchy. En el momento en que arrastras un widget, ejecutas `omarchy bar` o editas el archivo tú mismo, es tuyo: no hay una fusión profunda, así que los widgets predeterminados nuevos de futuras versiones de Omarchy no aparecerán en tu barra automáticamente. `omarchy bar defaults` regresa el layout incluido cuando quieras empezar de cero.

El mismo archivo también guarda tus tiempos de inactividad en el nivel superior, fuera de la clave `bar`: `idle.screensaver` e `idle.lock`, ambos en segundos desde que te quedaste inactivo. Así, el protector de pantalla predeterminado se activa a los 150 segundos y el bloqueo a los 300.
