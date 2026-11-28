# La barre supérieure

La bande le long du haut de votre écran est la barre Omarchy. Ce n'est pas une barre de statut greffée dessus, mais une partie du shell Omarchy, le processus Quickshell unique et de longue durée qui dessine aussi le menu, les notifications, les popups OSD et l'écran de verrouillage. C'est pourquoi son thème s'accorde parfaitement avec tout le reste et pourquoi un panneau s'ouvre instantanément au lieu de lancer une nouvelle application.

C'est aussi le seul élément du bureau qui est toujours à l'écran, donc ça vaut la peine de savoir ce que font tous ces petits glyphes.

## Ce qu'elle contient par défaut

La barre comporte trois sections. À gauche se trouvent le logo Omarchy (le lanceur de menu) et les indicateurs d'espaces de travail. Au centre, vous avez les indicateurs de statut, l'horloge, Elsewhen (une horloge mondiale), la météo et un badge de mise à jour Omarchy. À droite : la zone de notification système, la disposition du clavier (quand plus d'une disposition ou méthode de saisie est configurée), les agents, le bluetooth, le réseau, l'audio, l'affichage et l'alimentation.

Certains d'entre eux n'apparaissent que lorsqu'ils ont quelque chose à dire. La disposition du clavier n'apparaît que si vous avez configuré plus d'une disposition ou méthode de saisie. Le badge de mise à jour n'apparaît que lorsqu'une mise à jour Omarchy est en attente.

## Les clics

Presque chaque widget fait quelque chose au clic gauche, droit et central, et plusieurs réagissent au défilement. C'est le point que tout le monde rate — les boutons droit et central sont là où se cachent beaucoup de bonnes choses.

| Widget | Gauche | Droite | Milieu / défilement |
| --- | --- | --- | --- |
| Menu | Menu Omarchy | Nouveau terminal | — |
| Espaces de travail | Activer cet espace de travail sur ce moniteur | — | Défilement : espace de travail suivant/précédent |
| Horloge | Popup calendrier | Faire défiler les formats d'étiquette | Milieu : sélecteur de fuseau horaire |
| Horloge mondiale | Panneau de l'horloge mondiale | Actualiser | Milieu : actualiser |
| Météo | Popup prévisions | Météo complète sous forme de notification | Milieu : actualiser |
| Audio | Panneau audio | Couper le son | Milieu : panneau · défilement : volume |
| Microphone | Couper le micro | — | Milieu : panneau audio · défilement : volume d'entrée |
| Réseau | Panneau réseau | — | — |
| Bluetooth | Panneau Bluetooth | Activer/désactiver la radio | — |
| Affichage | Panneau d'affichage | — | Défilement : luminosité |
| Alimentation | Panneau d'alimentation | Afficher/masquer le pourcentage de batterie | — |
| Média | Lecture/pause | Popup de la pochette | Milieu : suivant · défilement : précédent/suivant |
| Agents | Panneau des agents | Lancer votre agent | Milieu : actualiser l'utilisation |
| Zone de notification | Survoler pour révéler le tiroir | Clic droit sur le chevron pour gérer | — |
| Mise à jour Omarchy | Lancer la mise à jour | — | — |

Tout ce qui figure dans ce tableau n'est pas sur votre barre par défaut. Le widget média (MPRIS en cours de lecture, avec un titre et un artiste défilants) et le widget microphone sont tous deux intégrés mais désactivés par défaut — ajoutez-les si vous les voulez, comme décrit ci-dessous.

## Les panneaux

Cliquer sur une icône de la barre ouvre un panneau, qui est un vrai popup avec des curseurs, des listes et une navigation au clavier plutôt qu'une infobulle. Chacun a aussi un raccourci clavier, donc vous n'avez jamais à viser un glyphe de 16 pixels :

| Raccourci | Panneau |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Réseau |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Affichage |
| `Super + Ctrl + P` | Alimentation |
| `Super + Ctrl + Alt + D` | Calendrier |
| `Super + Ctrl + Alt + E` | Horloge mondiale |
| `Super + Ctrl + X` | Agents |
| `Super + Ctrl + 1-9` | Basculer le n-ième panneau dans la section de droite |

Les panneaux ne sont pas de simples affichages. C'est là que vous faites vraiment les choses :

- **Audio** propose un curseur de volume principal, un sélecteur de périphérique de sortie et un mixeur par application, pour baisser cet onglet de navigateur sans toucher à tout le reste.
- **Réseau** recherche les Wi-Fi, affiche la force du signal, se connecte et vous laisse choisir un fournisseur DNS.
- **Bluetooth** liste vos appareils avec connexion/déconnexion et niveaux de batterie.
- **Alimentation** affiche les statistiques de batterie, change de profil d'alimentation (il retient un choix distinct pour la batterie et pour le secteur), et affiche quelques informations système.
- **Affichage** propose un curseur de luminosité, la taille du texte, des préréglages de mise à l'échelle des moniteurs et — quand vous avez plus d'un écran — des réglages par moniteur. Voir [moniteurs](33-monitors.md) pour aller plus loin.
- **Horloge** ouvre une grille mensuelle avec les numéros de semaine ISO et la navigation par mois.
- **Horloge mondiale** conserve une ligne par ville, avec sa météo et le déroulement de sa journée. La recherche trouve les petites villes aussi bien que les fuseaux horaires, donc Fort Lauderdale est Fort Lauderdale et pas New York. Si la ligne du haut indique la mauvaise ville, cliquez dessus et dites où vous êtes ; choisissez un endroit dans un autre fuseau horaire et l'horloge système s'y déplace aussi, ce qui est pratique quand vous voyagez. Survolez une ville et cliquez sur le bouton personnage pour dire qui y vit — des noms simples, ou des identifiants GitHub `@` pour récupérer leurs visages au passage.

Chaque panneau accepte le clavier aussi bien que la souris : les flèches déplacent, Return active, Tab passe au panneau voisin, et Escape ferme.

`Super + Ctrl + 1-9` compte les panneaux de gauche à droite dans la section de droite, en sautant la zone de notification puisqu'elle n'a pas de panneau propre. Le numéro correspond donc à l'icône que vous pointeriez.

### Tailscale et Dropbox

Deux widgets supplémentaires apparaissent sur la barre uniquement une fois que vous installez le service correspondant depuis **Installation → Service**, et les deux méritent d'être connus parce qu'ils font plus que signaler un statut.

Le panneau **Tailscale** connecte et déconnecte le tailnet, bascule entre les comptes et choisit un nœud de sortie (vos propres machines et les régions Mullvad apparaissent toutes deux dans cette liste). Il parcourt aussi vos machines — et une fois l'une d'elles sélectionnée, `s` lui envoie des fichiers via Taildrop, ce qui est le moyen le plus rapide d'envoyer un fichier vers votre téléphone ou un autre ordinateur portable. `c` copie l'IP de la machine, `n` son nom et `d` son nom DNS complet. Il y a aussi un bouton d'envoi sur chaque ligne de machine, si vous préférez cliquer. La même chose depuis le terminal est `omarchy tailscale send <machine> [file...]`.

Le panneau **Dropbox** gère la connexion, affiche l'espace de stockage que vous avez utilisé et liste les fichiers récemment synchronisés.

Retirer l'un ou l'autre service enlève son widget de la barre.

## Indicateurs

Le petit groupe au centre est le widget des indicateurs. Ce sont des glyphes de statut pour les modes que vous avez activés : ne pas déranger, lumière nocturne, un [rappel](09-reminders.md) en attente, un enregistrement d'écran actif et maintien de l'éveil, plus des avertissements quand sudo sans mot de passe est activé ou quand quelqu'un est connecté à une session distante. Ils s'allument quand le mode est actif et restent discrets sinon — survolez juste à côté d'eux, là où se trouveraient les inactifs, pour jeter un œil à ceux-là. Cliquer sur un indicateur active/désactive ce mode. Un dernier est uniquement un statut : une session distante s'allume en rouge pendant que quelqu'un est connecté à cette machine via gliff.

Si vous préférez qu'ils soient toujours visibles, définissez `alwaysShow` à `true` sur le widget. Et si vous ne vous souciez que de certains d'entre eux, listez ceux que vous voulez dans `items` : `["Dnd", "Reminder", "NightLight"]`. Vous pouvez avoir plus d'un widget d'indicateurs, donc différentes sections peuvent afficher différents sous-ensembles.

## Réorganiser la barre

La barre se configure toute seule. Vous n'avez pas à ouvrir un fichier de configuration pour déplacer les choses.

Attrapez un coin vide de la barre autour du centre et faites-le glisser vers un autre bord de l'écran, et la barre s'y déplace — gauche, droite, haut ou bas fonctionnent tous, et chaque widget s'adapte (les barres verticales retombent sur des formes compactes avec icônes uniquement). Un clic maintenu déclenche le même glissement. Double-cliquez avec le bouton gauche sur ce même espace vide pour faire défiler l'arrière-plan de la barre de transparent à vitreux à opaque. Et faites glisser n'importe quel widget pour le réorganiser ou le jeter dans une autre section ; les autres widgets s'écartent pour faire de la place là où il atterrira.

Le milieu de la barre est une boîte : tout ce qui s'y trouve reste centré comme un seul groupe, et les widgets de chaque côté pendent à ses bords. Pendant que vous faites glisser un widget, la boîte s'affiche comme un contour, ou une ligne en travers de la barre quand elle est vide, et vous pouvez déposer dedans ou à côté. Quand un dépôt atterrirait dans la boîte, la boîte grandit pour accueillir le widget.

Un widget que vous voulez garder sous la main mais pas toujours en vue peut aller dans le tiroir de la zone de notification : faites-le glisser sur la zone de notification, et le tiroir s'ouvre pour l'accueillir. Il s'y trouve après les icônes d'applications, apparaît chaque fois que le tiroir le fait, et garde son tiroir ouvert pendant que son panneau est affiché. Faites-le glisser à nouveau sur la barre pour le remettre en place.

Si vous préférez choisir depuis un menu, **Apparence → Barre de menus** contient la position, et **Arrière-plan de la barre** choisit la façon dont la barre est dessinée : **Barre opaque**, **Barre vitreuse** (transparente, avec ce qui se trouve derrière flouté), ou **Barre transparente**.

Les mêmes choses ont des commandes, ce qui est ce que vous voulez pour une configuration [dotfiles](31-dotfiles.md) :

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Pour ajouter ou retirer entièrement un widget, utilisez les commandes de plugin. `omarchy plugin list` affiche chaque widget que le shell connaît avec son id, puis :

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Masquer la barre

`Super + Shift + Space` masque et réaffiche la barre sans tuer le shell — les panneaux et les raccourcis continuent de fonctionner, vous récupérez juste les pixels. C'est aussi dans le menu sous **Apparence → Barre de menus → Masquer la barre**.

## Le fichier de configuration

Tout est stocké dans `~/.config/omarchy/shell.json`, sous la clé `bar`. En voici une version réduite :

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

Chaque widget est une entrée dans l'un des cinq tableaux de disposition, et ses réglages se trouvent directement sur cette entrée — il n'y a pas de fichier de réglages séparé et pas de sous-objet `config`. Le `format` de l'horloge, `formatAlt` (vers lequel le clic droit fait défiler) et `verticalFormat` vivent tous juste là sur `{ "id": "omarchy.clock" }`.

`center` est la boîte au milieu de la barre : tout ce qu'elle contient est centré sur l'écran comme un seul groupe. `centerBegin` et `centerEnd` pendent de chaque côté de la boîte, ce qui permet à l'horloge de rester parfaitement au centre même quand la météo et le badge de mise à jour vont et viennent. Mettez plus d'un widget dans `center` et ils sont centrés ensemble ; laissez-le vide et `centerBegin` et `centerEnd` se rencontrent au milieu de la barre.

Une règle qui vaut la peine d'être intériorisée : **une fois que vous avez votre propre `shell.json`, il fait foi**. Jusqu'à ce que vous personnalisiez quoi que ce soit, le shell lit le fichier par défaut d'Omarchy. Dès que vous faites glisser un widget, lancez `omarchy bar`, ou modifiez le fichier vous-même, il vous appartient — il n'y a pas de fusion profonde, donc les nouveaux widgets par défaut des futures versions d'Omarchy n'apparaîtront pas automatiquement sur votre barre. `omarchy bar defaults` remet la disposition livrée par défaut chaque fois que vous voulez repartir de zéro.

Le même fichier contient aussi vos délais d'inactivité au niveau supérieur, en dehors de la clé `bar` : `idle.screensaver` et `idle.lock`, tous deux en secondes depuis que vous êtes devenu inactif. Ainsi, l'économiseur d'écran par défaut se déclenche à 150 secondes et le verrouillage à 300.
