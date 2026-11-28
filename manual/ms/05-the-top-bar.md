# Bar Atas

Jalur di sepanjang bahagian atas skrin anda ialah bar Omarchy. Ia bukan bar status yang dipasang kemudian tetapi sebahagian daripada shell Omarchy, proses Quickshell tunggal yang berjalan lama yang turut melukis menu, pemberitahuan, popup OSD, dan skrin kunci. Sebab itulah temanya sepadan sempurna dengan segala-galanya yang lain dan sebabnya panel terbuka serta-merta dan bukannya melancarkan aplikasi baharu.

Ia juga satu-satunya bahagian desktop yang sentiasa berada di skrin, jadi berbaloi untuk mengetahui fungsi semua glif kecil itu.

## Apa yang ada padanya secara lalai

Bar mempunyai tiga bahagian. Di sebelah kiri terletak logo Omarchy (pelancar menu) dan penunjuk ruang kerja. Di tengah anda mendapat penunjuk status, jam, Elsewhen (jam dunia), cuaca, dan lencana kemas kini Omarchy. Di sebelah kanan: dulang sistem, susun atur papan kekunci (apabila lebih daripada satu susun atur atau kaedah input dikonfigurasikan), ejen, bluetooth, rangkaian, audio, paparan, dan kuasa.

Beberapa daripadanya hanya muncul apabila mereka mempunyai sesuatu untuk diberitahu. Susun atur papan kekunci hanya muncul jika anda telah mengkonfigurasikan lebih daripada satu susun atur atau kaedah input. Lencana kemas kini hanya muncul apabila terdapat kemas kini Omarchy yang menunggu.

## Mengklik di sana sini

Hampir setiap widget melakukan sesuatu apabila diklik kiri, kanan, dan tengah, dan beberapa widget bertindak balas terhadap skrol. Inilah bahagian yang terlepas pandang oleh ramai orang — butang kanan dan tengah ialah tempat banyak perkara menarik tersembunyi.

| Widget | Kiri | Kanan | Tengah / skrol |
| --- | --- | --- | --- |
| Menu | Menu Omarchy | Terminal baharu | — |
| Ruang kerja | Fokuskan ruang kerja itu pada monitor ini | — | Skrol: ruang kerja seterusnya/sebelumnya |
| Jam | Popup kalendar | Kitar format label | Tengah: pemilih zon waktu |
| Jam dunia | Panel jam dunia | Segar semula | Tengah: segar semula |
| Cuaca | Popup ramalan | Cuaca penuh sebagai pemberitahuan | Tengah: segar semula |
| Audio | Panel audio | Senyap | Tengah: panel · skrol: kelantangan |
| Mikrofon | Senyapkan mikrofon | — | Tengah: panel audio · skrol: kelantangan input |
| Rangkaian | Panel rangkaian | — | — |
| Bluetooth | Panel Bluetooth | Togol radio | — |
| Paparan | Panel paparan | — | Skrol: kecerahan |
| Kuasa | Panel kuasa | Togol peratusan bateri | — |
| Media | Main/jeda | Popup kulit album | Tengah: seterusnya · skrol: sebelumnya/seterusnya |
| Ejen | Panel ejen | Lancarkan ejen anda | Tengah: segar semula penggunaan |
| Dulang | Hover untuk mendedahkan laci | Klik kanan pada chevron untuk mengurus | — |
| Kemas kini Omarchy | Jalankan kemas kini | — | — |

Tidak semua dalam jadual itu ada pada bar anda dari awal. Widget media (MPRIS kini dimainkan, dengan trek dan artis yang menatal) dan widget mikrofon kedua-duanya terbina dalam tetapi dimatikan secara lalai — tambahkannya jika anda mahukannya, seperti yang diterangkan di bawah.

## Panel-panel

Mengklik ikon bar membuka panel, iaitu popup sebenar dengan peluncur, senarai, dan navigasi papan kekunci dan bukannya tooltip. Setiap satu juga mempunyai hotkey, jadi anda tidak perlu menyasarkan glif 16 piksel:

| Hotkey | Panel |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Rangkaian |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Paparan |
| `Super + Ctrl + P` | Kuasa |
| `Super + Ctrl + Alt + D` | Kalendar |
| `Super + Ctrl + Alt + E` | Jam dunia |
| `Super + Ctrl + X` | Ejen |
| `Super + Ctrl + 1-9` | Togol panel ke-n dalam bahagian kanan |

Panel-panel ini bukan sekadar paparan bacaan. Di sinilah anda benar-benar melakukan perkara itu:

