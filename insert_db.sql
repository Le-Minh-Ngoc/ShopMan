USE ShopMan;

-- =======================
-- 1. INSERT USERS
-- =======================
-- Managers
INSERT INTO User (fullname, username, password, dob, address, tel, email, role, note) VALUES
('Nguyễn Văn An', 'manager1', 'pass123', '1985-03-15', '123 Láng Hạ, Hà Nội', '0912345678', 'an.nv@shopman.vn', 'Manager', 'Quản lý kho'),
('Trần Thị Bình', 'manager2', 'pass123', '1987-07-20', '456 Giải Phóng, Hà Nội', '0923456789', 'binh.tt@shopman.vn', 'Manager', 'Quản lý nhập hàng');

-- Sales Staff
INSERT INTO User (fullname, username, password, dob, address, tel, email, role, note) VALUES
('Lê Văn Cường', 'sales1', 'pass123', '1992-05-10', '789 Cầu Giấy, Hà Nội', '0934567890', 'cuong.lv@shopman.vn', 'Sales', 'Nhân viên bán hàng'),
('Phạm Thị Dung', 'sales2', 'pass123', '1994-08-25', '321 Đống Đa, Hà Nội', '0945678901', 'dung.pt@shopman.vn', 'Sales', 'Nhân viên bán hàng'),
('Hoàng Văn Em', 'sales3', 'pass123', '1993-11-30', '654 Thanh Xuân, Hà Nội', '0956789012', 'em.hv@shopman.vn', 'Sales', 'Nhân viên bán hàng');

-- Delivery Staff
INSERT INTO User (fullname, username, password, dob, address, tel, email, role, note) VALUES
('Vũ Văn Phong', 'delivery1', 'pass123', '1990-02-14', '987 Hai Bà Trưng, Hà Nội', '0967890123', 'phong.vv@shopman.vn', 'Delivery', 'Nhân viên giao hàng'),
('Đỗ Thị Giang', 'delivery2', 'pass123', '1991-06-18', '147 Hoàng Mai, Hà Nội', '0978901234', 'giang.dt@shopman.vn', 'Delivery', 'Nhân viên giao hàng'),
('Bùi Văn Hùng', 'delivery3', 'pass123', '1989-09-22', '258 Long Biên, Hà Nội', '0989012345', 'hung.bv@shopman.vn', 'Delivery', 'Nhân viên giao hàng');

-- Customers (20 khách hàng)
INSERT INTO User (fullname, username, password, dob, address, tel, email, role, note) VALUES
('Nguyễn Thị Lan', 'customer1', 'pass123', '1995-01-10', '12 Trần Duy Hưng, Hà Nội', '0901234567', 'lan.nt@gmail.com', 'Customer', 'Khách hàng VIP'),
('Trần Văn Minh', 'customer2', 'pass123', '1988-04-15', '34 Nguyễn Trãi, Hà Nội', '0912345670', 'minh.tv@gmail.com', 'Customer', 'Khách hàng thường xuyên'),
('Lê Thị Nga', 'customer3', 'pass123', '1992-07-20', '56 Lê Duẩn, Hà Nội', '0923456701', 'nga.lt@gmail.com', 'Customer', NULL),
('Phạm Văn Oanh', 'customer4', 'pass123', '1990-10-25', '78 Phạm Ngọc Thạch, Hà Nội', '0934567012', 'oanh.pv@gmail.com', 'Customer', NULL),
('Hoàng Thị Phương', 'customer5', 'pass123', '1993-12-30', '90 Kim Mã, Hà Nội', '0945670123', 'phuong.ht@gmail.com', 'Customer', 'Khách hàng VIP'),
('Vũ Văn Quân', 'customer6', 'pass123', '1991-03-05', '11 Tây Sơn, Hà Nội', '0956701234', 'quan.vv@gmail.com', 'Customer', NULL),
('Đỗ Thị Rạng', 'customer7', 'pass123', '1994-06-10', '22 Chùa Bộc, Hà Nội', '0967012345', 'rang.dt@gmail.com', 'Customer', NULL),
('Bùi Văn Sơn', 'customer8', 'pass123', '1989-09-15', '33 Khâm Thiên, Hà Nội', '0970123456', 'son.bv@gmail.com', 'Customer', 'Khách hàng thường xuyên'),
('Nguyễn Văn Tài', 'customer9', 'pass123', '1996-02-18', '45 Hoàng Quốc Việt, Hà Nội', '0981234567', 'tai.nv@gmail.com', 'Customer', NULL),
('Trần Thị Uyên', 'customer10', 'pass123', '1993-05-22', '67 Nguyễn Văn Cừ, Hà Nội', '0992345678', 'uyen.tt@gmail.com', 'Customer', 'Khách hàng VIP'),
('Lê Văn Việt', 'customer11', 'pass123', '1991-08-30', '89 Đê La Thành, Hà Nội', '0903456789', 'viet.lv@gmail.com', 'Customer', NULL),
('Phạm Thị Xuân', 'customer12', 'pass123', '1994-11-12', '101 Láng Hạ, Hà Nội', '0914567890', 'xuan.pt@gmail.com', 'Customer', 'Khách hàng thường xuyên'),
('Hoàng Văn Yên', 'customer13', 'pass123', '1990-03-25', '123 Trần Phú, Hà Nội', '0925678901', 'yen.hv@gmail.com', 'Customer', NULL),
('Vũ Thị Ánh', 'customer14', 'pass123', '1995-06-14', '145 Lê Lợi, Hà Nội', '0936789012', 'anh.vt@gmail.com', 'Customer', 'Khách hàng VIP'),
('Đỗ Văn Bình', 'customer15', 'pass123', '1992-09-08', '167 Điện Biên Phủ, Hà Nội', '0947890123', 'binh.dv@gmail.com', 'Customer', NULL),
('Bùi Thị Chi', 'customer16', 'pass123', '1993-12-20', '189 Nguyễn Lương Bằng, Hà Nội', '0958901234', 'chi.bt@gmail.com', 'Customer', 'Khách hàng thường xuyên'),
('Nguyễn Văn Đức', 'customer17', 'pass123', '1991-04-16', '211 Phạm Hùng, Hà Nội', '0969012345', 'duc.nv@gmail.com', 'Customer', NULL),
('Trần Thị Em', 'customer18', 'pass123', '1994-07-28', '233 Trần Duy Hưng, Hà Nội', '0970123456', 'em.tt@gmail.com', 'Customer', 'Khách hàng VIP'),
('Lê Văn Phúc', 'customer19', 'pass123', '1990-10-05', '255 Nguyễn Chí Thanh, Hà Nội', '0981234560', 'phuc.lv@gmail.com', 'Customer', NULL),
('Phạm Thị Giang', 'customer20', 'pass123', '1995-01-19', '277 Giải Phóng, Hà Nội', '0992345671', 'giang.pt@gmail.com', 'Customer', 'Khách hàng thường xuyên'),
('Nguyễn Văn Hải', 'customer21', 'pass123', '1988-03-12', '299 Nguyễn Tuân, Hà Nội', '0903456782', 'hai.nv@gmail.com', 'Customer', 'Khách hàng VIP'),
('Trần Thị Hoa', 'customer22', 'pass123', '1992-06-25', '321 Hoàng Đạo Thúy, Hà Nội', '0914567893', 'hoa.tt@gmail.com', 'Customer', NULL),
('Lê Văn Khoa', 'customer23', 'pass123', '1990-09-18', '343 Trần Thái Tông, Hà Nội', '0925678904', 'khoa.lv@gmail.com', 'Customer', 'Khách hàng thường xuyên'),
('Phạm Thị Linh', 'customer24', 'pass123', '1994-12-03', '365 Dương Đình Nghệ, Hà Nội', '0936789015', 'linh.pt@gmail.com', 'Customer', 'Khách hàng VIP'),
('Hoàng Văn Minh', 'customer25', 'pass123', '1991-02-28', '387 Cát Linh, Hà Nội', '0947890126', 'minh.hv@gmail.com', 'Customer', NULL),
('Vũ Thị Nhung', 'customer26', 'pass123', '1993-05-15', '409 Thái Hà, Hà Nội', '0958901237', 'nhung.vt@gmail.com', 'Customer', 'Khách hàng thường xuyên'),
('Đỗ Văn Phong', 'customer27', 'pass123', '1989-08-22', '431 Nguyễn Thái Học, Hà Nội', '0969012348', 'phong.dv@gmail.com', 'Customer', NULL),
('Bùi Thị Quỳnh', 'customer28', 'pass123', '1995-11-07', '453 Láng Hạ, Hà Nội', '0970123459', 'quynh.bt@gmail.com', 'Customer', 'Khách hàng VIP'),
('Nguyễn Văn Sơn', 'customer29', 'pass123', '1992-01-30', '475 Giảng Võ, Hà Nội', '0981234571', 'son.nv@gmail.com', 'Customer', NULL),
('Trần Thị Thảo', 'customer30', 'pass123', '1990-04-14', '497 Đê La Thành, Hà Nội', '0992345682', 'thao.tt@gmail.com', 'Customer', 'Khách hàng thường xuyên');

