# Üst Çubuk

Ekranınızın üstündeki şerit Omarchy çubuğudur. Üzerine sonradan eklenmiş bir durum çubuğu değil, Omarchy kabuğunun bir parçasıdır; menüyü, bildirimleri, OSD açılır pencerelerini ve kilit ekranını da çizen tek, uzun ömürlü Quickshell sürecidir. Bu yüzden her şeyle kusursuz şekilde tema uyumu sağlar ve bu yüzden bir panel yeni bir uygulama başlatmak yerine anında açılır.

Aynı zamanda masaüstünün her zaman ekranda olan tek parçasıdır, bu yüzden o küçük simgelerin hepsinin ne yaptığını bilmeye değer.

## Varsayılan olarak üzerinde ne var

Çubuğun üç bölümü vardır. Solda Omarchy logosu (menü başlatıcısı) ve çalışma alanı göstergeleri yer alır. Ortada durum göstergelerini, saati, Elsewhen'i (bir dünya saati), hava durumunu ve bir Omarchy güncelleme rozetini görürsünüz. Sağda: sistem tepsisi, klavye düzeni (birden fazla düzen veya giriş yöntemi yapılandırıldığında), ajanlar, bluetooth, ağ, ses, ekran ve güç.

Bunlardan birkaçı yalnızca söyleyecek bir şeyleri olduğunda görünür. Klavye düzeni yalnızca birden fazla düzen veya giriş yöntemi yapılandırdıysanız görünür. Güncelleme rozeti yalnızca bekleyen bir Omarchy güncellemesi olduğunda görünür.

## Orada burada tıklamak

Neredeyse her widget sol, sağ ve orta tıklamada bir şey yapar ve birkaçı kaydırmaya yanıt verir. İnsanların kaçırdığı kısım burasıdır — sağ ve orta düğmelerde pek çok güzel şey saklıdır.

| Widget | Sol | Sağ | Orta / kaydırma |
| --- | --- | --- | --- |
| Menü | Omarchy menüsü | Yeni terminal | — |
| Çalışma Alanları | O çalışma alanına bu monitörde odaklan | — | Kaydırma: sonraki/önceki çalışma alanı |
| Saat | Takvim açılır penceresi | Etiket biçimini döngüyle değiştir | Orta: saat dilimi seçici |
| Dünya saati | Dünya saati paneli | Yenile | Orta: yenile |
| Hava Durumu | Tahmin açılır penceresi | Tam hava durumunu bildirim olarak göster | Orta: yenile |
| Ses | Ses paneli | Sessize al | Orta: panel · kaydırma: ses seviyesi |
| Mikrofon | Mikrofonu sessize al | — | Orta: ses paneli · kaydırma: giriş ses seviyesi |
| Ağ | Ağ paneli | — | — |
| Bluetooth | Bluetooth paneli | Radyoyu aç/kapat | — |
| Ekran | Ekran paneli | — | Kaydırma: parlaklık |
| Güç | Güç paneli | Pil yüzdesini aç/kapat | — |
| Medya | Oynat/duraklat | Kapak resmi açılır penceresi | Orta: sonraki · kaydırma: önceki/sonraki |
| Ajanlar | Ajanlar paneli | Ajanınızı başlat | Orta: kullanımı yenile |
| Tepsi | Çekmeceyi ortaya çıkarmak için üzerine gel | Yönetmek için köşe işaretine sağ tıkla | — |
| Omarchy güncellemesi | Güncellemeyi çalıştır | — | — |

Bu tablodaki her şey kutudan çıktığı haliyle çubuğunuzda değildir. Medya widget'ı (MPRIS şimdi çalıyor, kayan parça ve sanatçı bilgisiyle) ve mikrofon widget'ı ikisi de yerleşik olarak gelir ancak varsayılan olarak kapalıdır — isterseniz aşağıda anlatıldığı gibi ekleyin.

## Paneller

Bir çubuk simgesine tıklamak bir panel açar; bu, bir araç ipucu yerine kaydırıcıları, listeleri ve klavye gezinmesi olan düzgün bir açılır penceredir. Her birinin bir kısayolu da vardır, böylece 16 piksellik bir simgeyi hedeflemek zorunda kalmazsınız:

| Hotkey | Panel |
| --- | --- |
| `Super + Ctrl + A` | Audio |
| `Super + Ctrl + N` | Network |
| `Super + Ctrl + B` | Bluetooth |
| `Super + Ctrl + D` | Display |
| `Super + Ctrl + P` | Power |
| `Super + Ctrl + Alt + D` | Calendar |
| `Super + Ctrl + Alt + E` | World clock |
| `Super + Ctrl + X` | Agents |
| `Super + Ctrl + 1-9` | Toggle the nth panel in the right section |

