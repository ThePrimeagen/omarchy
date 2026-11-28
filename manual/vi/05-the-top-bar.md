# Thanh trên cùng

Dải dọc theo cạnh trên màn hình của bạn là thanh Omarchy. Nó không phải một thanh trạng thái được gắn thêm vào, mà là một phần của shell Omarchy, tiến trình Quickshell duy nhất chạy lâu dài, cũng là tiến trình vẽ menu, các thông báo, các cửa sổ bật lên OSD và màn hình khóa. Đó là lý do nó khớp chủ đề hoàn hảo với mọi thứ khác và lý do một panel mở ra ngay lập tức thay vì khởi chạy một ứng dụng mới.

Nó cũng là phần duy nhất của desktop luôn hiển thị trên màn hình, vì vậy đáng để biết tất cả những glyph nhỏ đó làm gì.

## Những gì có trên đó theo mặc định

Thanh có ba phần. Ở bên trái là logo Omarchy (trình khởi chạy menu) và các chỉ báo workspace. Ở giữa bạn có các chỉ báo trạng thái, đồng hồ, Elsewhen (một đồng hồ thế giới), thời tiết và huy hiệu cập nhật Omarchy. Ở bên phải: khay hệ thống, bố cục bàn phím (khi có nhiều hơn một bố cục hoặc phương thức nhập được cấu hình), agents, bluetooth, mạng, âm thanh, màn hình và nguồn điện.

Một vài trong số đó chỉ xuất hiện khi chúng có điều gì đó để nói. Bố cục bàn phím chỉ xuất hiện nếu bạn đã cấu hình nhiều hơn một bố cục hoặc phương thức nhập. Huy hiệu cập nhật chỉ xuất hiện khi có một bản cập nhật Omarchy đang chờ.

## Nhấp chuột xung quanh

Hầu như mọi widget đều làm điều gì đó khi nhấp trái, phải và giữa, và một số còn phản hồi khi cuộn. Đây là phần mọi người bỏ lỡ — nút phải và nút giữa là nơi ẩn giấu nhiều thứ hay ho.

| Widget | Nhấp trái | Nhấp phải | Nhấp giữa / cuộn |
| --- | --- | --- | --- |
| Menu | Menu Omarchy | Terminal mới | — |
| Workspaces | Tập trung vào workspace đó trên màn hình này | — | Cuộn: workspace tiếp theo/trước |
| Clock | Cửa sổ bật lên lịch | Chuyển đổi định dạng nhãn | Nhấp giữa: bộ chọn múi giờ |
| World clock | Panel đồng hồ thế giới | Làm mới | Nhấp giữa: làm mới |
| Weather | Cửa sổ bật lên dự báo | Thời tiết đầy đủ dưới dạng thông báo | Nhấp giữa: làm mới |
| Audio | Panel âm thanh | Tắt tiếng | Nhấp giữa: panel · cuộn: âm lượng |
| Microphone | Tắt tiếng mic | — | Nhấp giữa: panel âm thanh · cuộn: âm lượng đầu vào |
| Network | Panel mạng | — | — |
| Bluetooth | Panel Bluetooth | Bật/tắt radio | — |
| Display | Panel màn hình | — | Cuộn: độ sáng |
| Power | Panel nguồn điện | Bật/tắt phần trăm pin | — |
| Media | Phát/tạm dừng | Cửa sổ bật lên ảnh bìa | Nhấp giữa: tiếp theo · cuộn: trước/tiếp theo |
| Agents | Panel Agents | Khởi chạy agent của bạn | Nhấp giữa: làm mới mức sử dụng |
| Tray | Di chuột để hiện ngăn kéo | Nhấp phải vào chevron để quản lý | — |
| Omarchy update | Chạy cập nhật | — | — |

Không phải mọi thứ trong bảng đó đều có trên thanh của bạn ngay từ đầu. Widget media (MPRIS đang phát, với track và nghệ sĩ cuộn) và widget microphone đều được tích hợp sẵn nhưng tắt theo mặc định — hãy thêm chúng nếu bạn muốn, như mô tả bên dưới.

## Các panel

Nhấp vào một biểu tượng trên thanh sẽ mở một panel, đó là một cửa sổ bật lên đúng nghĩa với các thanh trượt, danh sách và điều hướng bằng bàn phím chứ không phải một tooltip. Mỗi panel cũng có một phím tắt, vì vậy bạn không bao giờ phải nhắm vào một glyph 16 pixel:

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
| `Super + Ctrl + 1-9` | Bật/tắt panel thứ n trong phần bên phải |

Các panel không phải là bảng đọc số liệu. Chúng là nơi bạn thực sự làm việc đó:

- **Audio** có một thanh trượt âm lượng chính, một bộ chọn thiết bị đầu ra và một bộ trộn theo ứng dụng, vì vậy bạn có thể giảm âm lượng của tab trình duyệt đó mà không động đến mọi thứ khác.
- **Network** quét Wi-Fi, hiển thị cường độ tín hiệu, kết nối và cho phép bạn chọn một nhà cung cấp DNS.
- **Bluetooth** liệt kê các thiết bị của bạn với kết nối/ngắt kết nối và mức pin.
- **Power** hiển thị thống kê pin, chuyển đổi các cấu hình nguồn điện (nó ghi nhớ một lựa chọn riêng cho pin và AC), và in ra một số thông tin hệ thống.
- **Display** mang theo một thanh trượt độ sáng, kích thước văn bản, các preset tỉ lệ màn hình, và — khi bạn có nhiều hơn một màn hình — các điều khiển cho từng màn hình. Xem [màn hình](33-monitors.md) để biết câu chuyện sâu hơn.
- **Clock** mở một lưới tháng với số tuần ISO và chuyển bước theo tháng.
- **World clock** giữ một hàng cho mỗi thành phố, với thời tiết của nó và ngày của nó đang diễn ra thế nào. Tìm kiếm tìm thấy các thị trấn cũng như các múi giờ, vì vậy Fort Lauderdale là Fort Lauderdale chứ không phải New York. Nếu dòng ở trên cùng nêu sai thành phố, hãy nhấp vào nó và cho biết bạn đang ở đâu; chọn một nơi ở múi giờ khác và đồng hồ hệ thống cũng di chuyển đến đó, điều này rất tiện khi bạn đi du lịch. Di chuột qua một thành phố và nhấp vào nút hình người để cho biết ai sống ở đó — tên thuần túy, hoặc handle GitHub `@` để mang theo khuôn mặt của họ.

Mọi panel đều tiếp nhận bàn phím cũng như chuột: các phím mũi tên di chuyển, Return kích hoạt, Tab chuyển sang panel kề bên, và Escape đóng.

`Super + Ctrl + 1-9` đếm các panel từ trái sang phải trong phần bên phải, bỏ qua khay vì nó không có panel riêng. Vì vậy con số khớp với biểu tượng bạn sẽ chỉ vào.

### Tailscale và Dropbox

Hai widget nữa xuất hiện trên thanh chỉ khi bạn cài đặt dịch vụ tương ứng từ **Install → Service**, và cả hai đều đáng biết vì chúng làm được nhiều hơn là báo cáo trạng thái.

Panel **Tailscale** kết nối và ngắt kết nối tailnet, chuyển đổi giữa các tài khoản, và chọn một exit node (cả các máy của chính bạn và các vùng Mullvad đều xuất hiện trong danh sách đó). Nó cũng duyệt các máy của bạn — và khi một máy được chọn, `s` gửi các tệp đến nó qua Taildrop, đó là cách nhanh nhất để chuyển một tệp đến điện thoại hoặc một laptop khác của bạn. `c` sao chép IP của máy, `n` tên của nó, và `d` tên DNS đầy đủ của nó. Cũng có một nút gửi trên mỗi hàng máy, nếu bạn thích nhấp chuột hơn. Điều tương tự từ terminal là `omarchy tailscale send <machine> [file...]`.

Panel **Dropbox** xử lý đăng nhập, hiển thị bạn đã dùng bao nhiêu dung lượng lưu trữ, và liệt kê các tệp đã đồng bộ gần đây.

Việc gỡ bỏ một trong hai dịch vụ sẽ đưa widget của nó trở lại khỏi thanh.

## Các chỉ báo

Cụm nhỏ ở giữa là widget indicators. Đây là các glyph trạng thái cho các chế độ bạn đã bật: không làm phiền, ánh sáng ban đêm, một [nhắc nhở](09-reminders.md) đang xếp hàng, một bản ghi màn hình đang hoạt động, và giữ tỉnh táo, cộng với các cảnh báo trong khi sudo không mật khẩu đang bật hoặc ai đó đang kết nối đến một phiên từ xa. Chúng sáng lên khi chế độ đang hoạt động và nếu không thì tránh đường — di chuột ngay bên cạnh chúng, nơi những cái không hoạt động sẽ nằm, để xem lén những cái đó. Nhấp vào một chỉ báo sẽ bật/tắt chế độ đó. Một cái nữa chỉ là trạng thái: một phiên từ xa sáng đỏ trong khi ai đó đang kết nối đến máy này qua gliff.

Nếu bạn muốn chúng luôn hiển thị, hãy đặt `alwaysShow` thành `true` trên widget. Và nếu bạn chỉ quan tâm đến một số trong chúng, hãy liệt kê những cái bạn muốn trong `items`: `["Dnd", "Reminder", "NightLight"]`. Bạn có thể có nhiều hơn một widget indicators, vì vậy các phần khác nhau có thể hiển thị các tập con khác nhau.

## Sắp xếp lại thanh

Thanh tự cấu hình. Bạn không cần phải mở một tệp cấu hình để di chuyển mọi thứ.