-- =======================
-- 2. INSERT STAFF HIERARCHY
-- =======================
INSERT INTO Staff (Userid, position) VALUES
(1, 'Quản lý kho'),
(2, 'Quản lý nhập hàng'),
(3, 'Nhân viên bán hàng'),
(4, 'Nhân viên bán hàng'),
(5, 'Nhân viên bán hàng'),
(6, 'Nhân viên giao hàng'),
(7, 'Nhân viên giao hàng'),
(8, 'Nhân viên giao hàng');

INSERT INTO Manager (Staffid) VALUES (1), (2);
INSERT INTO Sales (Staffid) VALUES (3), (4), (5);
INSERT INTO Delivery (Staffid) VALUES (6), (7), (8);

INSERT INTO Customer (Userid) VALUES (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31), (32), (33), (34), (35), (36), (37), (38);

-- =======================
-- 3. INSERT SUPPLIERS
-- =======================
INSERT INTO Supplier (name, address, tel, email, note) VALUES
('Công ty TNHH Điện tử Việt', '100 Nguyễn Xiển, Hà Nội', '0241234567', 'contact@dientu.vn', 'Cung cấp điện tử'),
('Công ty CP Thời trang Đông Á', '200 Trường Chinh, Hà Nội', '0242345678', 'sales@thoitrang.vn', 'Cung cấp quần áo'),
('Công ty TNHH Gia dụng Hà Thành', '300 Xã Đàn, Hà Nội', '0243456789', 'info@giadung.vn', 'Cung cấp đồ gia dụng'),
('Công ty CP Mỹ phẩm Sài Gòn', '400 Lê Văn Lương, Hà Nội', '0244567890', 'contact@mypham.vn', 'Cung cấp mỹ phẩm'),
('Công ty TNHH Thực phẩm Organic', '500 Nguyễn Chí Thanh, Hà Nội', '0245678901', 'sales@organic.vn', 'Cung cấp thực phẩm');

-- =======================
-- 4. INSERT PRODUCTS (90 sản phẩm đa dạng)
-- =======================
INSERT INTO Product (name, price, stock, `describe`) VALUES
-- Điện tử (1-8) - Giữ lại sản phẩm chính
('Laptop Dell Inspiron 15', 15000000, 50, 'Laptop văn phòng, Core i5, RAM 8GB'),
('iPhone 14 Pro Max', 28000000, 30, 'Điện thoại Apple, 256GB'),
('Samsung Galaxy S23', 18000000, 40, 'Điện thoại Samsung flagship'),
('Tai nghe AirPods Pro', 5500000, 80, 'Tai nghe không dây Apple'),
('Chuột Logitech MX Master 3', 2200000, 100, 'Chuột không dây cao cấp'),
('Bàn phím cơ Keychron K2', 2800000, 60, 'Bàn phím cơ RGB'),
('Màn hình LG 27 inch 4K', 8500000, 25, 'Màn hình IPS 4K'),
('Apple Watch Series 8', 10000000, 35, 'Đồng hồ thông minh Apple'),

-- Thời trang (9-28) - Mở rộng danh mục
('Áo thun nam Polo', 350000, 200, 'Áo thun cotton cao cấp'),
('Quần jean nữ skinny', 450000, 150, 'Quần jean co giãn'),
('Áo khoác hoodie unisex', 550000, 120, 'Áo khoác nỉ có mũ'),
('Váy đầm công sở', 680000, 80, 'Váy đầm thanh lịch'),
('Giày thể thao Nike', 2200000, 90, 'Giày chạy bộ Nike Air'),
('Túi xách nữ da thật', 1500000, 60, 'Túi xách da bò cao cấp'),
('Mũ lưỡi trai thời trang', 180000, 250, 'Mũ snapback'),
('Kính mát Rayban', 3200000, 45, 'Kính mát chống UV'),
('Áo sơ mi nam công sở', 420000, 100, 'Áo sơ mi trắng cao cấp'),
('Quần tây nữ', 550000, 80, 'Quần tây ống đứng'),
('Giày da nam Oxford', 1800000, 50, 'Giày da thật công sở'),
('Balo laptop Samsonite', 2200000, 70, 'Balo chống sốc 15.6 inch'),
('Áo khoác jean nam', 680000, 90, 'Áo khoác denim vintage'),
('Đồng hồ Casio G-Shock', 3500000, 45, 'Đồng hồ thể thao chống nước'),
('Áo len nam cổ lọ', 580000, 90, 'Áo len dệt kim cao cấp'),
('Quần short jean nữ', 380000, 110, 'Quần short thời trang'),
('Áo ba lỗ thể thao', 220000, 150, 'Áo tập gym nam nữ'),
('Váy maxi dài', 720000, 70, 'Váy maxi hoa nhí'),
('Giày sandal nữ', 450000, 95, 'Sandal đế xuồng'),
('Balo mini nữ', 680000, 85, 'Balo da PU thời trang'),

-- Gia dụng (29-35)
('Nồi cơm điện Panasonic', 1800000, 70, 'Nồi cơm 1.8L'),
('Máy xay sinh tố Philips', 1200000, 85, 'Máy xay đa năng'),
('Bộ nồi inox 5 món', 2500000, 50, 'Bộ nồi cao cấp'),
('Chảo chống dính Tefal', 850000, 120, 'Chảo 28cm'),
('Bình đun siêu tốc', 450000, 150, 'Bình inox 1.7L'),
('Máy hút bụi Electrolux', 3500000, 40, 'Máy hút bụi không dây'),
('Quạt điều hòa Kangaroo', 4200000, 30, 'Quạt làm mát không khí'),

-- Mỹ phẩm (36-39)
('Kem dưỡng da Olay', 580000, 180, 'Kem dưỡng ẩm ban ngày'),
('Sữa rửa mặt Cetaphil', 320000, 220, 'Sữa rửa mặt dịu nhẹ'),
('Son môi MAC', 750000, 150, 'Son lì lâu trôi'),
('Nước hoa Chanel No.5', 3800000, 40, 'Nước hoa nữ 100ml'),

