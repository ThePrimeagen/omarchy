# A Barra Superior

A faixa ao longo do topo do teu ecrã é a barra do Omarchy. Não é uma barra de estado aparafusada, mas parte da shell do Omarchy, o único processo Quickshell de longa duração que também desenha o menu, as notificações, os popups OSD e o ecrã de bloqueio. É por isso que combina na perfeição com tudo o resto e que um painel abre instantaneamente em vez de lançar uma nova aplicação.

É também a única parte do ambiente de trabalho que está sempre no ecrã, por isso vale a pena saber o que fazem todos aqueles pequenos glifos.

## O que contém por predefinição

A barra tem três secções. À esquerda fica o logótipo do Omarchy (o lançador do menu) e os indicadores das áreas de trabalho. Ao centro tens os indicadores de estado, o relógio, o Elsewhen (um relógio mundial), a meteorologia e um emblema de atualização do Omarchy. À direita: o tabuleiro do sistema, a disposição do teclado (quando está configurada mais do que uma disposição ou método de entrada), os agentes, o bluetooth, a rede, o áudio, o ecrã e a energia.

Alguns só aparecem quando têm alguma coisa a dizer. A disposição do teclado aparece apenas se tiveres configurado mais do que uma disposição ou método de entrada. O emblema de atualização aparece apenas quando há uma atualização do Omarchy à espera.

## Explorar com cliques

Quase todos os widgets fazem alguma coisa com o clique esquerdo, direito e do meio, e vários respondem à roda do rato. Esta é a parte que escapa às pessoas — é nos botões direito e do meio que se esconde muita da parte boa.

| Widget | Esquerdo | Direito | Meio / roda |
| --- | --- | --- | --- |
| Menu | Menu do Omarchy | Novo terminal | — |
| Áreas de trabalho | Colocar o foco nessa área de trabalho neste monitor | — | Roda: área de trabalho seguinte/anterior |
| Relógio | Popup do calendário | Alternar o formato da etiqueta | Meio: seletor de fuso horário |
| Relógio mundial | Painel do relógio mundial | Atualizar | Meio: atualizar |
| Meteorologia | Popup da previsão | Meteorologia completa como notificação | Meio: atualizar |
| Áudio | Painel de áudio | Silenciar | Meio: painel · roda: volume |
| Microfone | Silenciar o microfone | — | Meio: painel de áudio · roda: volume de entrada |
| Rede | Painel de rede | — | — |
| Bluetooth | Painel Bluetooth | Alternar o rádio | — |
| Ecrã | Painel do ecrã | — | Roda: brilho |
| Energia | Painel de energia | Alternar a percentagem da bateria | — |
| Multimédia | Reproduzir/pausa | Popup da capa | Meio: seguinte · roda: anterior/seguinte |
| Agentes | Painel de agentes | Lançar o teu agente | Meio: atualizar a utilização |
| Tabuleiro | Passar o rato por cima para revelar a gaveta | Clique direito no símbolo de seta para gerir | — |
| Atualização do Omarchy | Executar a atualização | — | — |

Nem tudo nessa tabela está na tua barra de origem. O widget de multimédia (MPRIS a reproduzir agora, com a faixa e o artista em deslocamento) e o widget do microfone estão ambos integrados, mas desativados por predefinição — adiciona-os se quiseres, como se descreve abaixo.

## Os painéis

Clicar num ícone da barra abre um painel, que é um popup a sério, com controlos deslizantes, listas e navegação por teclado, e não uma simples dica. Cada um tem também um atalho de teclado, por isso nunca tens de acertar num glifo de 16 píxeis:

| Atalho | Painel |
| --- | --- |
| `Super + Ctrl + A` | Áudio |
| `Super + Ctrl + N` | Rede |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Ecrã |
| `Super + Ctrl + P` | Energia |
| `Super + Ctrl + Alt + D` | Calendário |
| `Super + Ctrl + Alt + E` | Relógio mundial |
| `Super + Ctrl + X` | Agentes |
| `Super + Ctrl + 1-9` | Alternar o enésimo painel na secção da direita |

Os painéis não são meros mostradores. São onde fazes mesmo a coisa:

