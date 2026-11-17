# AGENTS.md

<Một câu: sản phẩm, stack, repo liên quan. Đổi hợp đồng API thì sửa repo <X> cùng đợt.>

## Đọc gì trước

| Cần biết | Đọc ở đâu |
|---|---|
| Yêu cầu, thiết kế đích | `<docs repo/đường dẫn>`. **Tài liệu là chuẩn:** code khác tài liệu thì sửa code |
| Kiến trúc, đặt tên | Mục "Kiến trúc" bên dưới |
| <Auth / dữ liệu / deploy> | `docs/<tệp>.md`, đọc trước khi sửa |

`<tệp lỗi thời>` đã cũ, không dùng làm căn cứ.

**Làm task: đọc đặc tả trước, rồi mới đọc code.** Chạy `scripts/brief.sh <mã yêu cầu>` để in gọn đặc tả liên quan.
- Tài liệu sai/thiếu: dừng phần đó, sửa tài liệu trước, không tự suy yêu cầu từ code.
- Điểm chưa được trả lời: làm theo mặc định trong tài liệu, ghi rõ trong PR.

## Quy tắc dễ sai
<Chỉ ghi bẫy đã gây lỗi thật. Mỗi bẫy: hiện tượng → nguyên nhân → test/script chặn.>
- **<Bẫy 1>.** <...> Chặn bởi `<test>`.
- **<Bẫy 2>.** <...>

## Kiến trúc
```
<cây thư mục chính, 5-10 dòng>
```
- Phụ thuộc: <hướng cho phép>.
- Đặt tên: <DTO/UseCase/route...>.
- Giới hạn: tệp tối đa <N> dòng; mốc chỉ giảm, không nâng.

## Kiểm tra (giống CI)
```bash
<install>
<test>          # tối đa 0 lỗi
<lint/typecheck> # nêu rõ cờ dễ quên
```
Chạy thử hẹp: `<lệnh chỉ cho phạm vi vừa sửa>`; CI chạy toàn bộ.

## Chạy thật trên máy
<Lệnh dựng + tài khoản demo. Bẫy môi trường.>

## Ràng buộc dữ liệu
- Dữ liệu thật không vào repo, kể cả mock, test, ảnh chụp.
- Không thêm SDK gửi dữ liệu ra ngoài khi chưa được đồng ý.

## Làm task
Quy trình chung: `<đường dẫn>`, không chép lại. Ba điều dễ quên:
- Tạo task trước khi làm, kể cả sửa nhỏ.
- Nhánh `<loại>/<mã>-<slug>`, PR `<MÃ>: <kết quả>`, điền template PR, mỗi kết quả ghi *đo được* hoặc *suy luận*.
- Mỗi mốc (xong, mở PR, merge, kiểm chứng) một comment trên task.

## Shipping
- Nhánh tích hợp `<develop>`, phát hành `<main>`, không commit thẳng.
- Merge kiểu `<merge commit/squash>`. Ngôn ngữ tài liệu/PR: `<...>`.