-- Thực phẩm (40-59) - Mở rộng danh mục
('Gạo ST25 cao cấp', 180000, 500, 'Gạo thơm ngon, túi 5kg'),
('Dầu ăn Simply', 85000, 400, 'Dầu ăn chai 1L'),
('Mật ong rừng nguyên chất', 250000, 200, 'Mật ong organic 500ml'),
('Nước mắm Nam Ngư', 45000, 600, 'Nước mắm truyền thống 500ml'),
('Đường trắng Biên Hòa', 25000, 800, 'Đường tinh luyện túi 1kg'),
('Muối I-ốt', 15000, 1000, 'Muối ăn bổ sung I-ốt 500g'),
('Bột mì đa dụng', 35000, 500, 'Bột mì số 8 túi 1kg'),
('Nước tương Chinsu', 28000, 700, 'Nước tương đậu nành 500ml'),
('Cà phê Trung Nguyên', 120000, 300, 'Cà phê rang xay 500g'),
('Trà Ô Long Đài Loan', 150000, 250, 'Trà cao cấp 200g'),
('Sữa tươi Vinamilk', 32000, 900, 'Sữa tươi tiệt trùng hộp 1L'),
('Sữa đặc Ông Thọ', 28000, 600, 'Sữa đặc có đường 380g'),
('Mì gói Hảo Hảo', 3500, 2000, 'Mì ăn liền vị tôm chua cay'),
('Phở khô Vifon', 5000, 1500, 'Phở ăn liền gói 65g'),
('Nước ngọt Coca Cola', 12000, 1200, 'Nước giải khát lon 330ml'),
('Bia Heineken', 18000, 800, 'Bia lon 330ml'),
('Rượu vang Đà Lạt', 180000, 200, 'Rượu vang đỏ chai 750ml'),
('Bánh quy Cosy', 25000, 500, 'Bánh quy bơ hộp 168g'),
('Snack Oishi', 8000, 800, 'Snack khoai tây vị BBQ 42g'),
('Kẹo Alpenliebe', 15000, 600, 'Kẹo sữa hỗn hợp túi 120g'),

-- Thêm sản phẩm mỹ phẩm (60-63)
('Kem dưỡng ẩm Neutrogena', 280000, 150, 'Kem dưỡng ẩm cho da khô'),
('Kem nền Mistine', 180000, 40, 'Kem nền Mistine 30g bền màu, lâu trôi'),
('Sữa rửa mặt Senka', 120000, 200, 'Sữa rửa mặt tạo bọt'),
('Kem trị mụn La Roche-Posay', 380000, 120, 'Kem trị mụn Effaclar Duo+'),

-- Thêm sản phẩm thời trang (64-73)
('Dép Adidas Adilette', 850000, 120, 'Dép quai ngang thể thao'),
('Thắt lưng da nam', 450000, 150, 'Thắt lưng da bò thật'),
('Khăn choàng lụa', 320000, 100, 'Khăn lụa tơ tằm'),
('Vớ thể thao Nike', 150000, 200, 'Vớ cotton cao cổ 3 đôi'),
('Áo khoác gió nữ', 580000, 85, 'Áo khoác chống nắng'),
('Quần jogger nam', 420000, 95, 'Quần thể thao co giãn'),
('Váy tennis', 380000, 70, 'Váy thể thao ngắn'),
('Giày lười nam', 650000, 80, 'Giày slip-on da lộn'),
('Áo polo nữ', 320000, 110, 'Áo polo cotton'),
('Quần kaki nam', 480000, 100, 'Quần kaki slim fit'),

-- Thêm sản phẩm gia dụng (74-81)
('Lò vi sóng Sharp', 2800000, 35, 'Lò vi sóng 23L'),
('Máy lọc nước Kangaroo', 5500000, 25, 'Máy lọc RO 10 lõi'),
('Nồi chiên không dầu', 2200000, 60, 'Nồi chiên 5.5L'),
('Máy giặt mini Aqua', 3800000, 20, 'Máy giặt 7kg'),
('Bàn ủi hơi nước Philips', 850000, 80, 'Bàn ủi 2400W'),
('Bình giữ nhiệt Lock&Lock', 420000, 130, 'Bình giữ nhiệt 500ml'),
('Dao kéo nhà bếp', 550000, 90, 'Bộ dao inox 7 món'),
('Nồi áp suất điện', 2200000, 45, 'Nồi áp suất đa năng 6L'),

-- Thêm sản phẩm mỹ phẩm (82-87)
('Serum Vitamin C', 680000, 100, 'Serum dưỡng trắng da'),
('Kem chống nắng Anessa', 550000, 150, 'Kem chống nắng SPF 50+'),
('Mặt nạ giấy Innisfree', 280000, 200, 'Mặt nạ dưỡng da hộp 10 miếng'),
('Nước tẩy trang Bioderma', 420000, 120, 'Nước tẩy trang 500ml'),
('Phấn nước Laneige', 850000, 80, 'Phấn nước cushion'),
('Dầu gội Tresemme', 180000, 180, 'Dầu gội phục hồi hư tổn 650ml'),

-- Thêm sản phẩm mỹ phẩm (88-90)
('Toner Some By Mi', 380000, 140, 'Toner trị mụn AHA BHA'),
('Kem nền Maybelline', 280000, 160, 'Kem nền Fit Me'),
('Mascara Loreal', 320000, 130, 'Mascara dày mi');


-- =======================
-- 5. INSERT PRODUCT RECEIPTS (Phiếu nhập hàng)
-- =======================
INSERT INTO ProductReceipt (importDate, status, Supplierid, Managerid) VALUES
('2025-07-05', 'Đã nhập kho', 1, 1),
('2025-07-10', 'Đã nhập kho', 2, 2),
('2025-08-15', 'Đã nhập kho', 3, 1),
('2025-09-20', 'Đã nhập kho', 4, 2),
('2025-10-25', 'Đã nhập kho', 5, 1);

-- =======================
-- 6. INSERT RECEIPT DETAILS
-- =======================
INSERT INTO ReceiptDetails (price, quantity, ProductReceiptid, Productid) VALUES
-- Phiếu 1: Điện tử
(14500000, 20, 1, 1), (27000000, 15, 1, 2), (17500000, 20, 1, 3),
-- Phiếu 2: Thời trang
(320000, 100, 2, 9), (420000, 80, 2, 10), (520000, 60, 2, 11),
-- Phiếu 3: Gia dụng
(1700000, 40, 3, 17), (1100000, 50, 3, 18), (2400000, 30, 3, 19),
-- Phiếu 4: Mỹ phẩm
(550000, 100, 4, 24), (300000, 120, 4, 25), (720000, 80, 4, 26),
-- Phiếu 5: Thực phẩm
(170000, 200, 5, 28), (80000, 250, 5, 29), (240000, 100, 5, 30);

-- =======================
-- 7. INSERT INVOICES (Hóa đơn từ tháng 7-11/2025 - Đã sắp xếp theo thời gian)
-- Phân bố: VIP (9-13-18-22-29-32-35-37-38): 10-15 đơn, Thường xuyên: 5-8 đơn, Thông thường: 1-4 đơn
-- =======================
INSERT INTO Invoice (date, status, Customerid, Salesid, Deliveryid) VALUES
-- Tháng 7/2025
('2025-07-02', 'Đã giao', 9, 3, 6),
('2025-07-03', 'Đã giao', 13, 3, 6),
('2025-07-04', 'Đã giao', 18, 4, 7),
('2025-07-05', 'Đã giao', 10, 4, 7),
('2025-07-06', 'Đã giao', 22, 5, 8),
('2025-07-08', 'Đã giao', 16, 5, 8),
('2025-07-09', 'Đã giao', 29, 5, 8),
('2025-07-10', 'Đã giao', 12, 3, 6),
('2025-07-11', 'Đã giao', 32, 3, 6),
('2025-07-12', 'Đã giao', 9, 3, 6),
('2025-07-13', 'Đã giao', 35, 3, 6),
('2025-07-14', 'Đã giao', 20, 4, 7),
('2025-07-15', 'Đã giao', 13, 4, 7),
('2025-07-16', 'Đã giao', 37, 4, 7),
('2025-07-17', 'Đã giao', 18, 5, 8),
('2025-07-18', 'Đã giao', 38, 5, 8),
('2025-07-19', 'Đã giao', 22, 5, 8),
('2025-07-20', 'Đã giao', 9, 4, 7),
('2025-07-21', 'Đã giao', 26, 3, 6),
('2025-07-22', 'Đã giao', 29, 3, 6),
('2025-07-23', 'Đã giao', 13, 3, 6),
('2025-07-24', 'Đã giao', 30, 4, 7),
('2025-07-25', 'Đã giao', 32, 4, 7),
('2025-07-26', 'Đã giao', 9, 4, 7),
('2025-07-27', 'Đã giao', 35, 5, 8),
('2025-07-28', 'Đã giao', 18, 5, 8),
('2025-07-29', 'Đã giao', 37, 5, 8),
('2025-07-30', 'Đã giao', 22, 3, 6),
('2025-07-31', 'Đã giao', 38, 3, 6),

