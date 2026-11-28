# Bar Atas

Strip di sepanjang bagian atas layar Anda adalah bar Omarchy. Ini bukan bar status yang ditempel begitu saja, melainkan bagian dari shell Omarchy, satu proses Quickshell yang berjalan terus dan juga menggambar menu, notifikasi, popup OSD, dan layar kunci. Itulah sebabnya temanya selaras sempurna dengan segala hal lain dan mengapa panel terbuka seketika alih-alih memunculkan aplikasi baru.

Ini juga satu-satunya bagian desktop yang selalu tampil di layar, jadi layak diketahui apa fungsi semua glif kecil itu.

## Apa saja yang ada di dalamnya secara default

Bar ini memiliki tiga bagian. Di sebelah kiri terdapat logo Omarchy (peluncur menu) dan indikator workspace. Di tengah Anda mendapatkan indikator status, jam, Elsewhen (jam dunia), cuaca, dan badge pembaruan Omarchy. Di sebelah kanan: baki sistem, tata letak keyboard (ketika lebih dari satu tata letak atau metode input dikonfigurasi), agents, bluetooth, jaringan, audio, tampilan, dan daya.

Beberapa di antaranya hanya muncul ketika ada sesuatu yang perlu disampaikan. Tata letak keyboard hanya muncul jika Anda telah mengonfigurasi lebih dari satu tata letak atau metode input. Badge pembaruan hanya muncul ketika ada pembaruan Omarchy yang menunggu.

## Mengklik ke sana-sini

Hampir setiap widget melakukan sesuatu pada klik kiri, kanan, dan tengah, dan beberapa merespons guliran. Inilah bagian yang dilewatkan banyak orang — tombol kanan dan tengah adalah tempat banyak hal bagus bersembunyi.

| Widget | Kiri | Kanan | Tengah / gulir |
| --- | --- | --- | --- |
| Menu | Menu Omarchy | Terminal baru | — |
| Workspace | Fokus ke workspace itu di monitor ini | — | Gulir: workspace berikutnya/sebelumnya |
| Jam | Popup kalender | Siklus format label | Tengah: pemilih zona waktu |
| Jam dunia | Panel jam dunia | Segarkan | Tengah: segarkan |
| Cuaca | Popup prakiraan | Cuaca lengkap sebagai notifikasi | Tengah: segarkan |
| Audio | Panel audio | Bisukan | Tengah: panel · gulir: volume |
| Mikrofon | Bisukan mic | — | Tengah: panel audio · gulir: volume input |
| Jaringan | Panel jaringan | — | — |
| Bluetooth | Panel Bluetooth | Aktif/nonaktifkan radio | — |
| Tampilan | Panel tampilan | — | Gulir: kecerahan |
| Daya | Panel daya | Aktif/nonaktifkan persentase baterai | — |
| Media | Putar/jeda | Popup sampul album | Tengah: berikutnya · gulir: sebelumnya/berikutnya |
| Agents | Panel Agents | Luncurkan agent Anda | Tengah: segarkan penggunaan |
| Tray | Arahkan kursor untuk menampilkan laci | Klik kanan pada chevron untuk mengelola | — |
| Pembaruan Omarchy | Jalankan pembaruan | — | — |

Tidak semua yang ada di tabel itu ada di bar Anda sejak awal. Widget media (MPRIS yang sedang diputar, dengan trek dan artis yang bergulir) dan widget mikrofon keduanya bawaan tetapi nonaktif secara default — tambahkan jika Anda menginginkannya, seperti dijelaskan di bawah ini.

## Panel-panelnya

Mengklik ikon bar membuka panel, yaitu popup yang sesungguhnya dengan slider, daftar, dan navigasi keyboard alih-alih tooltip. Masing-masing juga memiliki hotkey, jadi Anda tidak perlu membidik glif 16 piksel:

| Hotkey | Panel |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Jaringan |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Tampilan |
| `Super + Ctrl + P` | Daya |
| `Super + Ctrl + Alt + D` | Kalender |
| `Super + Ctrl + Alt + E` | Jam dunia |
| `Super + Ctrl + X` | Agents |
| `Super + Ctrl + 1-9` | Aktif/nonaktifkan panel ke-n di bagian kanan |

Panel-panel ini bukan sekadar tampilan baca. Di sinilah Anda benar-benar melakukan sesuatu:

