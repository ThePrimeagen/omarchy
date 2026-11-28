# Ang Bar sa Itaas

Ang guhit sa tuktok ng screen mo ay ang Omarchy bar. Hindi ito isang status bar na basta ikinabit lang kundi bahagi ng Omarchy shell, ang iisang matagalang tumatakbong proseso ng Quickshell na siya ring gumuguhit ng menu, mga notification, mga OSD popup, at lock screen. Kaya perpekto itong bumabagay sa tema ng lahat ng iba pa at kaya agad-agad bumubukas ang isang panel imbes na magbukas ng bagong app.

Ito rin ang nag-iisang piraso ng desktop na palaging nasa screen, kaya sulit na malaman kung ano ang ginagawa ng lahat ng maliliit na glyph na iyon.

## Ano ang nandito bilang default

May tatlong seksyon ang bar. Sa kaliwa nakaupo ang logo ng Omarchy (ang launcher ng menu) at ang mga tagapagpahiwatig ng workspace. Sa gitna makukuha mo ang mga tagapagpahiwatig ng status, ang orasan, Elsewhen (isang world clock), ang panahon, at isang badge ng update ng Omarchy. Sa kanan: ang system tray, ang layout ng keyboard (kapag higit sa isang layout o paraan ng pag-input ang nakakonpigura), mga agent, bluetooth, network, audio, display, at power.

Ilan sa mga iyon ay lumalabas lang kapag may sasabihin sila. Ang layout ng keyboard ay lumalabas lang kung nagkonpigura ka ng higit sa isang layout o paraan ng pag-input. Ang badge ng update ay lumalabas lang kapag may naghihintay na update ng Omarchy.

## Pag-click kung saan-saan

Halos bawat widget ay may ginagawa sa kaliwa, kanan, at gitnang pag-click, at ilan ang tumutugon sa pag-scroll. Ito ang bahaging hindi napapansin ng mga tao — nasa kanan at gitnang button ang maraming magagandang bagay na nagtatago.

| Widget | Kaliwa | Kanan | Gitna / scroll |
| --- | --- | --- | --- |
| Menu | Menu ng Omarchy | Bagong terminal | — |
| Workspaces | Tumutok sa workspace na iyon sa monitor na ito | — | Scroll: susunod/nakaraang workspace |
| Clock | Popup ng kalendaryo | Palitan nang paikot ang format ng label | Gitna: tagapili ng timezone |
| World clock | Panel ng world clock | I-refresh | Gitna: i-refresh |
| Weather | Popup ng forecast | Buong panahon bilang notification | Gitna: i-refresh |
| Audio | Panel ng audio | I-mute | Gitna: panel · scroll: volume |
| Microphone | I-mute ang mic | — | Gitna: panel ng audio · scroll: volume ng input |
| Network | Panel ng network | — | — |
| Bluetooth | Panel ng Bluetooth | I-toggle ang radio | — |
| Display | Panel ng display | — | Scroll: brightness |
| Power | Panel ng power | I-toggle ang porsyento ng baterya | — |
| Media | I-play/i-pause | Popup ng cover-art | Gitna: susunod · scroll: nakaraan/susunod |
| Agents | Panel ng mga Agent | Ilunsad ang agent mo | Gitna: i-refresh ang usage |
| Tray | Mag-hover para ipakita ang drawer | Mag-right-click sa chevron para pamahalaan | — |
| Omarchy update | Patakbuhin ang update | — | — |

Hindi lahat ng nasa talahanayang iyon ay nasa bar mo agad. Ang media widget (MPRIS now-playing, na may nag-i-scroll na track at artist) at ang microphone widget ay parehong built-in pero naka-off bilang default — idagdag mo sila kung gusto mo, gaya ng inilarawan sa ibaba.

## Ang mga panel

Ang pag-click sa icon ng bar ay nagbubukas ng panel, na isang tamang popup na may mga slider, listahan, at keyboard navigation imbes na tooltip. Bawat isa ay may hotkey din, kaya hindi mo na kailangang tumarget sa isang 16-pixel na glyph:

| Hotkey | Panel |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Network |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Display |
| `Super + Ctrl + P` | Power |
| `Super + Ctrl + Alt + D` | Kalendaryo |
| `Super + Ctrl + Alt + E` | World clock |
| `Super + Ctrl + X` | Mga Agent |
| `Super + Ctrl + 1-9` | I-toggle ang ika-n na panel sa kanang seksyon |

Hindi lang basta readout ang mga panel. Dito mo talaga ginagawa ang bagay:

