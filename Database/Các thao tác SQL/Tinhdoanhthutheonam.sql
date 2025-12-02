SELECT
    DV.TenDV,
    SUM(DV.Gia) AS TongDoanhThu2025
FROM DichVu DV
JOIN ChiTietPhieu CTP ON DV.MaDV = CTP.MaDV
JOIN PhieuKham PK ON CTP.SoPhieu = PK.SoPhieu
WHERE YEAR(PK.NgayLapPhieu) = 2025 --muốn xem năm nào thì sửa ở đây
GROUP BY DV.TenDV;