-- Tháng 8/2025
('2025-08-01', 'Đã giao', 9, 4, 7),
('2025-08-01', 'Đã giao', 29, 4, 7),
('2025-08-02', 'Đã giao', 13, 3, 6),
('2025-08-03', 'Đã giao', 32, 5, 8),
('2025-08-04', 'Đã giao', 18, 5, 8),
('2025-08-04', 'Đã giao', 35, 5, 8),
('2025-08-05', 'Đã giao', 22, 4, 7),
('2025-08-06', 'Đã giao', 37, 3, 6),
('2025-08-06', 'Đã giao', 10, 3, 6),
('2025-08-07', 'Đã giao', 38, 3, 6),
('2025-08-08', 'Đã giao', 9, 5, 8),
('2025-08-09', 'Đã giao', 16, 4, 7),
('2025-08-09', 'Đã giao', 29, 4, 7),
('2025-08-11', 'Đã giao', 13, 5, 8),
('2025-08-12', 'Đã giao', 32, 5, 8),
('2025-08-12', 'Đã giao', 18, 3, 6),
('2025-08-13', 'Đã giao', 35, 3, 6),
('2025-08-14', 'Đã giao', 22, 4, 7),
('2025-08-15', 'Đã giao', 37, 4, 7),
('2025-08-15', 'Đã giao', 12, 3, 6),
('2025-08-16', 'Đã giao', 38, 4, 7),
('2025-08-17', 'Đã giao', 20, 5, 8),
('2025-08-18', 'Đã giao', 9, 4, 7),
('2025-08-19', 'Đã giao', 26, 5, 8),
('2025-08-20', 'Đã giao', 29, 3, 6),
('2025-08-20', 'Đã giao', 13, 5, 8),
('2025-08-21', 'Đã giao', 30, 5, 8),
('2025-08-22', 'Đã giao', 32, 4, 7),
('2025-08-23', 'Đã giao', 18, 3, 6),
('2025-08-23', 'Đã giao', 11, 3, 6),
('2025-08-24', 'Đã giao', 35, 5, 8),
('2025-08-25', 'Đã giao', 22, 4, 7),
('2025-08-26', 'Đã giao', 37, 4, 7),
('2025-08-27', 'Đã giao', 14, 3, 6),
('2025-08-28', 'Đã giao', 38, 5, 8),
('2025-08-28', 'Đã giao', 16, 3, 6),
('2025-08-29', 'Đã giao', 9, 5, 8),
('2025-08-30', 'Đã giao', 23, 4, 7),
('2025-08-31', 'Đã giao', 29, 3, 6),

-- Tháng 9/2025
('2025-09-01', 'Đã giao', 13, 5, 8),
('2025-09-02', 'Đã giao', 32, 4, 7),
('2025-09-03', 'Đã giao', 18, 3, 6),
('2025-09-04', 'Đã giao', 35, 3, 6),
('2025-09-04', 'Đã giao', 22, 5, 8),
('2025-09-05', 'Đã giao', 37, 4, 7),
('2025-09-06', 'Đã giao', 9, 4, 7),
('2025-09-07', 'Đã giao', 38, 4, 7),
('2025-09-08', 'Đã giao', 29, 3, 6),
('2025-09-09', 'Đã giao', 10, 5, 8),
('2025-09-10', 'Đã giao', 13, 5, 8),
('2025-09-10', 'Đã giao', 32, 4, 7),
('2025-09-11', 'Đã giao', 18, 3, 6),
('2025-09-12', 'Đã giao', 35, 5, 8),
('2025-09-13', 'Đã giao', 12, 5, 8),
('2025-09-13', 'Đã giao', 22, 3, 6),
('2025-09-14', 'Đã giao', 37, 4, 7),
('2025-09-15', 'Đã giao', 16, 3, 6),
('2025-09-16', 'Đã giao', 38, 5, 8),
('2025-09-17', 'Đã giao', 9, 4, 7),
('2025-09-17', 'Đã giao', 29, 4, 7),
('2025-09-18', 'Đã giao', 20, 3, 6),
('2025-09-19', 'Đã giao', 13, 3, 6),
('2025-09-20', 'Đã giao', 32, 5, 8),
('2025-09-20', 'Đã giao', 18, 5, 8),
('2025-09-21', 'Đã giao', 35, 4, 7),
('2025-09-22', 'Đã giao', 15, 3, 6),
('2025-09-23', 'Đã giao', 22, 5, 8),
('2025-09-24', 'Đã giao', 37, 3, 6),
('2025-09-24', 'Đã giao', 26, 4, 7),
('2025-09-25', 'Đã giao', 38, 4, 7),
('2025-09-26', 'Đã giao', 9, 3, 6),
('2025-09-27', 'Đã giao', 30, 4, 7),
('2025-09-27', 'Đã giao', 29, 5, 8),
('2025-09-28', 'Đã giao', 13, 4, 7),
('2025-09-29', 'Đã giao', 19, 3, 6),
('2025-09-30', 'Đã giao', 32, 5, 8),

-- Tháng 10/2025
('2025-10-01', 'Đã giao', 18, 4, 7),
('2025-10-01', 'Đã giao', 35, 5, 8),
('2025-10-02', 'Đã giao', 22, 3, 6),
('2025-10-03', 'Đã giao', 37, 5, 8),
('2025-10-04', 'Đã giao', 9, 3, 6),
('2025-10-05', 'Đã giao', 38, 3, 6),
('2025-10-05', 'Đã giao', 29, 4, 7),
('2025-10-06', 'Đã giao', 10, 5, 8),
('2025-10-07', 'Đã giao', 13, 5, 8),
('2025-10-08', 'Đã giao', 32, 4, 7),
('2025-10-08', 'Đã giao', 18, 4, 7),
('2025-10-09', 'Đã giao', 35, 3, 6),
('2025-10-10', 'Đã giao', 17, 5, 8),
('2025-10-11', 'Đã giao', 22, 5, 8),
('2025-10-12', 'Đã giao', 37, 4, 7),
('2025-10-12', 'Đã giao', 12, 3, 6),
('2025-10-13', 'Đã giao', 38, 3, 6),
('2025-10-14', 'Đã giao', 29, 5, 8),
('2025-10-15', 'Đã giao', 16, 4, 7),
('2025-10-15', 'Đã giao', 9, 3, 6),
('2025-10-16', 'Đã giao', 13, 3, 6),
('2025-10-17', 'Đã giao', 32, 5, 8),
('2025-10-18', 'Đã giao', 18, 4, 7),
('2025-10-19', 'Đã giao', 35, 4, 7),
('2025-10-20', 'Đã giao', 21, 3, 6),
('2025-10-20', 'Đã giao', 22, 4, 7),
('2025-10-21', 'Đã giao', 37, 5, 8),
('2025-10-22', 'Đã giao', 20, 5, 8),
('2025-10-22', 'Đã giao', 38, 4, 7),
('2025-10-23', 'Đã giao', 29, 3, 6),
('2025-10-24', 'Đã giao', 27, 5, 8),
('2025-10-25', 'Đã giao', 9, 3, 6),
('2025-10-26', 'Đã giao', 13, 4, 7),
('2025-10-27', 'Đã giao', 24, 3, 6),
('2025-10-28', 'Đã giao', 32, 4, 7),
('2025-10-29', 'Đã giao', 18, 4, 7),
('2025-10-29', 'Đã giao', 35, 5, 8),
('2025-10-30', 'Đã giao', 31, 5, 8),
('2025-10-31', 'Đã giao', 22, 3, 6),