Nắm lấy một khoảng trống của thanh quanh khu vực giữa và kéo nó về phía một cạnh màn hình khác, và thanh sẽ di chuyển đến đó — trái, phải, trên hoặc dưới đều hoạt động, và mọi widget đều thích ứng (các thanh dọc sẽ quay lại các dạng chỉ biểu tượng nhỏ gọn). Nhấp-và-giữ cũng bắt đầu cùng một thao tác kéo. Nhấp đúp trái vào cùng khoảng trống đó để chuyển đổi nền thanh từ trong suốt sang kính mờ sang mờ đục. Và kéo bất kỳ widget nào để sắp xếp lại nó hoặc ném nó vào một phần khác; các widget khác sẽ trượt ra để tạo chỗ tại nơi nó sẽ hạ xuống.

Giữa thanh là một hộp: bất cứ thứ gì trong đó đều ở giữa như một nhóm, và các widget ở hai bên của nó treo vào các cạnh của nó. Trong khi bạn kéo một widget, hộp hiển thị dưới dạng một đường viền, hoặc một đường ngang qua thanh khi nó trống, và bạn có thể thả vào trong nó hoặc bên cạnh nó. Khi một lần thả sẽ hạ xuống trong hộp, hộp sẽ lớn ra để tiếp nhận widget vào.

Một widget bạn muốn ở quanh nhưng không phải lúc nào cũng hiển thị có thể vào ngăn kéo của khay: kéo nó lên khay, và ngăn kéo sẽ mở ra để tiếp nhận nó. Nó nằm ở đó sau các biểu tượng ứng dụng, xuất hiện bất cứ khi nào ngăn kéo xuất hiện, và giữ ngăn kéo của nó mở trong khi panel của nó đang lên. Kéo nó trở lại ra thanh để đặt nó trở lại.

Nếu bạn thích chọn từ một menu hơn, **Appearance → Menu Bar** có vị trí, và **Bar Background** chọn cách thanh được vẽ: **Opaque Bar**, **Glassy Bar** (trong suốt, với những gì phía sau nó được làm mờ), hoặc **Clear Bar**.

Những điều tương tự cũng có các lệnh, đó là thứ bạn muốn cho một thiết lập [dotfiles](31-dotfiles.md):

```bash
omarchy bar position bottom
omarchy bar background glassy  # opaque, glassy, none, or cycle
omarchy bar move omarchy.weather --section centerBegin --index 0
omarchy bar move omarchy.bluetooth --section tray  # into the tray's drawer
omarchy bar set omarchy.clock format "HH:mm"
omarchy bar defaults          # back to the shipped layout
```

Để thêm hoặc loại bỏ một widget hoàn toàn, hãy dùng các lệnh plugin. `omarchy plugin list` in ra mọi widget shell biết với id của nó, và sau đó:

```bash
omarchy plugin enable omarchy.media --section centerEnd
omarchy plugin disable omarchy.weather
```

## Ẩn thanh

`Super + Shift + Space` bật/tắt thanh mà không giết shell — các panel và phím tắt vẫn hoạt động, bạn chỉ lấy lại các pixel. Nó cũng ở trong menu dưới **Appearance → Menu Bar → Hide Bar**.

## Tệp cấu hình

Tất cả đều được lưu trữ trong `~/.config/omarchy/shell.json`, dưới khóa `bar`. Đây là một phiên bản rút gọn:

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

Mỗi widget là một mục trong một trong năm mảng bố cục, và các cài đặt của nó nằm nội tuyến trên mục đó — không có tệp cài đặt riêng và không có đối tượng con `config`. `format`, `formatAlt` (thứ mà nhấp phải chuyển đổi tới) và `verticalFormat` của đồng hồ đều sống ngay tại đó trên `{ "id": "omarchy.clock" }`.

`center` là hộp ở giữa thanh: mọi thứ trong đó đều được căn giữa trên màn hình như một nhóm. `centerBegin` và `centerEnd` treo vào hai bên của hộp, đó là cách đồng hồ giữ đúng ở giữa ngay cả khi thời tiết và huy hiệu cập nhật đến rồi đi. Đặt nhiều hơn một widget vào `center` và chúng sẽ được căn giữa cùng nhau; để trống và `centerBegin` và `centerEnd` sẽ gặp nhau ở giữa thanh.

Một quy tắc đáng ghi nhớ: **một khi bạn đã có `shell.json` của riêng mình, nó là chuẩn**. Cho đến khi bạn tùy chỉnh bất cứ thứ gì, shell đọc tệp mặc định của Omarchy. Ngay khi bạn kéo một widget, chạy `omarchy bar`, hoặc tự sửa tệp, bạn sở hữu nó — không có hợp nhất sâu, vì vậy các widget mặc định mới trong các bản phát hành Omarchy tương lai sẽ không tự động xuất hiện trên thanh của bạn. `omarchy bar defaults` đưa bố cục được giao trở lại bất cứ khi nào bạn muốn một khởi đầu sạch.

Cùng tệp đó cũng chứa thời gian nhàn rỗi của bạn ở cấp cao nhất, ngoài khóa `bar`: `idle.screensaver` và `idle.lock`, cả hai đều tính bằng giây kể từ khi bạn đi vào trạng thái nhàn rỗi. Vì vậy trình bảo vệ màn hình mặc định kích hoạt ở 150 giây và khóa ở 300.
