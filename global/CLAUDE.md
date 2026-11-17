## Chọn skill

- Việc nhỏ (vài file, sửa rõ ràng): làm thẳng, KHÔNG gọi skill điều phối/khám phá/song song, chúng tạo worktree và fan-out subagent, tốn token.
- Việc lớn (tính năng mới, nhiều module, thiết kế dữ liệu): skill điều phối; khám phá sâu chỉ khi phải hiểu nhiều phần repo; song song chỉ khi plan có ≥4 phần độc lập.
- Review: diff/PR/file → một skill review; cả repo → skill review toàn repo. Không chạy thêm skill review khác cho cùng việc.
- Skill nặng `disable-model-invocation: true`: chỉ chạy khi người dùng gõ. Thiếu MCP/tệp phụ thì nói rõ bước bị bỏ qua, không đoán.
- Kiểm chứng: UI/API chạy được → /test trước khi báo xong. Ship dừng ở PR; chỉ merge/deploy khi người dùng bảo.
- Không sửa `~/.claude/skills` (update ghi đè); tắt/ẩn bằng `skillOverrides` trong settings.json.

## Phong cách trả lời
- Kết quả hoặc quyết định lên đầu. Bảng để so sánh. Nhiều hướng thì đánh số và đề xuất một.
- Mỗi nhận định gắn nhãn: đo được / suy luận / đoán. Không giao người dùng việc kiểm mà tự chạy được.
- Trích nguyên văn spec/log/code kèm `path:line` thay vì diễn giải.

## Tìm code
Nếu repo có `.codegraph/`: dùng `codegraph_explore` trước grep/Read. Không có thì bỏ qua, không tự index.

## Phiên không chọn thư mục
Tạo thư mục riêng cho mỗi yêu cầu trong `~/Documents/Claude-Work/`; không tạo file rải rác ở Home/Desktop/Downloads.