-- Tháng 11/2025
('2025-11-01', 'Đã giao', 37, 5, 8),
('2025-11-02', 'Đã giao', 38, 3, 6),
('2025-11-03', 'Đã giao', 29, 3, 6),
('2025-11-04', 'Đã giao', 13, 4, 7),
('2025-11-04', 'Đã giao', 32, 4, 7);








-- =======================
-- 8. INSERT INVOICE DETAILS (Chi tiết hóa đơn - Số lượng sản phẩm ngẫu nhiên 1-10)
-- =======================

-- Hóa đơn 1: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(3800000, 1, 1, 31), (120000, 2, 1, 61), (680000, 1, 1, 55);

-- Hóa đơn 2: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000000, 1, 2, 2), (8500000, 1, 2, 7), (450000, 3, 2, 10), (1800000, 1, 2, 17), (580000, 2, 2, 24), (180000, 4, 2, 28), (350000, 2, 2, 64);

-- Hóa đơn 3: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(15000000, 1, 3, 1), (2200000, 2, 3, 5), (28000, 1, 3, 43), (320000, 3, 3, 25), (120000, 2, 3, 40);

-- Hóa đơn 4: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(380000, 5, 4, 70), (220000, 4, 4, 71);

-- Hóa đơn 5: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(18000000, 1, 5, 3), (10000000, 1, 5, 8), (2200000, 1, 5, 13), (1500000, 1, 5, 14), (1200000, 1, 5, 18), (680000, 2, 5, 55), (420000, 2, 5, 77), (280000, 3, 5, 80), (180000, 5, 5, 60);

-- Hóa đơn 6: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(580000, 2, 6, 69), (680000, 1, 6, 74), (320000, 3, 6, 75), (150000, 6, 6, 76);

-- Hóa đơn 7: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(250000, 1, 7, 34), (2800000, 1, 7, 47), (2200000, 1, 7, 48), (850000, 2, 7, 59), (380000, 3, 7, 85), (250000, 4, 7, 88);

-- Hóa đơn 8: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(180000, 1, 8, 32);

-- Hóa đơn 9: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(45000, 1, 9, 35), (25000, 1, 9, 36), (680000, 2, 9, 44), (32000, 1, 9, 42), (280000, 3, 9, 56), (120000, 2, 9, 57), (320000, 4, 9, 87), (180000, 5, 9, 78);

-- Hóa đơn 10: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000, 3, 10, 39), (150000, 1, 10, 41), (28000, 2, 10, 43);

-- Hóa đơn 11: 10 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(3800000, 1, 1, 31), (180000, 1, 11, 32), (85000, 1, 11, 33), (120000, 1, 11, 61), (380000, 1, 11, 62), (350000, 2, 11, 64), (580000, 3, 11, 69), (450000, 2, 11, 73), (680000, 1, 11, 82), (380000, 4, 11, 85);

-- Hóa đơn 12: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(15000, 1, 12, 37), (35000, 1, 12, 38), (5000, 1, 12, 47), (7500000, 1, 12, 51);

-- Hóa đơn 13: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(11000000, 1, 13, 34), (2200000, 1, 13, 48), (3800000, 1, 13, 50), (7500000, 1, 13, 52), (680000, 3, 13, 55), (420000, 2, 13, 58);

-- Hóa đơn 14: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(12000000, 1, 14, 53), (7500000, 1, 14, 54);

-- Hóa đơn 15: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(15000000, 1, 15, 1), (5500000, 2, 15, 4), (2200000, 1, 15, 5), (2800000, 1, 15, 6), (8500000, 1, 15, 7);

-- Hóa đơn 16: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(350000, 4, 16, 9), (450000, 3, 16, 10), (680000, 2, 16, 12), (2200000, 1, 16, 13), (1500000, 1, 16, 14), (580000, 2, 16, 24), (320000, 3, 16, 25);

-- Hóa đơn 17: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(1800000, 1, 17, 17), (1200000, 1, 17, 18), (2500000, 1, 17, 19), (850000, 2, 17, 20), (3500000, 1, 17, 22), (180000, 5, 17, 28), (85000, 6, 17, 29), (250000, 3, 17, 30), (420000, 2, 17, 77);

-- Hóa đơn 18: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000000, 1, 18, 2);

-- Hóa đơn 19: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(10000000, 1, 19, 8), (2800000, 1, 19, 61), (1800000, 1, 19, 62), (2500000, 1, 19, 63), (1200000, 1, 19, 66), (380000, 3, 19, 67);

-- Hóa đơn 20: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(18000000, 1, 20, 3), (5500000, 1, 20, 4), (850000, 2, 20, 68), (580000, 3, 20, 69), (380000, 2, 20, 70), (220000, 4, 20, 71), (720000, 1, 20, 72), (450000, 2, 20, 73);

-- Hóa đơn 21: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(680000, 2, 21, 74), (320000, 3, 21, 75), (150000, 5, 21, 76), (420000, 2, 21, 77);

-- Hóa đơn 22: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(180000, 4, 22, 78), (550000, 1, 22, 79), (280000, 3, 22, 80), (1500000, 1, 22, 81), (680000, 2, 22, 82), (2200000, 1, 22, 83), (450000, 2, 22, 84);

-- Hóa đơn 23: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(380000, 3, 23, 85), (280000, 4, 23, 86), (320000, 2, 23, 87), (250000, 3, 23, 88), (320000, 2, 23, 89);

-- Hóa đơn 24: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(420000, 1, 24, 90), (850000, 1, 24, 59);

-- Hóa đơn 25: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(22000000, 1, 25, 31), (8500000, 1, 25, 33), (11000000, 1, 25, 34), (9500000, 1, 25, 35), (3200000, 1, 25, 36), (120000, 1, 2, 61), (1800000, 1, 25, 62), (2500000, 1, 25, 63), (350000, 3, 25, 64);

-- Hóa đơn 26: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(450000, 2, 26, 65), (1200000, 1, 26, 66), (380000, 3, 26, 67), (850000, 1, 26, 68), (580000, 2, 26, 69), (380000, 2, 26, 70);

-- Hóa đơn 27: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(220000, 5, 27, 71), (720000, 1, 27, 72), (450000, 3, 27, 73);

-- Hóa đơn 28: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000000, 1, 28, 32), (18000000, 1, 28, 37), (15000000, 1, 28, 38), (420000, 2, 28, 39), (550000, 2, 28, 40), (1800000, 1, 28, 41), (2200000, 1, 28, 42), (850000, 1, 28, 43);

-- Hóa đơn 29: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(22000000, 1, 29, 31);

-- Hóa đơn 30: 10 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(680000, 1, 30, 44), (2800000, 1, 30, 47), (2200000, 1, 30, 48), (2200000, 1, 30, 49), (3800000, 1, 30, 50), (6500000, 1, 30, 51), (7500000, 1, 30, 52), (12000000, 1, 30, 53), (680000, 2, 30, 55), (550000, 2, 30, 56);

-- Hóa đơn 31: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(280000, 3, 31, 57), (420000, 2, 31, 58), (850000, 1, 31, 59), (180000, 5, 31, 60);

-- Hóa đơn 32: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(15000000, 1, 32, 1), (28000000, 1, 32, 2), (2200000, 2, 32, 5), (350000, 4, 32, 9), (580000, 3, 32, 24), (180000, 6, 32, 28), (85000, 8, 32, 29);

-- Hóa đơn 33: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(18000000, 1, 33, 3), (10000000, 1, 33, 8);

-- Hóa đơn 34: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(22000000, 1, 34, 31), (8500000, 1, 34, 33), (2800000, 1, 34, 61), (1800000, 1, 34, 62), (350000, 3, 34, 64), (1200000, 1, 34, 66), (580000, 2, 34, 69), (450000, 2, 34, 73), (380000, 3, 34, 85);

