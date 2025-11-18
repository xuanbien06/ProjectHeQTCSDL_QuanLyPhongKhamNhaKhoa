SELECT DISTINCT KH.*
FROM KhachHang KH
JOIN PhieuKham PK ON KH.MaKH = PK.MaKH
JOIN ChiTietPhieu CTP ON PK.SoPhieu = CTP.SoPhieu
JOIN DichVu DV ON CTP.MaDV = DV.MaDV
WHERE DV.TenDV = N'Khám răng tổng quát'; --Muốn xem dịch vụ nào thì sửa tên