Paneller salt gösterge değildir. İşinizi asıl yaptığınız yer onlardır:

- **Audio** has a master volume slider, an output-device picker, and a per-app mixer, so you can turn down that one browser tab without touching everything else.
- **Network** scans for Wi-Fi, shows signal strength, connects, and lets you pick a DNS provider.
- **Bluetooth** lists your devices with connect/disconnect and battery levels.
- **Power** shows battery stats, switches power profiles (it remembers a separate choice for battery and AC), and prints some system info.
- **Display** carries a brightness slider, text size, monitor scaling presets, and — when you have more than one screen — per-monitor controls. See [monitörler](33-monitors.md) for the deeper story.
- **Clock** opens a month grid with ISO week numbers and month stepping.
- **World clock** keeps a row per city, with its weather and how its day is going. Search finds towns as well as time zones, so Fort Lauderdale is Fort Lauderdale and not New York. If the line at the top names the wrong city, click it and say where you are; pick somewhere on another time zone and the system clock moves there too, which is handy when you travel. Hover a city and click the person button to say who lives there — plain names, or `@` GitHub handles to bring their faces along.

Her panel fare kadar klavyeyi de kabul eder: ok tuşları hareket eder, Return etkinleştirir, Tab komşu panele adım atar ve Escape kapatır.

`Super + Ctrl + 1-9` sağ bölümdeki panelleri soldan sağa sayar, kendine ait paneli olmadığı için tepsiyi atlar. Böylece numara işaret edeceğiniz simgeyle eşleşir.

### Tailscale ve Dropbox

Çubuğa yalnızca eşleşen hizmeti **Kurulum → Servis** üzerinden kurduktan sonra iki widget daha görünür ve ikisini de bilmeye değer çünkü durum bildirmekten fazlasını yaparlar.

**Tailscale** paneli tailnet'e bağlanır ve bağlantıyı keser, hesaplar arasında geçiş yapar ve bir çıkış düğümü seçer (kendi makineleriniz ve Mullvad bölgelerinin ikisi de o listede görünür). Ayrıca makinelerinize göz atar — ve biri seçiliyken `s` ona Taildrop üzerinden dosya gönderir, bu da telefonunuza veya başka bir dizüstü bilgisayara dosya taşımanın en hızlı yoludur. `c` makinenin IP'sini, `n` adını ve `d` tam DNS adını kopyalar. İsterseniz tıklamak için her makine satırında bir gönder düğmesi de vardır. Terminalden aynı şey `omarchy tailscale send <machine> [file...]` şeklindedir.

**Dropbox** paneli oturum açmayı yönetir, ne kadar depolama kullandığınızı gösterir ve yakın zamanda senkronize edilen dosyaları listeler.

Herhangi bir hizmeti kaldırmak widget'ını çubuktan geri alır.

## Göstergeler

Ortadaki küçük küme göstergeler widget'ıdır. Bunlar açtığınız modlar için durum simgeleridir: rahatsız etme, gece ışığı, kuyruktaki bir [hatırlatıcı](09-reminders.md), aktif bir ekran kaydı ve uyanık kal, ayrıca parolasız sudo açıkken veya biri uzak bir oturuma bağlıyken uyarılar. Mod aktifken yanarlar ve aksi halde yoldan çekilirler — aktif olmayanların oturacağı yerde, hemen yanlarına gelerek onlara göz atın. Bir göstergeye tıklamak o modu açıp kapatır. Bir tane daha yalnızca durum içindir: biri gliff üzerinden bu makineye bağlıyken uzak oturum kırmızı yanar.

Eğer her zaman görünür olmalarını tercih ederseniz, widget üzerinde `alwaysShow` değerini `true` olarak ayarlayın. Ve yalnızca bazılarını önemsiyorsanız, istediklerinizi `items` içinde listeleyin: `["Dnd", "Reminder", "NightLight"]`. Birden fazla göstergeler widget'ına sahip olabilirsiniz, böylece farklı bölümler farklı alt kümeler gösterebilir.

## Çubuğu yeniden düzenlemek

Çubuk kendini yapılandırır. Bir şeyleri taşımak için bir yapılandırma dosyası açmak zorunda değilsiniz.