-- Hóa đơn 35: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(11000000, 1, 35, 34), (9500000, 1, 35, 35), (3200000, 1, 35, 36), (18000000, 1, 35, 37), (15000000, 1, 35, 38);

-- Hóa đơn 36: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(420000, 2, 36, 39), (550000, 2, 36, 40), (1800000, 1, 36, 41), (2200000, 1, 36, 42), (850000, 1, 36, 43), (680000, 1, 36, 44);

-- Hóa đơn 37: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2800000, 1, 37, 47), (2200000, 1, 37, 48), (2200000, 1, 37, 49), (3800000, 1, 37, 50), (6500000, 1, 37, 51), (7500000, 1, 37, 52), (12000000, 1, 37, 53), (7500000, 1, 37, 54);

-- Hóa đơn 38: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000000, 1, 38, 32);

-- Hóa đơn 39: 10 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(680000, 2, 39, 55), (550000, 2, 39, 56), (280000, 3, 39, 57), (420000, 2, 39, 58), (850000, 1, 39, 59), (180000, 4, 39, 60), (2800000, 1, 39, 61), (1800000, 1, 39, 62), (2500000, 1, 39, 63), (350000, 3, 39, 64);

-- Hóa đơn 40: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(450000, 2, 40, 65), (1200000, 1, 40, 66), (380000, 3, 40, 67);

-- Hóa đơn 41: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(850000, 2, 41, 68), (580000, 3, 41, 69), (380000, 2, 41, 70), (220000, 4, 41, 71), (720000, 1, 41, 72), (450000, 2, 41, 73), (680000, 1, 41, 74);

-- Hóa đơn 42: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(320000, 3, 42, 75), (150000, 6, 42, 76), (420000, 2, 42, 77), (180000, 5, 42, 78);

-- Hóa đơn 43: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(550000, 1, 43, 79), (280000, 2, 43, 80), (1500000, 1, 43, 81), (680000, 2, 43, 82), (2200000, 1, 43, 83), (450000, 2, 43, 84), (380000, 3, 43, 85), (280000, 4, 43, 86), (320000, 2, 43, 87);

-- Hóa đơn 44: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(250000, 3, 44, 88), (320000, 2, 44, 89);

-- Hóa đơn 45: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(420000, 1, 45, 90), (850000, 1, 45, 59), (180000, 4, 45, 60), (15000000, 1, 45, 1), (5500000, 2, 45, 4), (2200000, 1, 45, 5);

-- Hóa đơn 46: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000000, 1, 46, 2), (8500000, 1, 46, 7), (10000000, 1, 46, 8), (350000, 4, 46, 9), (450000, 3, 46, 10), (1800000, 1, 46, 17), (1200000, 1, 46, 18), (580000, 2, 46, 24);

-- Hóa đơn 47: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(22000000, 1, 47, 31);

-- Hóa đơn 48: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2800000, 1, 48, 61), (1800000, 1, 48, 62), (2500000, 1, 48, 63), (350000, 3, 48, 64), (450000, 2, 48, 65);

-- Hóa đơn 49: 10 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(1200000, 1, 49, 66), (380000, 3, 49, 67), (850000, 2, 49, 68), (580000, 2, 49, 69), (380000, 2, 49, 70), (220000, 5, 49, 71), (720000, 1, 49, 72), (450000, 2, 49, 73), (680000, 1, 49, 74), (320000, 3, 49, 75);

-- Hóa đơn 50: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(150000, 6, 50, 76), (420000, 2, 50, 77), (180000, 5, 50, 78);

-- Hóa đơn 51: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(550000, 1, 51, 79), (280000, 2, 51, 80), (1500000, 1, 51, 81), (680000, 2, 51, 82), (2200000, 1, 51, 83), (450000, 2, 51, 84), (380000, 3, 51, 85);

-- Hóa đơn 52: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(280000, 4, 52, 86), (320000, 2, 52, 87), (250000, 3, 52, 88), (320000, 2, 52, 89);

-- Hóa đơn 53: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(420000, 1, 53, 90), (850000, 1, 53, 59), (180000, 4, 53, 60), (22000000, 1, 53, 31), (180000, 1, 5, 32), (8500000, 1, 53, 33), (11000000, 1, 53, 34), (2800000, 1, 53, 61), (1800000, 1, 53, 62);

-- Hóa đơn 54: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(9500000, 1, 54, 35), (3200000, 1, 54, 36);

-- Hóa đơn 55: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(18000000, 1, 55, 37), (15000000, 1, 55, 38), (420000, 2, 55, 39), (550000, 2, 55, 40), (1800000, 1, 55, 41), (2200000, 1, 55, 42);

-- Hóa đơn 56: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(850000, 1, 56, 43), (680000, 1, 56, 44), (2800000, 1, 56, 47), (2200000, 1, 56, 48), (2200000, 1, 56, 49), (3800000, 1, 56, 50), (6500000, 1, 56, 51), (7500000, 1, 56, 52);

-- Hóa đơn 57: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(12000000, 1, 57, 53);

-- Hóa đơn 58: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(7500000, 1, 58, 54), (680000, 2, 58, 55), (550000, 2, 58, 56), (280000, 3, 58, 57), (420000, 2, 58, 58);

-- Hóa đơn 59: 10 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(850000, 1, 59, 59), (180000, 4, 59, 60), (15000000, 1, 59, 1), (28000000, 1, 59, 2), (18000000, 1, 59, 3), (5500000, 2, 59, 4), (2200000, 1, 59, 5), (2800000, 1, 59, 6), (8500000, 1, 59, 7), (10000000, 1, 59, 8);

-- Hóa đơn 60: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(350000, 4, 60, 9), (450000, 3, 60, 10), (550000, 2, 60, 11);

-- Hóa đơn 61: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(680000, 2, 61, 12), (2200000, 1, 61, 13), (1500000, 1, 61, 14), (1800000, 1, 61, 17), (580000, 2, 61, 24), (180000, 5, 61, 28);

-- Hóa đơn 62: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2500000, 1, 62, 63), (350000, 3, 62, 64), (450000, 2, 62, 65), (1200000, 1, 62, 66);

-- Hóa đơn 63: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(380000, 3, 63, 67), (850000, 2, 63, 68), (580000, 2, 63, 69), (380000, 2, 63, 70), (220000, 4, 63, 71), (720000, 1, 63, 72), (450000, 2, 63, 73), (680000, 1, 63, 74);

-- Hóa đơn 64: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(320000, 3, 64, 75), (150000, 6, 64, 76);

-- Hóa đơn 65: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(420000, 2, 65, 77), (180000, 4, 65, 78), (550000, 1, 65, 79), (280000, 2, 65, 80), (1500000, 1, 65, 81), (680000, 2, 65, 82), (2200000, 1, 65, 83);

-- Hóa đơn 66: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(450000, 2, 66, 84), (380000, 3, 66, 85), (280000, 4, 66, 86), (320000, 2, 66, 87), (250000, 3, 66, 88);

-- Hóa đơn 67: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(320000, 2, 67, 89), (420000, 1, 67, 90), (850000, 1, 67, 59), (180000, 4, 67, 60), (22000000, 1, 67, 31), (28000000, 1, 67, 32), (8500000, 1, 67, 33), (2800000, 1, 67, 61), (1800000, 1, 67, 62);

-- Hóa đơn 68: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(11000000, 1, 68, 34);

-- Hóa đơn 69: 10 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(9500000, 1, 69, 35), (3200000, 1, 69, 36), (18000000, 1, 69, 37), (15000000, 1, 69, 38), (420000, 2, 69, 39), (550000, 2, 69, 40), (1800000, 1, 69, 41), (2200000, 1, 69, 42), (850000, 1, 69, 43), (680000, 1, 69, 44);

-- Hóa đơn 70: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2800000, 1, 70, 47), (2200000, 1, 70, 48), (2200000, 1, 70, 49);