- **Audio** ay may master volume slider, tagapili ng output-device, at per-app mixer, kaya maaari mong hinaan ang isang tab ng browser na iyon nang hindi nagagalaw ang lahat ng iba pa.
- **Network** ay nag-i-scan para sa Wi-Fi, nagpapakita ng lakas ng signal, kumokonekta, at hinahayaan kang pumili ng DNS provider.
- **Bluetooth** ay naglilista ng iyong mga device na may connect/disconnect at mga antas ng baterya.
- **Power** ay nagpapakita ng stats ng baterya, nagpapalit ng mga power profile (natatandaan nito ang magkahiwalay na pinili para sa baterya at AC), at nagpapakita ng ilang impormasyon ng system.
- **Display** ay may brightness slider, laki ng teksto, mga preset ng scaling ng monitor, at — kapag may higit sa isang screen ka — mga kontrol para sa bawat monitor. Tingnan ang [mga monitor](33-monitors.md) para sa mas malalim na kuwento.
- **Clock** ay nagbubukas ng grid ng buwan na may mga ISO week number at paghakbang sa buwan.
- **World clock** ay nagpapanatili ng isang hilera para sa bawat lungsod, kasama ang panahon nito at kung kumusta ang araw nito. Nakakahanap ang Search ng mga bayan pati na rin ng mga time zone, kaya ang Fort Lauderdale ay Fort Lauderdale at hindi New York. Kung maling lungsod ang pinapangalanan ng linya sa itaas, i-click ito at sabihin kung nasaan ka; pumili ng lugar sa ibang time zone at lilipat din doon ang orasan ng system, na madaling gamitin kapag naglalakbay ka. Mag-hover sa isang lungsod at i-click ang button na tao para sabihin kung sino ang nakatira doon — mga simpleng pangalan, o mga `@` GitHub handle para isama ang kanilang mga mukha.

Bawat panel ay tumatanggap ng keyboard pati na rin ng mouse: gumagalaw ang mga arrow, nag-a-activate ang Return, humahakbang ang Tab papunta sa katabing panel, at nagsasara ang Escape.

Binibilang ng `Super + Ctrl + 1-9` ang mga panel mula kaliwa pakanan sa kanang seksyon, nilalaktawan ang tray dahil wala itong sariling panel. Kaya tumutugma ang numero sa icon na ituturo mo.

### Tailscale at Dropbox

Dalawa pang widget ang lumalabas sa bar kapag na-install mo lang ang tugmang serbisyo mula sa **Install → Service**, at parehong mahalagang malaman dahil higit pa sa pag-uulat ng status ang ginagawa nila.

Ang **Tailscale** panel ay kumokonekta at dumidiskonekta sa tailnet, nagpapalit sa pagitan ng mga account, at pumipili ng exit node (parehong lumalabas sa listahang iyon ang sarili mong mga makina at mga rehiyon ng Mullvad). Nagba-browse din ito ng iyong mga makina — at kapag may napili, ang `s` ay nagpapadala ng mga file papunta rito sa pamamagitan ng Taildrop, na pinakamabilis na paraan para maglipat ng file papunta sa telepono mo o sa ibang laptop. Kinokopya ng `c` ang IP ng makina, ng `n` ang pangalan nito, at ng `d` ang buong DNS name nito. May send button din sa bawat hilera ng makina, kung mas gusto mong mag-click. Ang parehong bagay mula sa terminal ay `omarchy tailscale send <machine> [file...]`.

Ang **Dropbox** panel ang humahawak ng login, nagpapakita kung gaano karaming storage ang nagamit mo, at naglilista ng mga file na kamakailang na-sync.

Ang pag-alis sa alinmang serbisyo ay mag-aalis din ng widget nito mula sa bar.

## Mga tagapagpahiwatig

Ang munting kumpol sa gitna ay ang indicators widget. Ito ay mga glyph ng status para sa mga mode na in-on mo: do not disturb, night light, isang nakabinbing [paalala](09-reminders.md), isang aktibong pag-record ng screen, at stay awake, kasama ang mga babala habang naka-on ang passwordless sudo o may nakakonekta sa isang remote session. Lumiliwanag sila kapag aktibo ang mode at kung hindi ay hindi sila nakahaharang — mag-hover lang sa tabi nila, kung saan uupo ang mga hindi aktibo, para silipin ang mga iyon. Ang pag-click sa isang tagapagpahiwatig ay nagto-toggle ng mode na iyon. Isa pa ay status lang: ang isang remote session ay lumiliwanag na pula habang may nakakonekta sa makinang ito sa pamamagitan ng gliff.

Kung mas gusto mong palagi silang nakikita, itakda ang `alwaysShow` sa `true` sa widget. At kung ilan lang sa kanila ang mahalaga sa iyo, ilista ang mga gusto mo sa `items`: `["Dnd", "Reminder", "NightLight"]`. Maaari kang magkaroon ng higit sa isang indicators widget, kaya maaaring magpakita ang iba't ibang seksyon ng iba't ibang subset.

## Muling pagsasaayos ng bar

Inaayos ng bar ang sarili nito. Hindi mo kailangang magbukas ng config file para ilipat ang mga bagay.

