-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2014 at 07:06 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dblab_123`
--

-- --------------------------------------------------------

--
-- Table structure for table `B1_Cung_Cap`
--

CREATE TABLE IF NOT EXISTS `B1_Cung_Cap` (
  `MSNCC` int(20) NOT NULL,
  `MSMH` int(20) NOT NULL,
  `Gia_Tien` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B1_Cung_Cap`
--

INSERT INTO `B1_Cung_Cap` (`MSNCC`, `MSMH`, `Gia_Tien`) VALUES
(1, 11, 800000),
(1, 12, 10000),
(1, 13, 20000),
(1, 14, 25000),
(2, 21, 4000),
(2, 22, 15000),
(3, 31, 10000),
(3, 32, 11000),
(3, 33, 12000),
(3, 34, 17000),
(3, 35, 22000),
(4, 41, 8000),
(4, 42, 6000),
(4, 43, 9500),
(5, 51, 15),
(6, 61, 20),
(7, 71, 22000),
(7, 72, 40000),
(7, 73, 28000),
(8, 81, 8),
(9, 91, 3),
(10, 101, 8000),
(10, 102, 12000),
(10, 103, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `B1_Mat_Hang`
--

CREATE TABLE IF NOT EXISTS `B1_Mat_Hang` (
  `MSMH` int(20) NOT NULL,
  `TenMH` varchar(25) NOT NULL,
  `Mau_Sac` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B1_Mat_Hang`
--

INSERT INTO `B1_Mat_Hang` (`MSMH`, `TenMH`, `Mau_Sac`) VALUES
(11, 'Oto toyota', 'Do'),
(12, 'Đạp điện Yamaha', 'Do'),
(13, 'Xe Máy HonDa', 'Do'),
(14, 'Xe máy Yamaha', 'Do'),
(21, 'Tivi 34 inch', 'Bac'),
(22, 'Smart tivi', 'Bac'),
(31, 'Inspiron 5420', 'Xanh'),
(32, 'Dell Vostro V2420', 'Xanh'),
(33, 'Dell Audi A4', 'Do'),
(34, 'Dell XPS', 'Do'),
(35, 'Dell Latitude', 'Xanh'),
(41, 'Ausus K46', 'Den'),
(42, 'Ausus X445CD', 'Bac'),
(43, 'Ausus X550CA', 'Hong'),
(51, 'Colgate trà xanh', 'Xanh+Trang'),
(61, 'PS chanh', 'Xanh'),
(71, 'Sony Vaio SVS', 'Tim'),
(72, 'Sony Vaio VPC', 'Xanh'),
(73, 'Sony Vaio FIT', 'Do'),
(81, 'Vở học sinh', 'Trang'),
(91, 'Bút bi', 'Den'),
(101, 'Samsung Seri 3', 'Den'),
(102, 'Samsung NP-RV', 'Do'),
(103, 'Samsung Seri 5', 'Bac');

-- --------------------------------------------------------

--
-- Table structure for table `B1_NCC`
--

CREATE TABLE IF NOT EXISTS `B1_NCC` (
  `TenNCC` varchar(25) NOT NULL,
  `MSNCC` int(20) NOT NULL,
  `Dia_Chi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B1_NCC`
--

INSERT INTO `B1_NCC` (`TenNCC`, `MSNCC`, `Dia_Chi`) VALUES
('Dustin', 1, 'Cau_Giay'),
('Panasonic', 2, 'My_Dinh'),
('Dell', 3, 'Hoang_Mai'),
('Ausus', 4, 'Bach_Khoa'),
('Colgate', 5, 'Cau_Giay'),
('PS', 6, 'My_Dinh'),
('Sony', 7, 'Tay_Ho'),
('HongHa', 8, 'Bach_Khoa'),
('ThienLong', 9, 'Long_Bien'),
('SamSung', 10, 'Tu_Liem');

-- --------------------------------------------------------

--
-- Table structure for table `B2_Lam_Viec`
--

CREATE TABLE IF NOT EXISTS `B2_Lam_Viec` (
  `MSNV` int(11) NOT NULL,
  `MSP` int(11) NOT NULL,
  `Thoi_Gian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B2_Lam_Viec`
--

INSERT INTO `B2_Lam_Viec` (`MSNV`, `MSP`, `Thoi_Gian`) VALUES
(1, 202, 8),
(2, 201, 8),
(3, 202, 4),
(4, 204, 4),
(5, 202, 8),
(6, 205, 8),
(7, 202, 4),
(8, 203, 2),
(9, 202, 4),
(10, 203, 8),
(11, 202, 4),
(12, 201, 4),
(13, 205, 8),
(14, 202, 2),
(15, 203, 5),
(16, 202, 4),
(17, 202, 8),
(18, 201, 3),
(19, 202, 6),
(20, 202, 7),
(21, 202, 4),
(22, 202, 5),
(23, 202, 6),
(24, 202, 6),
(25, 202, 4),
(26, 202, 3),
(27, 202, 8),
(28, 202, 8),
(29, 202, 6),
(30, 202, 8);

-- --------------------------------------------------------

--
-- Table structure for table `B2_Nhan_Vien`
--

CREATE TABLE IF NOT EXISTS `B2_Nhan_Vien` (
  `MSNV` int(20) NOT NULL,
  `Ho_Ten` varchar(25) NOT NULL,
  `Tuoi` int(20) NOT NULL,
  `Luong` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B2_Nhan_Vien`
--

INSERT INTO `B2_Nhan_Vien` (`MSNV`, `Ho_Ten`, `Tuoi`, `Luong`) VALUES
(1, 'Đỗ Nguyệt Anh', 20, 10000000),
(2, 'Mai Hoàng Anh', 25, 3000000),
(3, 'Thái Tuấn Anh', 23, 6000000),
(4, 'Nguyễn Việt Anh', 30, 8000000),
(5, 'Trương Văn Bắc', 22, 10000000),
(6, 'Lê Văn Cường', 23, 500000),
(7, 'Lê Văn Chiến', 26, 450000),
(8, 'Lê Xuân Duy', 21, 4000000),
(9, 'Mai Đình Lộc ', 25, 5000000),
(10, 'Lương Tiến Lâm', 20, 2000000),
(11, 'Phan Thế Hoàng', 27, 650000),
(12, 'Lưu Tuấn Kha', 28, 6000000),
(13, 'Phạm Quang Minh', 21, 8000000),
(14, 'Nguyễn Thái Bình', 19, 200000),
(15, 'Phạm Văn Bình', 23, 300000),
(16, 'Hoàng Thành Công', 24, 2000000),
(17, 'Nguyễn Trung Công', 25, 3500000),
(18, 'Pham Khoa Đăng', 32, 3000000),
(19, 'Tống Tùng Giang', 31, 400000),
(20, 'Nguyễn Trọng Giáp', 45, 6000000),
(21, 'Nguyễn Song Hào', 56, 540000),
(22, 'Trần Đoàn Hiệp', 25, 800000),
(23, 'Hà Thị Hoàn', 26, 3000000),
(24, 'Phạm Đức Hùng', 28, 4500000),
(25, 'Trịnh Minh Hùng', 29, 7000000),
(26, 'Nguyễn Văn Khá', 30, 700000),
(27, 'Đoàn Hòa Khiêm', 32, 6000000),
(28, 'Nguyễn Đăng Nam', 33, 450000),
(29, 'Nguyễn Khắc Nam', 35, 1200000),
(30, 'Trần Hoài Nam', 40, 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `B2_Phong`
--

CREATE TABLE IF NOT EXISTS `B2_Phong` (
  `MSP` int(11) NOT NULL,
  `Ten_Phong` varchar(25) NOT NULL,
  `Dia_Diem` varchar(25) NOT NULL,
  `Ngan_Quy` int(20) NOT NULL,
  `MS_Truong_Phong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B2_Phong`
--

INSERT INTO `B2_Phong` (`MSP`, `Ten_Phong`, `Dia_Diem`, `Ngan_Quy`, `MS_Truong_Phong`) VALUES
(201, 'Tổ chức và Kế hoạch', 'B1', 2000000, 2),
(202, 'Đầu Tư', 'B1', 5000000, 1),
(203, 'Kế Toán', 'D5', 500000, 1),
(204, 'Quảng Cáo', 'D9', 450000, 5),
(205, 'Thiết Kế', 'C1', 300000, 13);

-- --------------------------------------------------------

--
-- Table structure for table `B3_Du_An`
--

CREATE TABLE IF NOT EXISTS `B3_Du_An` (
  `MaDA` int(11) NOT NULL,
  `TenDA` varchar(25) NOT NULL,
  `Ngan_Sach` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B3_Du_An`
--

INSERT INTO `B3_Du_An` (`MaDA`, `TenDA`, `Ngan_Sach`) VALUES
(201, 'Quản lí đào tạo', 75000),
(202, 'Đào tạo từ xa', 150000),
(203, 'Du học', 500000),
(204, 'Đại học tại chức ', 80000),
(205, 'Lớp học online', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `B3_Nhan_Vien`
--

CREATE TABLE IF NOT EXISTS `B3_Nhan_Vien` (
  `MaNV` varchar(20) NOT NULL,
  `Ho_Ten` varchar(25) NOT NULL,
  `Ngay_Sinh` varchar(25) NOT NULL,
  `MaP` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B3_Nhan_Vien`
--

INSERT INTO `B3_Nhan_Vien` (`MaNV`, `Ho_Ten`, `Ngay_Sinh`, `MaP`) VALUES
('NV001', 'Đỗ Nguyệt Anh', '24/4', 2),
('NV002', 'Mai Hoàng Anh', '1/5', 1),
('NV003', 'Thái Tuấn Anh', '20/10', 3),
('NV004', 'Nguyễn Việt Anh', '11/1', 5),
('NV005', 'Trương Văn Bắc ', '3/2', 4),
('NV006', 'Lê Văn Cường', '24/4', 1),
('NV007', 'Lê Văn Chiến', '1/5', 3),
('NV008', 'Lê Xuân Duy', '21/12', 2),
('NV009', 'Mai Đình Lộc', '2/8', 2),
('NV010', 'Lương Tiến Lâm', '20/3', 3),
('NV11', 'Phan Thế Hoàng', '23/8', 2),
('NV012', 'Lưu Tuấn Kha', '15/1', 4),
('NV013', 'Phạm Quang Minh', '21/8', 2),
('NV014', 'Nguyễn Thái Bình', '19/10', 2),
('NV015', 'Phạm Văn Bình', '23/11', 2),
('NV016', 'Hoàng Thành Công', '1/1', 5),
('NV017', 'Nguyễn Trung Công', '3/5', 1),
('NV018', 'Trịnh Thế Vĩ', '2/5', 2),
('NV019', 'Phạm Đức Trung', '4/7', 3),
('NV020', 'Phạm Duy Nguyễn', '7/9', 4),
('NV21', 'Nguyễn Xuân Tùng', '31/1', 5),
('NV22', 'Nguyễn Kim Thành', '6/8', 2),
('NV023', 'Trần Đức Nhuận', '2/11', 2),
('NV024', 'Tống Tùng Giang', '31/12', 2),
('NV025', 'Phạm Như Quỳnh', '6/7', 1),
('NV026', 'Hà Thị Hoàn ', '8/7', 3),
('NV027', 'Trần Đoàn Hiệp', '21/10', 5),
('NV028', 'Đoàn Hòa Khiêm', '6/5', 4),
('NV029', 'Nguyễn Khắc Nam', '2/3', 2),
('NV030', 'Trịnh Minh Hùng', '9/6', 2);

-- --------------------------------------------------------

--
-- Table structure for table `B3_Phong`
--

CREATE TABLE IF NOT EXISTS `B3_Phong` (
  `MaP` int(10) NOT NULL,
  `TenP` varchar(25) NOT NULL,
  `Dia_Diem` varchar(25) NOT NULL,
  `SoDT` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B3_Phong`
--

INSERT INTO `B3_Phong` (`MaP`, `TenP`, `Dia_Diem`, `SoDT`) VALUES
(1, 'Tổ chức và kiểm tra', ' B1', 4843846),
(2, 'NCKH', 'B1', 43867567),
(3, 'Kế Toán ', 'D5', 43824856),
(4, 'Quảng cáo', 'D9', 43876834),
(5, 'Thiết kế', 'C1', 43849497);

-- --------------------------------------------------------

--
-- Table structure for table `B3_Tham_Gia`
--

CREATE TABLE IF NOT EXISTS `B3_Tham_Gia` (
  `MaNV` varchar(25) NOT NULL,
  `MaDA` int(20) NOT NULL,
  `So_Gio_Tham_Gia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `B3_Tham_Gia`
--

INSERT INTO `B3_Tham_Gia` (`MaNV`, `MaDA`, `So_Gio_Tham_Gia`) VALUES
('NV001', 202, 8),
('NV002', 201, 8),
('NV003', 202, 4),
('NV004', 204, 12),
('NV005', 205, 14),
('NV006', 202, 3),
('NV007', 203, 19),
('NV008', 203, 5),
('NV009', 201, 24),
('NV010', 204, 12),
('NV011', 205, 4),
('NV012', 202, 13),
('NV013', 203, 42),
('NV014', 202, 1),
('NV015', 201, 10),
('NV016', 205, 6),
('NV017', 202, 25),
('NV018', 204, 7),
('NV019', 202, 16),
('NV020', 202, 18),
('NV021', 202, 9),
('NV022', 201, 26),
('NV023', 205, 45),
('NV024', 204, 3),
('NV025', 202, 28),
('NV026', 202, 12),
('NV027', 202, 15),
('NV028', 202, 40),
('NV029', 202, 10),
('NV030', 202, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