-- Hóa đơn 71: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(3800000, 1, 71, 50), (6500000, 1, 71, 51), (7500000, 1, 71, 52), (12000000, 1, 71, 53), (7500000, 1, 71, 54), (680000, 2, 71, 55);

-- Hóa đơn 72: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(550000, 2, 72, 56), (280000, 3, 72, 57), (420000, 2, 72, 58), (850000, 1, 72, 59);

-- Hóa đơn 73: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(180000, 4, 73, 60), (15000000, 1, 73, 1), (28000000, 1, 73, 2), (18000000, 1, 73, 3), (5500000, 2, 73, 4), (2200000, 1, 73, 5), (2800000, 1, 73, 6), (8500000, 1, 73, 7);

-- Hóa đơn 74: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(10000000, 1, 74, 8), (350000, 4, 74, 9), (450000, 3, 74, 10), (550000, 2, 74, 11), (680000, 2, 74, 12);

-- Hóa đơn 75: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2200000, 1, 75, 13), (1500000, 1, 75, 14), (1800000, 1, 75, 17), (1200000, 1, 75, 18), (580000, 2, 75, 24), (320000, 3, 75, 25), (180000, 5, 75, 28);

-- Hóa đơn 76: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2500000, 1, 76, 63), (350000, 3, 76, 64);

-- Hóa đơn 77: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(450000, 2, 77, 65), (1200000, 1, 77, 66), (380000, 3, 77, 67), (850000, 2, 77, 68), (580000, 2, 77, 69), (380000, 2, 77, 70), (220000, 4, 77, 71), (720000, 1, 77, 72), (450000, 2, 77, 73);

-- Hóa đơn 78: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(680000, 1, 78, 74), (320000, 3, 78, 75), (150000, 6, 78, 76), (420000, 2, 78, 77);

-- Hóa đơn 79: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(180000, 4, 79, 78), (550000, 1, 79, 79), (280000, 2, 79, 80), (1500000, 1, 79, 81), (680000, 2, 79, 82), (2200000, 1, 79, 83);

-- Hóa đơn 80: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(450000, 2, 80, 84), (380000, 3, 80, 85), (280000, 4, 80, 86), (320000, 2, 80, 87), (250000, 3, 80, 88), (320000, 2, 80, 89), (420000, 1, 80, 90), (850000, 1, 80, 59);

-- Hóa đơn 81: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(3800000, 1, 1, 31);

-- Hóa đơn 82: 10 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000000, 1, 82, 32), (8500000, 1, 82, 33), (11000000, 1, 82, 34), (9500000, 1, 82, 35), (3200000, 1, 82, 36), (18000000, 1, 82, 37), (15000000, 1, 82, 38), (2800000, 1, 82, 61), (1800000, 1, 82, 62), (2500000, 1, 82, 63);

-- Hóa đơn 83: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(420000, 2, 83, 39), (550000, 2, 83, 40), (1800000, 1, 83, 41);

-- Hóa đơn 84: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2200000, 1, 84, 42), (850000, 1, 84, 43), (680000, 1, 84, 44), (2800000, 1, 84, 47), (2200000, 1, 84, 48);

-- Hóa đơn 85: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2200000, 1, 85, 49), (3800000, 1, 85, 50), (6500000, 1, 85, 51), (7500000, 1, 85, 52), (12000000, 1, 85, 53), (7500000, 1, 85, 54), (680000, 2, 85, 55);

-- Hóa đơn 86: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(550000, 2, 86, 56), (280000, 3, 86, 57), (420000, 2, 86, 58), (180000, 4, 86, 60);

-- Hóa đơn 87: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(15000000, 1, 87, 1), (5500000, 2, 87, 4), (2200000, 1, 87, 5), (2800000, 1, 87, 6), (350000, 4, 87, 9), (580000, 2, 87, 24);

-- Hóa đơn 88: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000000, 1, 88, 2), (18000000, 1, 88, 3), (8500000, 1, 88, 7), (10000000, 1, 88, 8), (450000, 3, 88, 10), (680000, 2, 88, 12), (1800000, 1, 88, 17), (1200000, 1, 88, 18), (180000, 5, 88, 28);

-- Hóa đơn 89: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2500000, 1, 89, 63), (1200000, 1, 89, 66);

-- Hóa đơn 90: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(850000, 2, 90, 68), (580000, 2, 90, 69), (380000, 2, 90, 70), (220000, 4, 90, 71), (720000, 1, 90, 72), (450000, 2, 90, 73), (680000, 1, 90, 74), (320000, 3, 90, 75);

-- Hóa đơn 91: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(150000, 6, 91, 76), (420000, 2, 91, 77), (180000, 4, 91, 78), (550000, 1, 91, 79), (280000, 2, 91, 80);

-- Hóa đơn 92: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(22000000, 1, 92, 31);

-- Hóa đơn 93: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(1500000, 1, 93, 81), (680000, 2, 93, 82), (2200000, 1, 93, 83), (450000, 2, 93, 84), (380000, 3, 93, 85), (280000, 4, 93, 86), (320000, 2, 93, 87);

-- Hóa đơn 94: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(250000, 3, 94, 88), (320000, 2, 94, 89), (420000, 1, 94, 90);

-- Hóa đơn 95: 10 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(850000, 1, 95, 59), (180000, 4, 95, 60), (28000000, 1, 95, 32), (8500000, 1, 95, 33), (11000000, 1, 95, 34), (2800000, 1, 95, 61), (1800000, 1, 95, 62), (350000, 3, 95, 64), (580000, 2, 95, 69), (450000, 2, 95, 73);

-- Hóa đơn 96: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(9500000, 1, 96, 35), (3200000, 1, 96, 36), (18000000, 1, 96, 37), (15000000, 1, 96, 38);

-- Hóa đơn 97: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(420000, 2, 97, 39), (550000, 2, 97, 40), (1800000, 1, 97, 41), (2200000, 1, 97, 42), (850000, 1, 97, 43), (680000, 1, 97, 44);

-- Hóa đơn 98: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2800000, 1, 98, 47), (2200000, 1, 98, 48), (2200000, 1, 98, 49), (3800000, 1, 98, 50), (6500000, 1, 98, 51), (7500000, 1, 98, 52), (12000000, 1, 98, 53), (680000, 2, 98, 55);

-- Hóa đơn 99: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(550000, 2, 99, 56), (280000, 3, 99, 57), (420000, 2, 99, 58), (850000, 1, 99, 59), (180000, 4, 99, 60);

-- Hóa đơn 100: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(22000000, 1, 100, 31), (28000000, 1, 100, 32);

-- Hóa đơn 101-150: Đa dạng số lượng sản phẩm (1-8 sản phẩm/hóa đơn)
-- Hóa đơn 101: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (22000000, 1, 101, 31);

-- Hóa đơn 102: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (18000000, 1, 102, 3), (2200000, 1, 102, 5);

-- Hóa đơn 103: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (350000, 2, 103, 64), (1200000, 1, 103, 66), (850000, 1, 103, 68);

-- Hóa đơn 104: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (580000, 1, 104, 69), (380000, 2, 104, 70), (220000, 3, 104, 71), (720000, 1, 104, 72);

-- Hóa đơn 105: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (28000000, 1, 105, 32), (8500000, 1, 105, 33), (2800000, 1, 105, 61), (1800000, 1, 105, 62), (2500000, 1, 105, 63);

-- Hóa đơn 106: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (11000000, 1, 106, 34);

-- Hóa đơn 107: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (420000, 2, 107, 77), (180000, 3, 107, 78), (550000, 1, 107, 79), (280000, 2, 107, 80), (1500000, 1, 107, 81), (680000, 1, 107, 82);

-- Hóa đơn 108: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (9500000, 1, 108, 35), (3200000, 1, 108, 36), (18000000, 1, 108, 37);

-- Hóa đơn 109: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (380000, 2, 109, 85), (280000, 3, 109, 86);

