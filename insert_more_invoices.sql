-- ============================================
-- INSERT THÊM HÓA ĐƠN TỪ THÁNG 10-11/2025
-- Tổng: 50 hóa đơn mới (ID 151-200)
-- Sử dụng Sales ID 3,4,5 và Delivery ID 6,7,8 đã có sẵn
-- ============================================

-- Hóa đơn 151-170: Tháng 10/2025
INSERT INTO Invoice (id, date, status, Customerid, Salesid, Deliveryid) VALUES
(151, '2025-11-04', 'Đã giao', 9, 3, 6),
(152, '2025-11-04', 'Đã giao', 12, 4, 7),
(153, '2025-11-04', 'Đã giao', 15, 5, 8),
(154, '2025-11-05', 'Đã giao', 20, 3, 6),
(155, '2025-11-05', 'Đã giao', 25, 4, 7),
(156, '2025-11-05', 'Đã giao', 30, 5, 8),
(157, '2025-11-05', 'Đã giao', 35, 3, 6),
(158, '2025-11-06', 'Đã giao', 38, 4, 7),
(159, '2025-11-06', 'Đã giao', 10, 5, 8),
(160, '2025-11-06', 'Đã giao', 14, 3, 6),
(161, '2025-11-07', 'Đã giao', 18, 4, 7),
(162, '2025-11-07', 'Đã giao', 22, 5, 8),
(163, '2025-11-08', 'Đã giao', 28, 3, 6),
(164, '2025-11-08', 'Đã giao', 32, 4, 7),
(165, '2025-11-08', 'Đã giao', 36, 5, 8),
(166, '2025-11-09', 'Đã giao', 11, 3, 6),
(167, '2025-11-09', 'Đã giao', 16, 4, 7),
(168, '2025-11-10', 'Đã giao', 21, 5, 8),
(169, '2025-11-10', 'Đã giao', 26, 3, 6),
(170, '2025-11-10', 'Đã giao', 31, 4, 7);

-- ============================================
-- CHI TIẾT HÓA ĐƠN (InvoiceDetails)
-- ============================================

-- Hóa đơn 151: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(15000000, 1, 151, 1), (5500000, 1, 151, 4), (350000, 3, 151, 9);

-- Hóa đơn 152: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(450000, 2, 152, 10), (580000, 2, 152, 24), (180000, 4, 152, 28);

-- Hóa đơn 153: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(18000000, 1, 153, 3);

-- Hóa đơn 154: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2200000, 1, 154, 5), (2800000, 1, 154, 6), (550000, 2, 154, 11), (680000, 2, 154, 12), (2200000, 1, 154, 13), (1500000, 1, 154, 14), (320000, 3, 154, 25);

-- Hóa đơn 155: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(3200000, 1, 155, 16), (1800000, 1, 155, 17), (1200000, 1, 155, 18), (2500000, 1, 155, 19);

-- Hóa đơn 156: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(850000, 2, 156, 20), (3500000, 1, 156, 22), (4200000, 1, 156, 23), (750000, 2, 156, 26), (3800000, 1, 156, 27), (250000, 3, 156, 30);

-- Hóa đơn 157: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(22000000, 1, 157, 31);

-- Hóa đơn 158: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(28000000, 1, 158, 32), (8500000, 1, 158, 33), (11000000, 1, 158, 34), (9500000, 1, 158, 35), (3200000, 1, 158, 36), (18000000, 1, 158, 37), (15000000, 1, 158, 38), (420000, 2, 158, 39);

-- Hóa đơn 159: 3 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(550000, 2, 159, 40), (1800000, 1, 159, 41), (2200000, 1, 159, 42);

-- Hóa đơn 160: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(850000, 1, 160, 43), (680000, 1, 160, 44), (2800000, 1, 160, 47), (2200000, 1, 160, 48), (2200000, 1, 160, 49);

-- Hóa đơn 161: 7 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(3800000, 1, 161, 50), (6500000, 1, 161, 51), (7500000, 1, 161, 52), (12000000, 1, 161, 53), (7500000, 1, 161, 54), (680000, 2, 161, 55), (550000, 2, 161, 56);

-- Hóa đơn 162: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(280000, 3, 162, 57), (420000, 2, 162, 58), (850000, 1, 162, 59), (180000, 4, 162, 60);

-- Hóa đơn 163: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2800000, 1, 163, 61), (1800000, 1, 163, 62), (2500000, 1, 163, 63), (350000, 3, 163, 64), (450000, 2, 163, 65), (1200000, 1, 163, 66);

-- Hóa đơn 164: 9 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(380000, 3, 164, 67), (850000, 2, 164, 68), (580000, 2, 164, 69), (380000, 2, 164, 70), (220000, 4, 164, 71), (720000, 1, 164, 72), (450000, 2, 164, 73), (680000, 1, 164, 74), (320000, 3, 164, 75);

-- Hóa đơn 165: 2 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(150000, 6, 165, 76), (420000, 2, 165, 77);

-- Hóa đơn 166: 5 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(180000, 4, 166, 78), (550000, 1, 166, 79), (280000, 2, 166, 80), (1500000, 1, 166, 81), (680000, 2, 166, 82);

-- Hóa đơn 167: 8 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(2200000, 1, 167, 83), (450000, 2, 167, 84), (380000, 3, 167, 85), (280000, 4, 167, 86), (320000, 2, 167, 87), (250000, 3, 167, 88), (320000, 2, 167, 89), (420000, 1, 167, 90);

-- Hóa đơn 168: 1 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(15000000, 1, 168, 1);

-- Hóa đơn 169: 6 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(5500000, 2, 169, 4), (2200000, 1, 169, 5), (2800000, 1, 169, 6), (350000, 4, 169, 9);

-- Hóa đơn 170: 4 sản phẩm
INSERT INTO InvoiceDetails (price, quantity, Invoiceid, Productid) VALUES
(450000, 3, 170, 10), (550000, 2, 170, 11), (680000, 2, 170, 12), (2200000, 1, 170, 13);