- **Audio** mempunyai peluncur kelantangan utama, pemilih peranti output, dan pengadun per aplikasi, supaya anda boleh memperlahankan satu tab pelayar itu tanpa menyentuh yang lain.
- **Rangkaian** mengimbas Wi-Fi, menunjukkan kekuatan isyarat, menyambung, dan membolehkan anda memilih penyedia DNS.
- **Bluetooth** menyenaraikan peranti anda dengan sambung/putuskan dan paras bateri.
- **Kuasa** menunjukkan statistik bateri, menukar profil kuasa (ia mengingati pilihan berasingan untuk bateri dan AC), dan memaparkan beberapa maklumat sistem.
- **Paparan** membawa peluncur kecerahan, saiz teks, pratetap penskalaan monitor, dan — apabila anda mempunyai lebih daripada satu skrin — kawalan per monitor. Lihat [monitor](33-monitors.md) untuk cerita yang lebih mendalam.
- **Jam** membuka grid bulan dengan nombor minggu ISO dan langkah bulan.
- **Jam dunia** mengekalkan satu baris bagi setiap bandar, dengan cuacanya dan bagaimana perjalanan harinya. Carian menemui pekan dan juga zon waktu, jadi Fort Lauderdale ialah Fort Lauderdale dan bukan New York. Jika baris di bahagian atas menamakan bandar yang salah, klik padanya dan beritahu di mana anda berada; pilih tempat di zon waktu lain dan jam sistem juga bergerak ke sana, yang berguna apabila anda melancong. Hover pada sebuah bandar dan klik butang orang untuk memberitahu siapa yang tinggal di sana — nama biasa, atau pemegang GitHub `@` untuk membawa wajah mereka bersama.

Setiap panel menerima papan kekunci serta tetikus: kekunci anak panah bergerak, Return mengaktifkan, Tab melangkah ke panel berjiran, dan Escape menutup.

`Super + Ctrl + 1-9` mengira panel dari kiri ke kanan dalam bahagian kanan, melangkau dulang kerana ia tiada panel sendiri. Jadi nombor itu sepadan dengan ikon yang akan anda tuju.

### Tailscale dan Dropbox

Dua lagi widget muncul pada bar hanya setelah anda memasang perkhidmatan yang sepadan daripada **Install → Service**, dan kedua-duanya berbaloi untuk diketahui kerana ia melakukan lebih daripada sekadar melaporkan status.

Panel **Tailscale** menyambung dan memutuskan tailnet, bertukar antara akaun, dan memilih nod keluar (mesin anda sendiri dan wilayah Mullvad kedua-duanya muncul dalam senarai itu). Ia juga melayari mesin anda — dan dengan satu mesin dipilih, `s` menghantar fail kepadanya melalui Taildrop, yang merupakan cara terpantas untuk memindahkan fail ke telefon atau laptop lain anda. `c` menyalin IP mesin, `n` namanya, dan `d` nama DNS penuhnya. Terdapat juga butang hantar pada setiap baris mesin, jika anda lebih suka mengklik. Perkara yang sama dari terminal ialah `omarchy tailscale send <machine> [file...]`.

Panel **Dropbox** mengendalikan log masuk, menunjukkan berapa banyak storan yang telah anda gunakan, dan menyenaraikan fail yang baru disegerakkan.

Mengalih keluar mana-mana perkhidmatan akan mengeluarkan widgetnya semula daripada bar.

## Penunjuk

Kelompok kecil di tengah ialah widget penunjuk. Ini ialah glif status untuk mod yang telah anda hidupkan: jangan ganggu, lampu malam, [peringatan](09-reminders.md) yang beratur, rakaman skrin yang aktif, dan kekal berjaga, serta amaran semasa sudo tanpa kata laluan dihidupkan atau seseorang disambungkan ke sesi jauh. Ia menyala apabila mod aktif dan sebaliknya tidak mengganggu — hover betul-betul di sebelahnya, di tempat yang tidak aktif akan berada, untuk mengintipnya. Mengklik penunjuk menogol mod itu. Satu lagi hanya status: sesi jauh menyala merah semasa seseorang disambungkan ke mesin ini melalui gliff.

Jika anda lebih suka ia sentiasa kelihatan, tetapkan `alwaysShow` kepada `true` pada widget. Dan jika anda hanya mengambil berat tentang sebahagiannya, senaraikan yang anda mahu dalam `items`: `["Dnd", "Reminder", "NightLight"]`. Anda boleh mempunyai lebih daripada satu widget penunjuk, supaya bahagian yang berbeza boleh menunjukkan subset yang berbeza.

## Menyusun semula bar