- **Audio** memiliki slider volume utama, pemilih perangkat output, dan mixer per aplikasi, jadi Anda dapat menurunkan volume satu tab browser itu tanpa menyentuh yang lainnya.
- **Jaringan** memindai Wi-Fi, menampilkan kekuatan sinyal, menghubungkan, dan memungkinkan Anda memilih penyedia DNS.
- **Bluetooth** mencantumkan perangkat Anda dengan sambung/putus dan tingkat baterai.
- **Daya** menampilkan statistik baterai, mengganti profil daya (ia mengingat pilihan terpisah untuk baterai dan AC), dan mencetak beberapa info sistem.
- **Tampilan** membawa slider kecerahan, ukuran teks, preset penskalaan monitor, dan — ketika Anda memiliki lebih dari satu layar — kontrol per monitor. Lihat [monitor](33-monitors.md) untuk cerita yang lebih mendalam.
- **Jam** membuka kisi bulan dengan nomor minggu ISO dan perpindahan bulan.
- **Jam dunia** menyimpan satu baris per kota, dengan cuacanya dan bagaimana harinya berjalan. Pencarian menemukan kota maupun zona waktu, jadi Fort Lauderdale adalah Fort Lauderdale dan bukan New York. Jika baris di bagian atas menyebutkan kota yang salah, klik baris itu dan katakan di mana Anda berada; pilih tempat di zona waktu lain dan jam sistem ikut berpindah ke sana, yang praktis ketika Anda bepergian. Arahkan kursor ke sebuah kota dan klik tombol orang untuk mengatakan siapa yang tinggal di sana — nama biasa, atau handle GitHub `@` untuk membawa serta wajah mereka.

Setiap panel menerima keyboard maupun mouse: tombol panah untuk bergerak, Return untuk mengaktifkan, Tab untuk melangkah ke panel sebelah, dan Escape untuk menutup.

`Super + Ctrl + 1-9` menghitung panel dari kiri ke kanan di bagian kanan, melewati tray karena ia tidak memiliki panel sendiri. Jadi angkanya cocok dengan ikon yang akan Anda tunjuk.

### Tailscale dan Dropbox

Dua widget lagi muncul di bar hanya setelah Anda menginstal layanan yang cocok dari **Instal → Layanan**, dan keduanya layak diketahui karena fungsinya lebih dari sekadar melaporkan status.

Panel **Tailscale** menyambungkan dan memutuskan tailnet, beralih antar akun, dan memilih exit node (mesin Anda sendiri dan wilayah Mullvad sama-sama muncul dalam daftar itu). Panel ini juga menelusuri mesin Anda — dan dengan satu mesin terpilih, `s` mengirim file kepadanya melalui Taildrop, yang merupakan cara tercepat untuk memindahkan file ke ponsel atau laptop lain Anda. `c` menyalin IP mesin, `n` namanya, dan `d` nama DNS lengkapnya. Ada juga tombol kirim pada setiap baris mesin, jika Anda lebih suka mengklik. Hal yang sama dari terminal adalah `omarchy tailscale send <machine> [file...]`.

Panel **Dropbox** menangani login, menampilkan berapa banyak penyimpanan yang telah Anda gunakan, dan mencantumkan file yang baru disinkronkan.

Menghapus salah satu layanan akan menghilangkan widgetnya kembali dari bar.

## Indikator

Kelompok kecil di tengah adalah widget indikator. Ini adalah glif status untuk mode yang telah Anda aktifkan: jangan ganggu, lampu malam, [pengingat](09-reminders.md) yang mengantre, perekaman layar yang aktif, dan tetap terjaga, ditambah peringatan selama sudo tanpa kata sandi aktif atau seseorang terhubung ke sesi jarak jauh. Glif-glif ini menyala ketika mode aktif dan sebaliknya tidak mengganggu — arahkan kursor tepat di sebelahnya, di tempat yang tidak aktif akan berada, untuk mengintip yang tidak aktif itu. Mengklik indikator akan mengaktifkan/menonaktifkan mode itu. Satu lagi hanya status: sesi jarak jauh menyala merah selama seseorang terhubung ke mesin ini melalui gliff.

Jika Anda lebih suka glif-glif itu selalu terlihat, tetapkan `alwaysShow` ke `true` pada widget. Dan jika Anda hanya peduli pada beberapa di antaranya, cantumkan yang Anda inginkan dalam `items`: `["Dnd", "Reminder", "NightLight"]`. Anda dapat memiliki lebih dari satu widget indikator, jadi bagian yang berbeda dapat menampilkan subset yang berbeda.

## Menata ulang bar

