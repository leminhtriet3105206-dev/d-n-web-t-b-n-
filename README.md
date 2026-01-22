# 🍽️ Hệ thống Quản lý Đặt bàn Nhà hàng (Restaurant Reservation System)

Một ứng dụng web giúp khách hàng xem thực đơn, đặt bàn trực tuyến và giúp nhà hàng quản lý đơn đặt, nhân viên và doanh thu hiệu quả.

## 🚀 Giới thiệu
Dự án được xây dựng bằng ngôn ngữ **PHP thuần (Native PHP)** theo mô hình cấu trúc phân lớp (MVC cơ bản). Hệ thống tập trung vào hiệu năng, bảo mật và trải nghiệm người dùng, giải quyết bài toán trùng lịch đặt bàn và tự động hóa quy trình thông báo qua Email.

## 🛠️ Công nghệ sử dụng
* **Backend:** PHP (Core), MySQL.
* **Frontend:** HTML5, CSS3, JavaScript (Vanilla JS & AJAX).
* **Database:** MySQL (Sử dụng MySQLi & Prepared Statements).
* **Thư viện:** PHPMailer (Gửi email qua SMTP).
* **Server:** Apache (XAMPP/Laragon).
* **Design Pattern:** Singleton Pattern (Quản lý kết nối CSDL).

## ✨ Chức năng chính

### 👤 Phía Khách hàng (Public)
1.  **Xem Thực đơn:** Hiển thị danh sách món ăn theo danh mục, hình ảnh trực quan.
2.  **Đặt bàn thông minh:**
    * Chọn ngày giờ, số lượng người, món ăn kèm theo.
    * **Logic nâng cao:** Tự động kiểm tra và chặn đặt bàn nếu hết chỗ trong khung giờ đó (logic 90 phút/bàn).
    * Thêm món ăn vào đơn đặt trước.
3.  **Thông báo:** Nhận email xác nhận tự động khi đơn được duyệt hoặc hủy.

### 🛡️ Phía Quản trị (Admin)
1.  **Dashboard:** Thống kê tổng quan doanh thu, số lượng đơn hàng theo thời gian thực.
2.  **Quản lý Đặt bàn:**
    * Xem danh sách, lọc theo ngày/trạng thái.
    * Duyệt / Hủy đơn hàng.
    * Hệ thống tự động gửi mail phản hồi khách hàng ngay khi đổi trạng thái.
3.  **Quản lý Thực đơn:** Thêm, sửa, xóa món ăn, upload hình ảnh.
4.  **Quản lý Nhân viên:** Phân quyền Admin/Staff, quản lý tài khoản nội bộ.
5.  **Bảo mật:** Đăng nhập, Đăng xuất, Session Management.

## 📂 Cấu trúc thư mục
```text
/restaurant-project
├── admin/              # Các trang quản trị (Dashboard, Quản lý...)
├── assets/             # Tài nguyên tĩnh
│   ├── css/            # File style giao diện
│   ├── js/             # File xử lý JavaScript
│   └── images/         # Hình ảnh món ăn, logo
├── core/               # Lõi hệ thống
│   ├── config.php      # Cấu hình Database & Hằng số
│   ├── database.php    # Class Database (Singleton)
│   ├── email_service.php # Cấu hình PHPMailer & SMTP
│   └── ...
├── includes/           # Các phần dùng chung (Header, Footer)
├── public/             # Các trang hiển thị cho khách
├── uploads/            # Thư mục chứa ảnh upload lên
└── README.md           # Tài liệu hướng dẫn
