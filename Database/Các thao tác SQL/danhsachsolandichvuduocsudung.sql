-- Dịch vụ được sử dụng NHIỀU NHẤT
SELECT TOP 1 WITH TIES
    DV.TenDV,
    COUNT(CTP.MaDV) AS SoLanSuDung
FROM ChiTietPhieu CTP
JOIN DichVu DV ON CTP.MaDV = DV.MaDV
GROUP BY DV.TenDV
ORDER BY SoLanSuDung DESC;

-- Dịch vụ được sử dụng ÍT NHẤT
SELECT TOP 1 WITH TIES
    DV.TenDV,
    COUNT(CTP.MaDV) AS SoLanSuDung
FROM ChiTietPhieu CTP
JOIN DichVu DV ON CTP.MaDV = DV.MaDV
GROUP BY DV.TenDV
ORDER BY SoLanSuDung ASC;