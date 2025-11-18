-- DỮ LIỆU BAN ĐẦU NÀY KHÔNG ĐƯỢC SỬA
-- khách hàng
INSERT INTO KhachHang (MaKH, HoTenKH, DiaChi, SoDienThoai)
VALUES ('KH001', N'lại Xuân Biển', N'Ninh Bình', '0964130540');

-- dịch vụ
INSERT INTO DichVu (MaDV, TenDV, Gia, SoLanDieuTri_Chuan) VALUES
('DV01', N'Khám răng tổng quát', 100000, 1),
('DV02', N'Lấy cao răng', 300000, 1),
('DV03', N'Hàn răng', 400000, 1),
('DV04', N'Nhổ răng sâu', 500000, 1),
('DV05', N'Trồng răng thẩm mỹ', 15000000, 3);

-- phiếu khám
INSERT INTO PhieuKham (SoPhieu, MaKH, NgayLapPhieu)
VALUES ('PK001', 'KH001', GETDATE()); -- GETDATE() là hàm lấy ngày giờ hiện tại

-- chi tiết phiếu
INSERT INTO ChiTietPhieu (SoPhieu, MaDV, SoLanDieuTri_ThucTe, NgaySuDung, NgayHetHan)
VALUES ('PK001', 'DV01', 1, GETDATE(), '2025-11-18')