-- Bảng lưu thông tin khách hàng
CREATE TABLE KhachHang (
    MaKH VARCHAR(10) PRIMARY KEY,
    HoTenKH NVARCHAR(100) NOT NULL,
    DiaChi NVARCHAR(255),
    SoDienThoai VARCHAR(15) UNIQUE
);

-- Bảng lưu danh mục dịch vụ
CREATE TABLE DichVu (
    MaDV VARCHAR(10) PRIMARY KEY,
    TenDV NVARCHAR(150) NOT NULL,
    Gia DECIMAL(18, 2) NOT NULL, -- Giả sử là giá trọn gói cho dịch vụ
    SoLanDieuTri_Chuan INT DEFAULT 1 -- Số lần điều trị chuẩn cho DV này
);

-- Bảng lưu thông tin phiếu khám (mỗi lần khách đến)
CREATE TABLE PhieuKham (
    SoPhieu VARCHAR(15) PRIMARY KEY,
    MaKH VARCHAR(10) FOREIGN KEY REFERENCES KhachHang(MaKH),
    NgayLapPhieu DATE NOT NULL
);

-- Bảng chi tiết, nối Phiếu Khám và Dịch Vụ
-- Một phiếu (SoPhieu) có thể chứa nhiều dịch vụ (MaDV)
CREATE TABLE ChiTietPhieu (
    SoPhieu VARCHAR(15) FOREIGN KEY REFERENCES PhieuKham(SoPhieu),
    MaDV VARCHAR(10) FOREIGN KEY REFERENCES DichVu(MaDV),
    SoLanDieuTri_ThucTe INT NOT NULL, -- Số lần điều trị thực tế cho DV này trong phiếu
    NgaySuDung DATE,
    NgayHetHan DATE,
    PRIMARY KEY (SoPhieu, MaDV) -- Khóa chính ghép
);