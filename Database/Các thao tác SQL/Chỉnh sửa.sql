-- Thêm khách hàng
INSERT INTO KhachHang (MaKH, HoTenKH, DiaChi, SoDienThoai)
VALUES ('KH002', N'Phạm Thị Hà', N'Ninh Bình', '0978570547');

-- Xóa khách hàng
DELETE FROM ChiTietPhieu
WHERE SoPhieu IN (SELECT SoPhieu FROM PhieuKham WHERE MaKH = 'KH002');
DELETE FROM PhieuKham
WHERE MaKH = 'KH002';
DELETE FROM KhachHang
WHERE MaKH = 'KH002';

-- Cập nhật giá dịch vụ
UPDATE DichVu
SET Gia = 350000
WHERE TenDV = N'Lấy cao răng';

-- Thêm dịch vụ
INSERT INTO DichVu (MaDV, TenDV, Gia, SoLanDieuTri_Chuan)
VALUES ('DV06', N'Tẩy trắng răng', 2500000, 1);

-- Xóa dịch vụ
DELETE FROM DichVu
WHERE MaDV = 'DV06';

-- Thêm phiếu khám
INSERT INTO PhieuKham (SoPhieu, MaKH, NgayLapPhieu)
VALUES ('PK002', 'KH002', GETDATE()); 

--Thêm chi tiết phiếu
INSERT INTO ChiTietPhieu (SoPhieu, MaDV, SoLanDieuTri_ThucTe, NgaySuDung, NgayHetHan)
VALUES ('PK002', 'DV01', 1, GETDATE(), '2025-11-18');