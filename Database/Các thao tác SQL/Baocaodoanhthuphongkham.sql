--Báo cáo Doanh thu THEO DỊCH VỤ
SELECT
    DV.TenDV,
    SUM(DV.Gia) AS TongDoanhThu
FROM DichVu DV
JOIN ChiTietPhieu CTP ON DV.MaDV = CTP.MaDV
GROUP BY DV.TenDV
ORDER BY TongDoanhThu DESC;

--Báo cáo Doanh thu THEO KHÁCH HÀNG
SELECT
    KH.HoTenKH,
    SUM(DV.Gia) AS TongDoanhThu
FROM KhachHang KH
JOIN PhieuKham PK ON KH.MaKH = PK.MaKH
JOIN ChiTietPhieu CTP ON PK.SoPhieu = CTP.SoPhieu
JOIN DichVu DV ON CTP.MaDV = DV.MaDV
GROUP BY KH.HoTenKH
ORDER BY TongDoanhThu DESC;

--Báo cáo Doanh thu THEO THỜI GIAN
SELECT
    YEAR(PK.NgayLapPhieu) AS Nam,
    MONTH(PK.NgayLapPhieu) AS Thang,
    SUM(DV.Gia) AS TongDoanhThu
FROM PhieuKham PK
JOIN ChiTietPhieu CTP ON PK.SoPhieu = CTP.SoPhieu
JOIN DichVu DV ON CTP.MaDV = DV.MaDV
GROUP BY YEAR(PK.NgayLapPhieu), MONTH(PK.NgayLapPhieu)
ORDER BY Nam, Thang;