- **Áudio** tem um controlo deslizante para o volume principal, um seletor do dispositivo de saída e um misturador por aplicação, para poderes baixar o som daquele separador do navegador sem tocar em tudo o resto.
- **Rede** procura redes Wi-Fi, mostra a intensidade do sinal, estabelece a ligação e permite-te escolher um fornecedor de DNS.
- **Bluetooth** lista os teus dispositivos, com ligar/desligar e níveis de bateria.
- **Energia** mostra estatísticas da bateria, muda perfis de energia (memoriza uma escolha separada para bateria e AC) e apresenta algumas informações do sistema.
- **Ecrã** inclui um controlo deslizante para o brilho, o tamanho do texto, predefinições de escala do monitor e — quando tens mais do que um ecrã — controlos por monitor. Vê [monitores](33-monitors.md) para a história completa.
- **Relógio** abre uma grelha mensal com números de semana ISO e navegação entre meses.
- **Relógio mundial** mantém uma linha por cidade, com a meteorologia respetiva e como está a correr o dia lá. A pesquisa encontra localidades, além de fusos horários, por isso Fort Lauderdale é Fort Lauderdale e não Nova Iorque. Se a linha do topo indicar a cidade errada, clica nela e diz onde estás; escolhe um local noutro fuso horário e o relógio do sistema também se muda para lá, o que dá jeito quando viajas. Passa o rato por cima de uma cidade e clica no botão da pessoa para dizer quem vive lá — nomes simples, ou identificadores do GitHub com `@` para trazeres também os rostos dessas pessoas.

Cada painel aceita tanto o teclado como o rato: as setas movem, Return ativa, Tab passa para o painel vizinho e Escape fecha.

`Super + Ctrl + 1-9` conta os painéis da esquerda para a direita na secção da direita, saltando o tabuleiro, uma vez que este não tem painel próprio. Assim, o número corresponde ao ícone para o qual apontarias.

### Tailscale e Dropbox

Aparecem mais dois widgets na barra apenas depois de instalares o serviço correspondente em **Instalar → Serviço**, e vale a pena conhecer os dois, porque fazem mais do que mostrar o estado.

O painel **Tailscale** liga e desliga a tailnet, alterna entre contas e escolhe um nó de saída (tanto as tuas próprias máquinas como as regiões Mullvad aparecem nessa lista). Também permite percorrer as tuas máquinas — e, com uma selecionada, `s` envia-lhe ficheiros através do Taildrop, que é a forma mais rápida de mover um ficheiro para o teu telemóvel ou para outro portátil. `c` copia o IP da máquina, `n` o seu nome e `d` o seu nome DNS completo. Há também um botão de envio em cada linha de máquina, se preferires clicar. A mesma coisa a partir do terminal é `omarchy tailscale send <machine> [file...]`.

O painel **Dropbox** trata do início de sessão, mostra quanto espaço de armazenamento já utilizaste e lista os ficheiros sincronizados recentemente.

Remover qualquer um dos serviços volta a tirar o respetivo widget da barra.

## Indicadores

O pequeno conjunto ao centro é o widget de indicadores. São glifos de estado para modos que ativaste: não incomodar, luz noturna, um [lembrete](09-reminders.md) em fila, uma gravação de ecrã ativa e manter acordado, além de avisos enquanto o sudo sem palavra-passe estiver ativo ou alguém estiver ligado a uma sessão remota. Acendem quando o modo está ativo e, caso contrário, mantêm-se discretos — passa o rato mesmo ao lado deles, onde ficariam os inativos, para espreitar esses. Clicar num indicador alterna esse modo. Há mais um que é só de estado: uma sessão remota acende a vermelho enquanto alguém estiver ligado a esta máquina através do gliff.

Se preferires que estejam sempre visíveis, define `alwaysShow` como `true` no widget. E se só te interessarem alguns deles, lista os que queres em `items`: `["Dnd", "Reminder", "NightLight"]`. Podes ter mais do que um widget de indicadores, para que secções diferentes mostrem subconjuntos diferentes.

## Reorganizar a barra

