-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 11, 2020 lúc 01:05 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlhocsinh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baitap`
--

CREATE TABLE `baitap` (
  `mabt` int(11) NOT NULL,
  `noidung` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `malh` int(11) NOT NULL,
  `mamh` int(11) NOT NULL,
  `ngaydang` datetime NOT NULL,
  `hannap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `baitap`
--

INSERT INTO `baitap` (`mabt`, `noidung`, `malh`, `mamh`, `ngaydang`, `hannap`) VALUES
(1, 'Bài tập kiểm tra miệng', 4, 6, '2020-06-10 04:12:02', '2020-06-11 09:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `magv` int(11) NOT NULL,
  `hoten` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `matkhau` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `chucvu` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `gioitinh` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `sodt` int(11) NOT NULL,
  `gmail` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`magv`, `hoten`, `matkhau`, `chucvu`, `gioitinh`, `diachi`, `sodt`, `gmail`) VALUES
(1, 'Nam', '123', 'GV', 'nam', '11 vinh', 123456, 'n@gmail.com'),
(2, 'Vinh', '123', 'GV', 'nam', '15 Vinh', 987654, 'v@gmail.com'),
(3, 'Hương', '123', 'GV', 'nữ', '16 Vinh', 456798, 'h@gmail.com'),
(4, 'Nga', '123', 'GV', 'nữ', '164 Vinh', 45678, 'n@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoclieu`
--

CREATE TABLE `hoclieu` (
  `mahl` int(11) NOT NULL,
  `noicung` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `magv` int(11) NOT NULL,
  `ngaydang` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoclieu`
--

INSERT INTO `hoclieu` (`mahl`, `noicung`, `magv`, `ngaydang`) VALUES
(1, 'Giáo trình toán 10', 1, '2020-06-10 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `mahs` int(11) NOT NULL,
  `hoten` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `matkhau` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `malop` int(11) NOT NULL,
  `sodt` int(11) NOT NULL,
  `gmail` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`mahs`, `hoten`, `matkhau`, `ngaysinh`, `gioitinh`, `diachi`, `malop`, `sodt`, `gmail`) VALUES
(2, 'LXC', '123', '2020-06-20', 'nam', '14 Vinh', 4, 123456, 'lxc@gmail.com'),
(3, 'Nguyễn Hương', '123', '2020-06-09', 'nữ', '148 Vinh', 5, 456, 'nh@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoi`
--

CREATE TABLE `khoi` (
  `makhoi` int(11) NOT NULL,
  `tenkhoi` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `khoa` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khoi`
--

INSERT INTO `khoi` (`makhoi`, `tenkhoi`, `khoa`) VALUES
(1, 'A', 'Tự nhiên'),
(2, 'A1', 'Tự Nhiên'),
(3, 'C', 'Xã hội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `malh` int(11) NOT NULL,
  `tenlop` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `magv` int(11) NOT NULL,
  `makhoi` int(11) NOT NULL,
  `sohs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`malh`, `tenlop`, `magv`, `makhoi`, `sohs`) VALUES
(4, '10A1', 3, 1, 30),
(5, '10A2', 1, 1, 35),
(6, '10A3', 2, 1, 40),
(7, '10A4', 1, 1, 20),
(8, '10A4', 1, 1, 20),
(9, '10A4', 1, 1, 20),
(14, '10A6', 4, 1, 30),
(19, '10A7', 2, 1, 30),
(26, '10A10', 4, 3, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `mamh` int(11) NOT NULL,
  `tenmh` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `magv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`mamh`, `tenmh`, `magv`) VALUES
(6, 'Lý 10', 2),
(7, 'Hoá 10', 3),
(8, 'Toán 10', 1),
(9, 'Văn 10', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phancong`
--

CREATE TABLE `phancong` (
  `mapc` int(11) NOT NULL,
  `hocky` tinyint(4) NOT NULL,
  `namhoc` int(11) NOT NULL,
  `magv` int(11) NOT NULL,
  `malh` int(11) NOT NULL,
  `mamh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phonghoc`
--

CREATE TABLE `phonghoc` (
  `maph` int(11) NOT NULL,
  `chucnang` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `succhua` int(11) NOT NULL,
  `chuthich` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phonghoc`
--

INSERT INTO `phonghoc` (`maph`, `chucnang`, `succhua`, `chuthich`) VALUES
(1, 'Lý thuyết', 40, ''),
(2, 'Thực hành', 20, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thoikhoabieu`
--

CREATE TABLE `thoikhoabieu` (
  `mapc` int(11) NOT NULL,
  `buoihoc` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `maph` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `matb` int(11) NOT NULL,
  `noidung` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `thoigian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinnhan`
--

CREATE TABLE `tinnhan` (
  `matn` int(11) NOT NULL,
  `tieude` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `noidung` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `thoigian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baitap`
--
ALTER TABLE `baitap`
  ADD PRIMARY KEY (`mabt`),
  ADD KEY `malh` (`malh`),
  ADD KEY `mamh` (`mamh`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`magv`);

--
-- Chỉ mục cho bảng `hoclieu`
--
ALTER TABLE `hoclieu`
  ADD PRIMARY KEY (`mahl`),
  ADD KEY `magv` (`magv`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`mahs`),
  ADD KEY `malop` (`malop`);

--
-- Chỉ mục cho bảng `khoi`
--
ALTER TABLE `khoi`
  ADD PRIMARY KEY (`makhoi`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malh`),
  ADD KEY `magv` (`magv`),
  ADD KEY `makhoi` (`makhoi`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`mamh`),
  ADD KEY `magv` (`magv`);

--
-- Chỉ mục cho bảng `phancong`
--
ALTER TABLE `phancong`
  ADD PRIMARY KEY (`mapc`),
  ADD KEY `magv` (`magv`),
  ADD KEY `malh` (`malh`),
  ADD KEY `mamh` (`mamh`);

--
-- Chỉ mục cho bảng `phonghoc`
--
ALTER TABLE `phonghoc`
  ADD PRIMARY KEY (`maph`);

--
-- Chỉ mục cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD KEY `mapc` (`mapc`),
  ADD KEY `buoihoc` (`buoihoc`),
  ADD KEY `maph` (`maph`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`matb`);

--
-- Chỉ mục cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  ADD PRIMARY KEY (`matn`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baitap`
--
ALTER TABLE `baitap`
  MODIFY `mabt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `magv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hoclieu`
--
ALTER TABLE `hoclieu`
  MODIFY `mahl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `mahs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `khoi`
--
ALTER TABLE `khoi`
  MODIFY `makhoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `malh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `mamh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phancong`
--
ALTER TABLE `phancong`
  MODIFY `mapc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phonghoc`
--
ALTER TABLE `phonghoc`
  MODIFY `maph` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `matb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  MODIFY `matn` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baitap`
--
ALTER TABLE `baitap`
  ADD CONSTRAINT `baitap_ibfk_1` FOREIGN KEY (`malh`) REFERENCES `lop` (`malh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `baitap_ibfk_2` FOREIGN KEY (`mamh`) REFERENCES `monhoc` (`mamh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoclieu`
--
ALTER TABLE `hoclieu`
  ADD CONSTRAINT `hoclieu_ibfk_1` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD CONSTRAINT `hocsinh_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `lop` (`malh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lop_ibfk_2` FOREIGN KEY (`makhoi`) REFERENCES `khoi` (`makhoi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phancong`
--
ALTER TABLE `phancong`
  ADD CONSTRAINT `phancong_ibfk_1` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phancong_ibfk_2` FOREIGN KEY (`malh`) REFERENCES `lop` (`malh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD CONSTRAINT `thoikhoabieu_ibfk_1` FOREIGN KEY (`mapc`) REFERENCES `phancong` (`mapc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thoikhoabieu_ibfk_3` FOREIGN KEY (`maph`) REFERENCES `phonghoc` (`maph`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