Bar ini mengonfigurasi dirinya sendiri. Anda tidak perlu membuka file konfigurasi untuk memindahkan sesuatu.

Ambil bagian kosong bar di sekitar tengah dan seret ke arah tepi layar lain, dan bar akan berpindah ke sana — kiri, kanan, atas, atau bawah semuanya berfungsi, dan setiap widget beradaptasi (bar vertikal kembali ke bentuk ringkas hanya-ikon). Klik-dan-tahan memulai seretan yang sama. Klik kiri dua kali pada ruang kosong yang sama untuk menggilir latar belakang bar dari bening ke seperti kaca ke buram. Dan seret widget apa pun untuk menyusun ulang atau melemparkannya ke bagian lain; widget lain akan bergeser membuka ruang di tempat ia akan mendarat.

Tengah bar adalah sebuah kotak: apa pun yang ada di dalamnya tetap terpusat sebagai satu kelompok, dan widget di kedua sisinya menggantung dari tepi-tepinya. Saat Anda menyeret widget, kotak tampil sebagai garis luar, atau garis melintasi bar ketika kosong, dan Anda dapat menjatuhkan ke dalamnya atau di sebelahnya. Ketika jatuhan akan mendarat di dalam kotak, kotak membesar untuk menerima widget itu.

Widget yang Anda inginkan ada di sekitar tetapi tidak selalu terlihat dapat masuk ke laci tray: seret ke atas tray, dan laci terbuka untuk menerimanya. Ia berada di sana setelah ikon aplikasi, muncul setiap kali laci muncul, dan menjaga lacinya tetap terbuka selama panelnya tampil. Seret kembali keluar ke bar untuk mengembalikannya.

Jika Anda lebih suka memilih dari menu, **Tampilan → Bar Menu** memiliki posisi, dan **Latar Belakang Bar** memilih cara bar digambar: **Bar Buram**, **Bar Seperti Kaca** (tembus pandang, dengan yang di belakangnya diburamkan), atau **Bar Bening**.

Hal yang sama memiliki perintah, yang merupakan yang Anda inginkan untuk penyiapan [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Untuk menambahkan atau menghapus widget sepenuhnya, gunakan perintah plugin. `omarchy plugin list` mencetak setiap widget yang diketahui shell beserta id-nya, lalu:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Menyembunyikan bar

`Super + Shift + Space` mengaktifkan/menonaktifkan bar tanpa mematikan shell — panel dan hotkey tetap berfungsi, Anda hanya mendapatkan kembali pikselnya. Ini juga ada di menu di bawah **Tampilan → Bar Menu → Sembunyikan Bar**.

## File konfigurasi

Semua disimpan di `~/.config/omarchy/shell.json`, di bawah kunci `bar`. Berikut versi yang dipangkas:

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

Setiap widget adalah satu entri dalam satu dari lima array tata letak, dan pengaturannya berada sebaris pada entri itu — tidak ada file pengaturan terpisah dan tidak ada sub-objek `config`. `format`, `formatAlt` (yang digilir oleh klik kanan), dan `verticalFormat` milik jam semuanya berada tepat di sana pada `{ "id": "omarchy.clock" }`.

`center` adalah kotak di tengah bar: semua yang ada di dalamnya terpusat di layar sebagai satu kelompok. `centerBegin` dan `centerEnd` menggantung di kedua sisi kotak, begitulah jam tetap berada tepat di tengah bahkan saat cuaca dan badge pembaruan datang dan pergi. Taruh lebih dari satu widget di `center` dan mereka terpusat bersama; biarkan kosong dan `centerBegin` serta `centerEnd` bertemu di tengah bar.

Satu aturan yang layak diinternalisasi: **setelah Anda memiliki `shell.json` sendiri, file itu kanonis**. Hingga Anda menyesuaikan apa pun, shell membaca file default Omarchy. Begitu Anda menyeret widget, menjalankan `omarchy bar`, atau mengedit file sendiri, Anda memilikinya — tidak ada penggabungan mendalam, jadi widget default baru dalam rilis Omarchy mendatang tidak akan tampil di bar Anda secara otomatis. `omarchy bar defaults` mengembalikan tata letak bawaan kapan pun Anda menginginkan awal yang bersih.

File yang sama juga menyimpan pengaturan waktu idle Anda di tingkat atas, di luar kunci `bar`: `idle.screensaver` dan `idle.lock`, keduanya dalam detik sejak Anda idle. Jadi screensaver default aktif pada 150 detik dan kunci pada 300 detik.
