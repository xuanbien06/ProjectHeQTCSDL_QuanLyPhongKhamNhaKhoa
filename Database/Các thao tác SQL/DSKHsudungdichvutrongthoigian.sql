SELECT DISTINCT KH.*
FROM KhachHang KH
JOIN PhieuKham PK ON KH.MaKH = PK.MaKH
JOIN ChiTietPhieu CTP ON PK.SoPhieu = CTP.SoPhieu
WHERE MONTH(CTP.NgaySuDung) = 11 AND YEAR(CTP.NgaySuDung) = 2025; --muốn xem ở thời gian nào thì sửa năm và tháng