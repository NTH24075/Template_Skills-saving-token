# Token-saving template

Khung rút từ evn-lms. Thay mọi `<...>` bằng nội dung thật; xoá mục không dùng.

| Tệp | Đặt ở | Tác dụng |
|---|---|---|
| `project/AGENTS.md` | gốc mỗi repo | Agent đọc đúng tệp, biết bẫy, tự kiểm. Giữ < 150 dòng |
| `project/scripts/brief.sh` | repo | Trích gọn spec thay vì đọc cả tài liệu |
| `project/TEST_MATRIX.md` | repo | Luồng test khai báo trước cho `/test` |
| `project/.github/pull_request_template.md` | repo | PR có nhãn đo được/suy luận |
| `global/CLAUDE.md` | `~/.claude/CLAUDE.md` | Chọn skill theo cỡ việc, chặn fan-out |
| `global/settings.skillOverrides.json` | gộp vào `~/.claude/settings.json` | Ẩn mô tả skill ít dùng |
| `playbooks/*.md` | trong 1 skill riêng | Mỗi loại việc một tệp, chỉ nạp khi cần |

Quy tắc giữ gọn: không chép lại thứ agent tự suy ra từ code; quy tắc kiến trúc thành test/script có trần chỉ giảm; nguồn dài để ở `docs/` và chỉ trỏ tới.