Bar mengkonfigurasikan dirinya sendiri. Anda tidak perlu membuka fail konfigurasi untuk mengalihkan sesuatu.

Ambil kawasan kosong bar di sekitar tengah dan seretnya ke arah tepi skrin lain, dan bar bergerak ke sana — kiri, kanan, atas, atau bawah semuanya berfungsi, dan setiap widget menyesuaikan diri (bar menegak kembali kepada bentuk padat ikon sahaja). Klik dan tahan memulakan seretan yang sama. Klik dua kali kiri pada ruang kosong yang sama untuk mengitar latar belakang bar daripada jernih kepada berkaca kepada legap. Dan seret mana-mana widget untuk menyusun semulanya atau campakkannya ke bahagian lain; widget lain menggelongsor berjauhan untuk memberi ruang di tempat ia akan diletakkan.

Bahagian tengah bar ialah sebuah kotak: apa sahaja di dalamnya kekal berpusat sebagai satu kumpulan, dan widget di kedua-dua belah tergantung pada tepinya. Semasa anda menyeret widget kotak itu muncul sebagai garis luar, atau garisan merentasi bar apabila ia kosong, dan anda boleh menjatuhkannya ke dalamnya atau di sebelahnya. Apabila jatuhan akan mendarat dalam kotak, kotak itu membesar untuk mengambil widget itu masuk.

Widget yang anda mahu ada tetapi tidak sentiasa kelihatan boleh masuk ke dalam laci dulang: seretnya ke atas dulang, dan laci terbuka untuk menerimanya. Ia terletak di sana selepas ikon aplikasi, muncul setiap kali laci muncul, dan memastikan lacinya terbuka semasa panelnya dibuka. Seretnya semula keluar ke bar untuk meletakkannya kembali.

Jika anda lebih suka memilih daripada menu, **Appearance → Menu Bar** mempunyai kedudukan, dan **Bar Background** memilih cara bar dilukis: **Opaque Bar**, **Glassy Bar** (telus, dengan apa yang di belakangnya dikaburkan), atau **Clear Bar**.

Perkara yang sama mempunyai arahan, yang merupakan apa yang anda mahu untuk persediaan [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Untuk menambah atau mengalih keluar widget sepenuhnya, gunakan arahan plugin. `omarchy plugin list` mencetak setiap widget yang diketahui shell beserta idnya, dan kemudian:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Menyembunyikan bar

`Super + Shift + Space` menogol bar mati dan hidup semula tanpa membunuh shell — panel dan hotkey terus berfungsi, anda hanya mendapat kembali piksel. Ia juga ada dalam menu di bawah **Appearance → Menu Bar → Hide Bar**.

## Fail konfigurasi

Semuanya disimpan dalam `~/.config/omarchy/shell.json`, di bawah kunci `bar`. Berikut ialah versi yang dipendekkan:

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

Setiap widget ialah satu entri dalam salah satu daripada lima tatasusunan susun atur, dan tetapannya terletak sebaris pada entri itu — tiada fail tetapan berasingan dan tiada sub-objek `config`. `format`, `formatAlt` (apa yang dikitar oleh klik kanan), dan `verticalFormat` jam semuanya berada di sana pada `{ "id": "omarchy.clock" }`.

`center` ialah kotak di tengah bar: segala-galanya di dalamnya berpusat pada skrin sebagai satu kumpulan. `centerBegin` dan `centerEnd` tergantung pada kedua-dua belah kotak, yang merupakan cara jam kekal tepat di tengah walaupun cuaca dan lencana kemas kini datang dan pergi. Letakkan lebih daripada satu widget dalam `center` dan ia berpusat bersama; biarkannya kosong dan `centerBegin` dan `centerEnd` bertemu di tengah bar.

Satu peraturan yang berbaloi untuk dihayati: **sebaik sahaja anda mempunyai `shell.json` anda sendiri, ia adalah kanonik**. Sehingga anda menyesuaikan apa-apa, shell membaca fail lalai Omarchy. Sebaik sahaja anda menyeret widget, menjalankan `omarchy bar`, atau mengedit fail sendiri, anda memilikinya — tiada penggabungan mendalam, jadi widget lalai baharu dalam keluaran Omarchy akan datang tidak akan muncul pada bar anda secara automatik. `omarchy bar defaults` meletakkan semula susun atur asal yang disertakan bila-bila masa anda mahu bermula semula dari kosong.

Fail yang sama juga menyimpan pemasaan melahu anda pada aras atas, di luar kunci `bar`: `idle.screensaver` dan `idle.lock`, kedua-duanya dalam saat sejak anda melahu. Jadi screensaver lalai mula pada 150 saat dan kunci pada 300.