Kumuha ng bakanteng bahagi ng bar sa paligid ng gitna at i-drag ito papunta sa ibang gilid ng screen, at lilipat doon ang bar — gumagana ang kaliwa, kanan, itaas, o ibaba, at umaangkop ang bawat widget (ang mga patayong bar ay bumabalik sa mga compact na anyong icon lang). Ang click-and-hold ay nagsisimula ng parehong pag-drag. Mag-double-left-click sa parehong bakanteng espasyo para palitan nang paikot ang background ng bar mula clear patungong glassy patungong opaque. At i-drag ang anumang widget para muling ayusin ito o ihagis ito sa ibang seksyon; ang ibang mga widget ay dumudulas palayo para magbigay ng espasyo kung saan ito lalapag.

Ang gitna ng bar ay isang kahon: anumang nasa loob nito ay nananatiling nakasentro bilang isang grupo, at ang mga widget sa magkabilang panig nito ay nakasabit sa mga gilid nito. Habang nagda-drag ka ng widget, lumalabas ang kahon bilang isang outline, o isang linya sa bar kapag wala itong laman, at maaari kang mag-drop sa loob nito o sa tabi nito. Kapag ang isang drop ay lalapag sa kahon, lumalaki ang kahon para tanggapin ang widget.

Ang isang widget na gusto mong nasa paligid pero hindi palaging nakikita ay maaaring pumasok sa drawer ng tray: i-drag ito papunta sa tray, at bubukas ang drawer para tanggapin ito. Nakaupo ito roon pagkatapos ng mga icon ng app, lumalabas tuwing lumalabas ang drawer, at pinapanatiling bukas ang drawer nito habang nakataas ang panel nito. I-drag ito pabalik palabas papunta sa bar para ibalik ito.

Kung mas gusto mong pumili mula sa isang menu, nasa **Appearance → Menu Bar** ang posisyon, at pinipili ng **Bar Background** kung paano iginuguhit ang bar: **Opaque Bar**, **Glassy Bar** (see-through, na blurred ang nasa likod nito), o **Clear Bar**.

Ang mga parehong bagay ay may mga command, na siyang gusto mo para sa isang [dotfiles](31-dotfiles.md) setup:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Para magdagdag o mag-alis ng widget nang buo, gamitin ang mga plugin command. Nagpi-print ang `omarchy plugin list` ng bawat widget na alam ng shell kasama ang id nito, at pagkatapos:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Pagtatago ng bar

Tinotoggle ng `Super + Shift + Space` ang bar para i-off at ibalik nang hindi pinapatay ang shell — patuloy na gumagana ang mga panel at hotkey, makukuha mo lang pabalik ang mga pixel. Nasa menu rin ito sa ilalim ng **Appearance → Menu Bar → Hide Bar**.

## Ang config file

Lahat ng ito ay nakaimbak sa `~/.config/omarchy/shell.json`, sa ilalim ng `bar` key. Narito ang isang pinaikling bersyon:

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

Bawat widget ay isang entry sa isa sa limang layout array, at ang mga setting nito ay nakaupo nang inline sa entry na iyon — walang hiwalay na settings file at walang `config` sub-object. Ang `format`, `formatAlt` (kung ano ang pinapalitan nang paikot ng right-click), at `verticalFormat` ng orasan ay lahat nakatira mismo roon sa `{ "id": "omarchy.clock" }`.

Ang `center` ay ang kahon sa gitna ng bar: lahat ng nasa loob nito ay nakasentro sa screen bilang isang grupo. Ang `centerBegin` at `centerEnd` ay nakasabit sa magkabilang panig ng kahon, na siyang dahilan kung paano nananatiling nasa pinakagitna ang orasan kahit dumarating at umaalis ang panahon at badge ng update. Maglagay ng higit sa isang widget sa `center` at magkakasama silang masesentro; iwan itong walang laman at magtatagpo ang `centerBegin` at `centerEnd` sa gitna ng bar.

Isang patakarang mahalagang maisaloob: **kapag may sarili ka nang `shell.json`, ito ang canonical**. Hanggang wala ka pang kino-customize, binabasa ng shell ang default file ng Omarchy. Sa sandaling mag-drag ka ng widget, magpatakbo ng `omarchy bar`, o mag-edit ng file mismo, iyo na ito — walang deep merge, kaya ang mga bagong default widget sa mga susunod na release ng Omarchy ay hindi awtomatikong lilitaw sa bar mo. Ibinabalik ng `omarchy bar defaults` ang inilabas na layout tuwing gusto mo ng malinis na simula.

Ang parehong file ay naglalaman din ng iyong mga idle timing sa top level, sa labas ng `bar` key: `idle.screensaver` at `idle.lock`, parehong nasa segundo mula nang naging idle ka. Kaya ang default screensaver ay pumapasok sa 150 segundo at ang lock sa 300.
