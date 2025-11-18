SELECT DISTINCT KH.*
FROM KhachHang KH
JOIN PhieuKham PK ON KH.MaKH = PK.MaKH
JOIN ChiTietPhieu CTP ON PK.SoPhieu = CTP.SoPhieu
WHERE CTP.SoLanDieuTri_ThucTe >= 2;