Çubuğun ortası civarındaki boş bir alanı tutun ve başka bir ekran kenarına doğru sürükleyin, çubuk oraya taşınır — sol, sağ, üst veya alt hepsi çalışır ve her widget uyum sağlar (dikey çubuklar kompakt yalnızca simge biçimlerine geri döner). Tıklayıp basılı tutmak aynı sürüklemeyi başlatır. Aynı boş alana çift sol tıklamak çubuk arka planını şeffaftan camsıya, oradan opak olana döngüyle geçirir. Ve herhangi bir widget'ı yeniden sıralamak veya başka bir bölüme atmak için sürükleyin; diğer widget'lar ineceği yerde yer açmak için ayrılır.

Çubuğun ortası bir kutudur: içinde ne varsa tek bir grup olarak ortalanmış kalır ve iki yanındaki widget'lar kenarlarından sarkar. Bir widget'ı sürüklerken kutu bir anahat olarak, boşken çubuk boyunca bir çizgi olarak görünür ve içine veya yanına bırakabilirsiniz. Bir bırakma kutuya inecekse, kutu widget'ı içine almak için büyür.

Etrafta olmasını istediğiniz ancak her zaman görünürde olmasını istemediğiniz bir widget tepsinin çekmecesine gidebilir: onu tepsinin üzerine sürükleyin, çekmece onu almak için açılır. Uygulama simgelerinden sonra orada durur, çekmece ne zaman görünürse görünür ve paneli açıkken çekmecesini açık tutar. Geri koymak için çubuğa geri sürükleyin.

Menüden seçmeyi tercih ederseniz, **Görünüm → Menü Çubuğu** konum seçeneğini barındırır ve **Çubuk Arka Planı** çubuğun nasıl çizileceğini seçer: **Opak Çubuk**, **Camsı Çubuk** (arkasındakiler bulanıklaştırılmış, saydam) veya **Şeffaf Çubuk**.

Aynı şeylerin komutları da vardır, ki bu bir [dotfiles](31-dotfiles.md) kurulumu için isteyeceğiniz şeydir:

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Bir widget'ı tamamen eklemek veya kaldırmak için eklenti komutlarını kullanın. `omarchy plugin list` kabuğun bildiği her widget'ı id'siyle birlikte yazdırır ve ardından:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Çubuğu gizlemek

`Super + Shift + Space` kabuğu öldürmeden çubuğu kapatır ve geri açar — paneller ve kısayollar çalışmaya devam eder, yalnızca pikselleri geri alırsınız. Menüde **Görünüm → Menü Çubuğu → Çubuğu Gizle** altında da bulunur.

## Yapılandırma dosyası

Bunların hepsi `~/.config/omarchy/shell.json` içinde, `bar` anahtarı altında saklanır. İşte kısaltılmış bir sürüm:

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

Her widget beş düzen dizisinden birinde tek bir girdidir ve ayarları o girdinin üzerinde satır içinde durur — ayrı bir ayar dosyası ve `config` alt nesnesi yoktur. Saatin `format`, `formatAlt` (sağ tıklamanın döngüyle geçtiği şey) ve `verticalFormat` değerlerinin hepsi tam orada `{ "id": "omarchy.clock" }` üzerinde yaşar.

`center` çubuğun ortasındaki kutudur: içindeki her şey tek bir grup olarak ekranda ortalanır. `centerBegin` ve `centerEnd` kutunun iki yanından sarkar, bu da saat hava durumu ve güncelleme rozeti gelip giderken bile saatin tam ortada kalmasını sağlar. `center` içine birden fazla widget koyarsanız birlikte ortalanırlar; boş bırakırsanız `centerBegin` ve `centerEnd` çubuğun ortasında buluşur.

İçselleştirmeye değer bir kural: **kendi `shell.json` dosyanız olduktan sonra, o kanoniktir**. Hiçbir şeyi özelleştirene kadar kabuk Omarchy'nin varsayılan dosyasını okur. Bir widget'ı sürüklediğiniz, `omarchy bar` çalıştırdığınız veya dosyayı kendiniz düzenlediğiniz anda o sizindir — derin birleştirme yoktur, bu yüzden gelecekteki Omarchy sürümlerindeki yeni varsayılan widget'lar çubuğunuzda otomatik olarak görünmez. `omarchy bar defaults` istediğinizde temiz bir sayfa için gönderilen düzeni geri koyar.

Aynı dosya, `bar` anahtarının dışında, en üst seviyede boşta kalma zamanlamalarınızı da tutar: `idle.screensaver` ve `idle.lock`, ikisi de boşta kaldığınızdan beri geçen saniye cinsindendir. Böylece varsayılan ekran koruyucu 150 saniyede ve kilit 300 saniyede devreye girer.