A barra configura-se a si própria. Não tens de abrir um ficheiro de configuração para mover coisas.

Agarra num pedaço vazio da barra perto do centro e arrasta-o para outra extremidade do ecrã, e a barra muda-se para lá — esquerda, direita, topo ou fundo, tudo funciona, e cada widget adapta-se (as barras verticais recuam para formas compactas, só com ícones). Um clique sem largar inicia o mesmo arrastamento. Faz duplo clique com o botão esquerdo nesse mesmo espaço vazio para fazer a barra percorrer os fundos transparente, vidrado e opaco. E arrasta qualquer widget para o reordenar ou para o atirar para outra secção; os outros widgets afastam-se para abrir espaço onde ele vai ficar.

O meio da barra é uma caixa: tudo o que estiver dentro dela fica centrado como um único grupo, e os widgets de cada lado ficam encostados às suas extremidades. Enquanto arrastas um widget, a caixa aparece como um contorno, ou como uma linha ao longo da barra quando está vazia, e podes largar dentro dela ou ao lado dela. Quando a largada for para dentro da caixa, a caixa cresce para acolher o widget.

Um widget que queiras por perto, mas nem sempre visível, pode ir para a gaveta do tabuleiro: arrasta-o para o tabuleiro e a gaveta abre-se para o receber. Fica ali depois dos ícones das aplicações, aparece sempre que a gaveta aparece e mantém a sua gaveta aberta enquanto o respetivo painel estiver aberto. Arrasta-o de volta para a barra para o repor.

Se preferires escolher a partir de um menu, **Aspeto → Barra de Menu** tem a posição, e **Fundo da Barra** escolhe como a barra é desenhada: **Barra Opaca**, **Barra Vidrada** (transparente, com o que está atrás desfocado) ou **Barra Transparente**.

As mesmas coisas têm comandos, que é o que queres para uma configuração de [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Para adicionar ou remover um widget por completo, usa os comandos de plugins. `omarchy plugin list` imprime todos os widgets que a shell conhece, com o respetivo id, e depois:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Esconder a barra

`Super + Shift + Space` alterna a barra entre desligada e ligada sem matar a shell — os painéis e os atalhos continuam a funcionar, só recuperas os píxeis. Também está no menu em **Aspeto → Barra de Menu → Esconder a Barra**.

## O ficheiro de configuração

Tudo fica guardado em `~/.config/omarchy/shell.json`, na chave `bar`. Aqui está uma versão resumida:

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

Cada widget é uma entrada num dos cinco arrays de disposição, e as suas definições ficam em linha nessa entrada — não há um ficheiro de definições separado nem um subobjeto `config`. Os `format`, `formatAlt` (aquilo para que o clique direito alterna) e `verticalFormat` do relógio vivem todos ali mesmo, em `{ "id": "omarchy.clock" }`.

`center` é a caixa no meio da barra: tudo o que nela estiver fica centrado no ecrã como um único grupo. `centerBegin` e `centerEnd` ficam de cada lado da caixa, e é assim que o relógio se mantém mesmo ao centro, mesmo quando a meteorologia e o emblema de atualização aparecem e desaparecem. Coloca mais do que um widget em `center` e eles ficam centrados em conjunto; deixa-o vazio e `centerBegin` e `centerEnd` encontram-se no meio da barra.

Há uma regra que vale a pena interiorizar: **a partir do momento em que tens o teu próprio `shell.json`, ele é o que manda**. Até personalizares alguma coisa, a shell lê o ficheiro predefinido do Omarchy. No instante em que arrastas um widget, executas `omarchy bar` ou editas tu próprio o ficheiro, ele passa a ser teu — não há uma fusão profunda, por isso os novos widgets predefinidos de futuras versões do Omarchy não aparecerão automaticamente na tua barra. `omarchy bar defaults` repõe a disposição de origem sempre que quiseres começar do zero.

O mesmo ficheiro guarda também os teus tempos de inatividade ao nível superior, fora da chave `bar`: `idle.screensaver` e `idle.lock`, ambos em segundos desde que ficaste inativo. Assim, a proteção de ecrã predefinida entra aos 150 segundos e o bloqueio aos 300.