-- Hóa đơn 110: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (450000, 2, 110, 73), (680000, 1, 110, 74), (320000, 2, 110, 75), (150000, 4, 110, 76), (2200000, 1, 110, 47), (850000, 1, 110, 48), (450000, 1, 110, 49);

-- Hóa đơn 111: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (15000000, 1, 111, 38), (22000000, 1, 111, 31), (2800000, 1, 111, 61), (350000, 3, 111, 64);

-- Hóa đơn 112: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (28000000, 1, 112, 32);

-- Hóa đơn 113: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (8500000, 1, 113, 33), (11000000, 1, 113, 34), (680000, 2, 113, 82), (2200000, 1, 113, 83), (450000, 2, 113, 84);

-- Hóa đơn 114: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (9500000, 1, 114, 35), (1800000, 1, 114, 62), (550000, 2, 114, 79);

-- Hóa đơn 115: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (3200000, 1, 115, 36), (18000000, 1, 115, 37), (15000000, 1, 115, 38), (420000, 2, 115, 39), (550000, 2, 115, 40), (1800000, 1, 115, 41), (2200000, 1, 115, 42), (850000, 1, 115, 43);

-- Hóa đơn 116: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (320000, 3, 116, 87), (250000, 2, 116, 88);

-- Hóa đơn 117: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (680000, 1, 117, 44), (2800000, 1, 117, 47), (2200000, 1, 117, 48), (3800000, 1, 117, 50), (6500000, 1, 117, 51), (7500000, 1, 117, 52);

-- Hóa đơn 118: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (12000000, 1, 118, 53), (7500000, 1, 118, 54), (680000, 2, 118, 55), (550000, 2, 118, 56);

-- Hóa đơn 119: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (22000000, 1, 119, 31);

-- Hóa đơn 120: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (280000, 3, 120, 57), (420000, 2, 120, 58), (850000, 1, 120, 59), (180000, 4, 120, 60), (380000, 2, 120, 85);

-- Hóa đơn 121: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (28000000, 1, 121, 32), (8500000, 1, 121, 33), (2800000, 1, 121, 61);

-- Hóa đơn 122: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (11000000, 1, 122, 34), (9500000, 1, 122, 35), (3200000, 1, 122, 36), (580000, 2, 122, 69), (380000, 2, 122, 70), (450000, 1, 122, 73), (320000, 2, 122, 87);

-- Hóa đơn 123: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (18000000, 1, 123, 37), (15000000, 1, 123, 38);

-- Hóa đơn 124: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (1800000, 1, 124, 62), (2500000, 1, 124, 63), (350000, 3, 124, 64), (450000, 2, 124, 65);

-- Hóa đơn 125: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (1200000, 1, 125, 66), (380000, 2, 125, 67), (850000, 1, 125, 68), (220000, 3, 125, 71), (720000, 1, 125, 72), (680000, 1, 125, 74);

-- Hóa đơn 126: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (28000000, 1, 126, 32);

-- Hóa đơn 127: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (420000, 2, 127, 77), (180000, 3, 127, 78), (550000, 1, 127, 79), (280000, 2, 127, 80), (1500000, 1, 127, 81);

-- Hóa đơn 128: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (680000, 1, 128, 82), (2200000, 1, 128, 83), (450000, 2, 128, 84);

-- Hóa đơn 129: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (22000000, 1, 129, 31), (8500000, 1, 129, 33), (11000000, 1, 129, 34), (9500000, 1, 129, 35), (2800000, 1, 129, 61), (1800000, 1, 129, 62), (2500000, 1, 129, 63), (350000, 2, 129, 64);

-- Hóa đơn 130: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (380000, 2, 130, 85), (280000, 3, 130, 86);

-- Hóa đơn 131: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (320000, 2, 131, 87), (250000, 2, 131, 88), (320000, 2, 131, 89), (420000, 1, 131, 90);

-- Hóa đơn 132: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (18000000, 1, 132, 37), (15000000, 1, 132, 38), (680000, 1, 132, 44), (2800000, 1, 132, 47), (2200000, 1, 132, 48), (3800000, 1, 132, 50);

-- Hóa đơn 133: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (28000000, 1, 133, 32);

-- Hóa đơn 134: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (6500000, 1, 134, 51), (7500000, 1, 134, 52), (12000000, 1, 134, 53), (680000, 2, 134, 55), (550000, 2, 134, 56);

-- Hóa đơn 135: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (280000, 3, 135, 57), (420000, 2, 135, 58), (850000, 1, 135, 59);

-- Hóa đơn 136: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (22000000, 1, 136, 31), (28000000, 1, 136, 32), (8500000, 1, 136, 33), (2800000, 1, 136, 61), (1800000, 1, 136, 62), (350000, 3, 136, 64), (1200000, 1, 136, 66);

-- Hóa đơn 137: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (11000000, 1, 137, 34), (9500000, 1, 137, 35);

-- Hóa đơn 138: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (580000, 2, 138, 69), (380000, 2, 138, 70), (220000, 3, 138, 71), (720000, 1, 138, 72);

-- Hóa đơn 139: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (450000, 2, 139, 73), (680000, 1, 139, 74), (320000, 1, 139, 75), (150000, 1, 139, 76), (420000, 1, 139, 77), (180000, 1, 139, 78);

-- Hóa đơn 140: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (22000000, 1, 140, 31);

-- Hóa đơn 141: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (550000, 1, 141, 79), (280000, 2, 141, 80), (1500000, 1, 141, 81), (680000, 1, 141, 82), (2200000, 1, 141, 83);

-- Hóa đơn 142: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (450000, 2, 142, 84), (380000, 2, 142, 85), (280000, 3, 142, 86);

-- Hóa đơn 143: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (18000000, 1, 143, 37), (15000000, 1, 143, 38), (680000, 1, 143, 44), (6500000, 1, 143, 51), (12000000, 1, 143, 53), (7500000, 1, 143, 54);

-- Hóa đơn 144: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (320000, 2, 144, 87), (250000, 2, 144, 88);

-- Hóa đơn 145: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (8500000, 1, 145, 33), (11000000, 1, 145, 34), (9500000, 1, 145, 35), (3200000, 1, 145, 36);

-- Hóa đơn 146: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (2800000, 1, 146, 61), (1800000, 1, 146, 62), (2500000, 1, 146, 63), (350000, 3, 146, 64), (1200000, 1, 146, 66), (850000, 1, 146, 68);

-- Hóa đơn 147: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (28000000, 1, 147, 32);

-- Hóa đơn 148: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (580000, 2, 148, 69), (380000, 2, 148, 70), (450000, 2, 148, 73), (680000, 1, 148, 74), (420000, 2, 148, 77);

-- Hóa đơn 149: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (550000, 1, 149, 79), (680000, 1, 149, 82), (2200000, 1, 149, 83);

-- Hóa đơn 150: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES (3800000, 1, 150, 31), (85000, 1, 150, 33), (120000, 1, 150, 61), (350000, 3, 150, 64), (580000, 2, 150, 69), (450000, 2, 150, 73), (320000, 2, 150, 87);

-- =======================
-- CẬP NHẬT GIÁ TRONG INVOICEDETAILS CHO KHỚP VỚI PRODUCT
-- =======================
-- Script này sẽ tự động cập nhật tất cả giá trong InvoiceDetails 
-- để khớp với giá hiện tại trong bảng Product

-- Tắt safe update mode tạm thời
SET SQL_SAFE_UPDATES = 0;

-- Cập nhật giá
UPDATE InvoiceDetails id
INNER JOIN Product p ON id.Productid = p.id
SET id.price = p.price
WHERE id.id > 0;

-- Cập nhật số lượng
UPDATE InvoiceDetails id
INNER JOIN Product p ON id.Productid = p.id
SET id.quantity = 1
WHERE id.Productid <= 8 OR (id.Productid >= 29 AND id.Productid <=35) OR (id.Productid >= 74 AND id.Productid <=81);

-- Bật lại safe update mode
SET SQL_SAFE_UPDATES = 1;
