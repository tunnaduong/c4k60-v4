-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2024 at 09:06 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tunnaduong_c4k60`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(1111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `email` varchar(999) NOT NULL,
  `name` varchar(999) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `date_of_birth` date NOT NULL,
  `about` varchar(95) NOT NULL,
  `permission` varchar(11) NOT NULL,
  `oauth_provider` varchar(999) NOT NULL,
  `oauth_uid` varchar(999) NOT NULL,
  `profile_pic` varchar(999) NOT NULL,
  `date` date NOT NULL,
  `verified` varchar(11) NOT NULL,
  `activation_code` varchar(11) NOT NULL,
  `location` varchar(999) NOT NULL,
  `school` varchar(99) NOT NULL,
  `live_in` varchar(999) NOT NULL,
  `relationship` varchar(11) NOT NULL,
  `followers` int(11) NOT NULL,
  `cover_pic` varchar(999) NOT NULL,
  `other_name` varchar(999) NOT NULL,
  `has_cover` varchar(11) NOT NULL,
  `highlight_photo` varchar(999) NOT NULL,
  `profile_pic_id` int(5) NOT NULL,
  `cover_pic_id` int(5) NOT NULL,
  `highlight_pic_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `name`, `gender`, `date_of_birth`, `about`, `permission`, `oauth_provider`, `oauth_uid`, `profile_pic`, `date`, `verified`, `activation_code`, `location`, `school`, `live_in`, `relationship`, `followers`, `cover_pic`, `other_name`, `has_cover`, `highlight_photo`, `profile_pic_id`, `cover_pic_id`, `highlight_pic_id`) VALUES
(1, 'ta03', '$2y$10$vRrIsOZrdX1tItFY9vQlGu6grwZfgkyDowma6kH7mcIPA5EB0N5ku', 'tunnaduong@gmail.com', 'Dương Tùng Anh', 'male', '2003-11-21', '', 'user', '', '', '/images/default_pic.jpg', '2021-02-03', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(2, 'tunnaduong', '$2y$10$lC/vFAiOmWfrI68s2j6Q4eRRRih93Bcm6Nod0VuHKJE2oNkrLljMy', 'tunnaduong@gmail.com', 'Dương Tùng Anh', 'male', '2003-11-21', 'Đem thế giới lại gần nhau hơn.', 'admin', '', '', '/images/tunna.jpg', '2021-02-03', 'yes', '', 'Kim Bảng, Hà Nam', 'THPT Chuyên Hà Nam', 'Phủ Lý', 'Độc thân', 81834, '/images/tunna_cover.jpg', 'Tunna Duong', 'block', '/images/tunganhhai.jpg', 21110, 25896, 14758),
(4, 'hoangphat', '$2y$10$44n5FdqIuWZX.anibvSO1ORpRqlACEXanLLwDb2aV6FNpQsM7WQtS', 'hoangphata1k60@gmail.com', 'Hoàng Phát', 'male', '2003-05-19', '', 'user', '', '', '/images/phatdeptrai.jpg', '2021-02-05', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(5, 'tunganh03', '$2y$10$wJx15d.OCO1z8i3HcPS/3eZSqb4REuOoSCxo.ED4j416yApECyKOy', 'tunganhdeptrai@gmail.com', 'Anh tùng', 'male', '2003-11-21', '', 'user', '', '', '/images/default_pic.jpg', '2021-02-05', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(18, 'ndhai', '$2y$10$O8o4gbJvG9IpdP5/LXcGn.kgLMY3BC66il0XWLD2Ilct77C3z/ngu', 'luongminh478@gmail.com', 'Nguyễn Đặng Hải', 'male', '2003-12-10', '', 'user', '', '', '/images/default_pic.jpg', '2021-03-10', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(19, 'ndhai112', '$2y$10$U..0evAN/BtgXT0cQtcrRON.o2KOjOnTC4dzwqbHqs3ni2bCzvqgK', 'luongminh474@gmail.com', 'Nguyễn Đặng Hải', 'male', '2003-12-10', '', 'user', '', '', '/images/default_pic.jpg', '2021-03-25', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(20, 'Shibaanh2708', '$2y$10$GAt/lBhdwaKG1/nAUMVvROr1wediEWhNSlaIt.dgE/rqEpYXLuut.', 'Huyenanhyuki@gmail.com', 'Dương Huyền Anh', 'female', '2003-08-27', '', 'user', '', '', '/images/default_pic.jpg', '2021-03-25', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(21, 'lozto', '$2y$10$owVKxH6GhStHIiv3yEAjl.dJh3CMQ3oorzMcNyOClRSXQek0w9Ucq', 'a@gmail.com', 'hoàng phát', 'male', '2003-11-21', '', 'user', '', '', '/images/default_pic.jpg', '2021-03-31', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(22, 'kwan', '$2y$10$sawhQ9FNA4QbjJMOmDtireurnYlzzNWrVl1fAcGlrqgKJUEvGpdSK', 'dohongkwan@gmail.com', 'Đỗ Hồng Quân', 'male', '2003-11-08', '', 'user', '', '', '/images/default_pic.jpg', '2021-08-23', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(23, 'test', '$2y$10$ucNpJaNXVkoazsi5iSUJNe.KjaSMo3JlDiICpKcjfdpK1wBV.nY2.', 'test@test.com', 'Test User', 'female', '2003-11-21', '', 'user', '', '', '/images/default_pic.jpg', '2021-08-25', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(24, 'haxvzje', '$2y$10$yluEQbOWboypwUojpqfuaevVeITtwDQSmNT9Y9jAGyd0z0b3RHaza', 'bazikivn@gmail.com', 'Trần Đại Phong', 'male', '2004-11-09', '', 'user', '', '', '/images/default_pic.jpg', '2021-08-26', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(25, 'tien1910', '$2y$10$yZOaRcaEd7J0coY4RNE9z.2MVFYkFp4DewT9PjbJkvV3UTgGAn7TC', 'dinhtien.1910@gmail.com', 'Nguyen DinhTien', 'female', '2002-10-19', '', 'user', '', '', '/images/default_pic.jpg', '2021-10-06', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(26, 'tai123', '$2y$10$61KUrU2sjciuT2.YWBrvfeA0NAAEP9WLDMUQP7V5LO3ktJJbm2D02', 'tai1@gmail.com', 'tài', 'other', '2003-11-21', '', 'user', '', '', '/images/default_pic.jpg', '2022-01-04', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(27, 'aloalo', '$2y$10$RIekLTPuos.r0W48EV18f.8TM8Ff42XLWTjmRTpcsd2QvY0VrqFyy', 'anhdthe176446@fpt.edu.vn', 'Phạm Bằng Hữu', 'female', '2002-11-21', '', 'user', '', '', '/images/default_pic.jpg', '2022-03-13', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(28, 'nguyenhongkongdev', '$2y$10$YuJ8nPndVsEU7/3ksZI2r.CUlNJG9cgMJyP2KslUM.u9HxAimWo..', 'nhkvndz@gmail.com', 'Nguyễn Hồng Kông', 'male', '2005-05-02', '', 'user', '', '', '/images/default_pic.jpg', '2022-06-05', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(29, 'vhhsky0802', '$2y$10$T/DwJ.QuL5G5w3KbkxN2w.6e7qVASzH18FI4ieJmA4zwFOFKg7Vdi', 'vhhsky0802@gmail.com', 'VHHSKY', 'male', '2007-02-08', '', 'user', '', '', '/images/default_pic.jpg', '2022-06-05', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(30, 'thonqu', '$2y$10$3T/uuQAB3f/iPq0HZzcDyedY7CA.W1jifAF5c3kklvWQDHcgoS.da', 'thongu@gmail.com', 'Thỏ Nqu', 'female', '2003-11-21', '', 'user', '', '', '/images/default_pic.jpg', '2022-11-20', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(31, 'tiepnguyen', '$2y$10$AbUyf1FDYoUPYev74A8IxOHMZXi8TOs89sEG2Q0dIkpjWimGNQpSW', 'nguyentiep90hn@gmail.com', 'Tiep nguyen cao', 'male', '1990-08-27', '', 'user', '', '', '/images/default_pic.jpg', '2023-02-06', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0),
(32, 'huongptt.21', '$2y$10$2qnTJfyuG6kBWGy8YK1E9u9l2wes1o/CL3fFhYJjJgBtdr9GxCu4q', 'Huongptt@gmail.com.vn', 'Phạm Thị Thiên Hương', 'female', '2003-11-13', '', 'user', '', '', '/images/default_pic.jpg', '2023-06-04', 'no', '', '', '', '', '', 0, '', '', 'none', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `name` varchar(99) NOT NULL,
  `bg_image` varchar(999) NOT NULL,
  `background_image` varchar(999) NOT NULL,
  `total_pic` int(11) NOT NULL,
  `link` varchar(999) NOT NULL,
  `type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `bg_image`, `background_image`, `total_pic`, `link`, `type`) VALUES
(72, 'Ảnh tập thể lớp', 'media/thumbnail/c4k60_cbh_1878831282831955294.jpg', '\"background-image: url(\'media/thumbnail/c4k60_cbh_1878831282831955294.jpg\')\"', 46, 'anhtapthe.php', 'ảnh'),
(73, 'Ảnh kỷ yếu', 'media/thumbnail/PHQ_2410-min.jpg', '\"background-image: url(\'media/thumbnail/PHQ_2410-min.jpg\')\"', 25, 'anhkyyeu.php', 'ảnh'),
(74, 'Ảnh dìm', 'media/thumbnail/c4k60_cbh_2176776038695420108.jpg', '\"background-image: url(\'media/thumbnail/c4k60_cbh_2176776038695420108.jpg\')\"', 18, 'anhdim.php', 'ảnh'),
(75, 'Video', 'media/thumbnail/c4k60_cbh_1900897167654465674.jpg', '\"background-image: url(\'media/thumbnail/c4k60_cbh_1900897167654465674.jpg\')\"', 13, 'video.php', 'video'),
(77, 'Ảnh thẻ', 'media/thumbnail/1C6B8618-5702-4EB2-8485-D841153E850E.jpeg', '\"background-image: url(\'media/thumbnail/1C6B8618-5702-4EB2-8485-D841153E850E.jpeg\')\"', 34, 'Anhthe.php', 'ảnh');

-- --------------------------------------------------------

--
-- Table structure for table `baitap_gv`
--

CREATE TABLE `baitap_gv` (
  `id` int(11) NOT NULL,
  `title` varchar(99) NOT NULL,
  `gvgiao` varchar(99) NOT NULL,
  `ngaygiao` datetime NOT NULL,
  `hannop` datetime NOT NULL,
  `theloai` varchar(11) NOT NULL,
  `link` varchar(99) NOT NULL,
  `monhoc` varchar(11) NOT NULL,
  `urltype` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `baitap_gv`
--

INSERT INTO `baitap_gv` (`id`, `title`, `gvgiao`, `ngaygiao`, `hannop`, `theloai`, `link`, `monhoc`, `urltype`) VALUES
(2, 'CSDL Quản lí sinh viên', 'Bùi Thu Hường', '2021-05-15 08:05:23', '2021-05-16 20:21:43', 'Gỡ điểm', 'csdl-quan-li-sinh-vien', 'Tin học', 'local'),
(3, 'Practice test 4', 'Lại Thanh Tình', '2021-05-17 10:24:32', '2021-05-22 10:23:32', 'Đề thi', 'https://olm.vn/chu-de/practice-test-4-444578/', 'Tiếng Anh', 'external'),
(4, 'Đề số 3', 'Cao Thị Thoan', '2021-05-17 15:57:00', '2021-05-20 14:00:00', 'Đề thi', 'https://olm.vn/chu-de/de-so-3-445502/', 'Lịch sử', 'external');

-- --------------------------------------------------------

--
-- Table structure for table `btvn`
--

CREATE TABLE `btvn` (
  `id` int(11) NOT NULL,
  `title` varchar(999) NOT NULL,
  `content` varchar(999) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `btvn`
--

INSERT INTO `btvn` (`id`, `title`, `content`, `date`) VALUES
(1, 'Bài tập về nhà cuối cùng', '<p style=\"margin-bottom: 1rem;\">Bắt đầu từ ngày: 19/06/2021</p><p style=\"margin-bottom: 1rem;\">Hạn nộp: Không có</p><p style=\"margin-bottom: 1rem;\">Đề bài: Hãy sống thật hạnh phúc nhé!</p>', '2021-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `c4_user`
--

CREATE TABLE `c4_user` (
  `id` int(6) NOT NULL,
  `name` varchar(99) NOT NULL,
  `firstname` varchar(99) NOT NULL,
  `lastname` varchar(99) NOT NULL,
  `username` varchar(99) NOT NULL,
  `password` varchar(99) NOT NULL,
  `dayofbirth` varchar(2) NOT NULL,
  `monthofbirth` varchar(2) NOT NULL,
  `yearofbirth` varchar(4) NOT NULL,
  `address` varchar(999) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `short_name` varchar(99) CHARACTER SET utf8mb4 NOT NULL,
  `fb_link` varchar(999) NOT NULL,
  `ig_link` varchar(999) NOT NULL,
  `additional_info` text CHARACTER SET utf8mb4 NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'student',
  `verified` tinyint(1) NOT NULL,
  `avatar` varchar(999) NOT NULL DEFAULT 'default_avatar',
  `gender` varchar(6) NOT NULL,
  `last_activity` datetime NOT NULL DEFAULT current_timestamp(),
  `expo_push_notification_token` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c4_user`
--

INSERT INTO `c4_user` (`id`, `name`, `firstname`, `lastname`, `username`, `password`, `dayofbirth`, `monthofbirth`, `yearofbirth`, `address`, `phone_number`, `short_name`, `fb_link`, `ig_link`, `additional_info`, `role`, `verified`, `avatar`, `gender`, `last_activity`, `expo_push_notification_token`) VALUES
(1, 'Dương Huyền Anh', 'Dương', 'Huyền Anh', 'huyenanh', '1', '27', '08', '2003', 'Kim Bảng - Hà Nam', '0944436158', 'Siêu cấp đẹp trai Huyền Anh', 'https://www.facebook.com/huyenanh.yuki.98', 'https://www.instagram.com/_huynnanhnee/', 'Luôn ảo tưởng đẹp trai nhất vũ trụ', 'student', 0, 'https://c4k60.com/hoso/huyenanh.jpg', 'female', '2024-03-16 16:04:08', NULL),
(2, 'Dương Tùng Anh', 'Dương', 'Tùng Anh', 'tunganh', '1', '21', '11', '2003', 'Kim Bảng - Hà Nam', '0707006421', 'Tunna Duong', 'https://www.facebook.com/tunna.duong', 'https://www.instagram.com/tunna.dg/', 'Tay photographer của lớp, nhà sản xuất của các bức ảnh sịn sò', 'student', 1, 'https://c4k60.com/hoso/tunganh.jpg', 'male', '2024-07-30 12:58:53', 'ExponentPushToken[W2zl_kD84y5l8PARByJPYl]'),
(3, 'Ngô Phương Anh', 'Ngô', 'Phương Anh', 'phuonganh', '1', '30', '06', '2003', 'Phủ Lý - Hà Nam', '0888220006', 'Lớp trưởng quyền năng', 'https://www.facebook.com/phuonganh.ngo.773124', 'https://www.instagram.com/annezz_/', 'Cute đáng yêu ăn ảnh', 'student', 0, 'https://c4k60.com/hoso/phuonganh.jpg', 'female', '2024-05-30 13:29:34', NULL),
(4, 'Nguyễn Đạt Thái Dương', 'Nguyễn Đạt', 'Thái Dương', 'thaiduong', '1', '12', '12', '2003', 'Phủ Lý - Hà Nam', '0942781825', 'Chủ tịch CLB Bóng rổ', 'https://www.facebook.com/profile.php?id=100026584462994', 'https://www.instagram.com/nguyendatthaiduong', 'Thanh niên nghiêm túc zịt lam', 'student', 0, 'https://c4k60.com/hoso/thaiduong.jpg', 'male', '2024-03-16 16:04:08', NULL),
(5, 'Nguyễn Anh Bảo Hân', 'Nguyễn Anh', 'Bảo Hân', 'baohan', '1', '11', '12', '2003', 'Phủ Lý - Hà Nam', '0886026859', '1m49', 'https://www.facebook.com/baohanncute/', 'https://www.instagram.com/_bao.hann', 'Cao 1m5, biểu tượng của sự xéo sắc', 'student', 0, 'https://c4k60.com/hoso/baohan.jpg', 'female', '2024-03-16 16:04:08', NULL),
(6, 'Nguyễn Đặng Hải', 'Nguyễn', 'Đặng Hải', 'danghai', '1', '10', '12', '2003', 'Lý Nhân - Hà Nam', '0925483281', 'Hot boy của lớp', 'https://www.facebook.com/ndhai112', 'https://www.instagram.com/_ndhai/', 'Đẹp trai mỗi tội khùng. Thỉnh thoảng hay bị lên cơn như thằng ngố', 'student', 1, 'https://c4k60.com/hoso/danghai.jpg', 'male', '2024-05-29 13:58:38', NULL),
(7, 'Bùi Thu Hiền', 'Bùi', 'Thu Hiền', 'buithuhien', '1', '11', '10', '2003', 'Kiện Khê - Hà Nam', '0988152166', 'Hiền Phò', 'https://www.facebook.com/nihnihxinh/', 'https://www.instagram.com/bb_thuhien/', 'Phúng phính trắng trẻo cao, tay chửi hạng nhì sau Bảo Hân', 'student', 0, 'https://c4k60.com/hoso/thuhien.jpg', 'female', '2024-06-01 17:29:09', NULL),
(8, 'Nguyễn Thúy Hiền', 'Nguyễn', 'Thúy Hiền', 'thuyhien', '1', '17', '05', '2003', 'Phủ Lý - Hà Nam', '0912070299', '𝓘𝓬𝓱 𝓵𝓲𝓮𝓫𝓮 𝓭𝓲𝓬𝓱', 'https://www.facebook.com/Hien.ngth1705/', 'https://www.instagram.com/_hn1705__/', 'Hảo khả ái ( ´͈ ᵕ `͈ )◞♡', 'student', 0, 'https://c4k60.com/hoso/thuyhien.jpg', 'female', '2024-03-16 16:04:08', NULL),
(9, 'Phạm Thu Hiền', 'Phạm', 'Thu Hiền', 'phamthuhien', '1', '29', '12', '2003', 'Phủ Lý - Hà Nam', '0916256129', 'Đen vcl', 'https://www.facebook.com/profile.php?id=100027468472374', '', 'Khá mờ nhạt', 'student', 0, 'https://c4k60.com/hoso/phamhien.jpg', 'female', '2024-06-02 10:20:21', NULL),
(10, 'Hồ Trung Hiếu', 'Hồ', 'Trung Hiếu', 'trunghieu', '1', '21', '01', '2003', 'Kim Bảng - Hà Nam', '0779235469', 'Cao vcl', 'https://www.facebook.com/profile.php?id=100025539005291', '', 'Khá tăng động', 'student', 0, 'https://c4k60.com/hoso/hohieu.jpg', 'male', '2024-03-16 16:04:08', NULL),
(11, 'Trần Thị Diệu Huyền', 'Trần Thị', 'Diệu Huyền', 'dieuhuyen', '1', '02', '01', '2003', 'Thanh Liêm - Hà Nam', '0913844995', 'Loli', 'https://www.facebook.com/tranthidieuhuyen21', 'https://www.instagram.com/tt.dieuhuyen21/', 'Rất năng nổ tham gia các hoạt động tuy ngoại hình như loli', 'student', 0, 'https://c4k60.com/hoso/dieuhuyen.jpg', 'female', '2024-03-16 16:04:08', NULL),
(12, 'Phạm Bảo Sơn Hoa', 'Phạm Bảo', 'Sơn Hoa', 'sonhoa', '1', '25', '12', '2003', 'Phủ Lý - Hà Nam', '0942899052', 'pbsh', 'https://www.facebook.com/sonhoa2512', 'https://www.instagram.com/_yiyiyiyiyiy', 'Chữ ký rất cute :v', 'student', 0, 'https://c4k60.com/hoso/sonhoa.jpg', 'female', '2024-07-01 11:04:19', NULL),
(13, 'Dư Thanh Hoài', 'Dư', 'Thanh Hoài', 'thanhhoai', '1', '13', '04', '2003', 'Duy Tiên - Hà Nam', '0915406985', 'Edana Swift', 'https://www.facebook.com/profile.php?id=100022007852405', 'https://www.instagram.com/edana_134/', 'Mờ nhạt đến nỗi không có gì để nói', 'student', 0, 'https://c4k60.com/hoso/thanhhoai.png', 'female', '2024-03-16 16:04:08', NULL),
(14, 'Phạm Thị Thiên Hương', 'Phạm Thị', 'Thiên Hương', 'thienhuong', '1', '13', '11', '2003', 'Phủ Lý - Hà Nam', '0919734785', 'ｗａｔｅｒｍｅｌｏｎ', 'https://www.facebook.com/thjnhun', 'https://www.instagram.com/thjnhun/', 'Xinh, nhảy giỏi', 'student', 0, 'https://c4k60.com/hoso/thienhuong.jpg', 'female', '2024-06-08 09:59:25', 'ExponentPushToken[PdayH9HnyJlX7ZJtjomkRi]'),
(15, 'Lã Kim Huệ', 'Lã', 'Kim Huệ', 'kimhue', '1', '23', '12', '2003', 'Phủ Lý - Hà Nam', '0946408755', 'Huệ Lã', 'https://www.facebook.com/profile.php?id=100071193861823', 'https://www.instagram.com/_hl.uea_/', 'Vui tính', 'student', 0, 'https://c4k60.com/hoso/huela.jpg', 'female', '2024-03-16 16:04:08', NULL),
(16, 'Nguyễn Quang Huy', 'Nguyễn', 'Quang Huy', 'quanghuy', '1', '16', '12', '2003', 'Kim Bảng - Hà Nam', '0386915936', 'Huy Clown', 'https://www.facebook.com/owl1612/', 'https://www.instagram.com/16d3cc', 'Cao vâu', 'student', 0, 'https://c4k60.com/hoso/huynguyen.jpg', 'male', '2024-03-17 14:51:02', NULL),
(17, 'Nguyễn Minh Khôi', 'Nguyễn', 'Minh Khôi', 'minhkhoi', '1', '01', '05', '2003', 'Phủ Lý - Hà Nam', '0981638188', 'Thú mỏ vịt', 'https://www.facebook.com/nguyen.khoi.3323457', 'https://www.instagram.com/meowdeptrai15', 'Nguyễn Minh Khôi Ngô Tuấn Tú. Cái tên nói lên tất cả', 'student', 0, 'https://c4k60.com/hoso/nguyenkhoi.jpg', 'male', '2024-03-16 16:04:08', NULL),
(18, 'Lê Hoàng Tùng Lâm', 'Lê Hoàng', 'Tùng Lâm', 'tunglam', '1', '02', '09', '2003', 'Phủ Lý - Hà Nam', '0818890111', 'meme lord =))', 'https://www.facebook.com/profile.php?id=100028793563718', 'https://www.instagram.com/thonas.vn/', 'Khá đẹp trai và chắc chắn đẹp trai hơn huyền anh', 'student', 0, 'https://c4k60.com/hoso/lelam.jpg', 'male', '2024-03-16 16:04:08', NULL),
(19, 'Bùi Ngọc Lĩnh', 'Bùi', 'Ngọc Lĩnh', 'ngoclinh', '1', '19', '01', '2003', 'Phủ Lý - Hà Nam', '0353586934', 'Linh Ngoc', 'https://www.facebook.com/191cognhnil/', '', 'Thích tát nhau với bùi hiền và giấu dép đinh linh', 'student', 0, 'https://c4k60.com/hoso/ngoclinh.jpg', 'female', '2024-03-16 16:04:08', NULL),
(20, 'Lê Kim Liên', 'Lê', 'Kim Liên', 'kimlien', '1', '18', '05', '2003', 'Phủ Lý - Hà Nam', '0971726518', 'Kym Lyeen', 'https://www.facebook.com/tri.n.quoc.7', 'https://www.instagram.com/_liam112/', 'Khẩu nghiệp thứ 2 chỉ sau Vân múp', 'student', 0, 'https://c4k60.com/hoso/kimlien.png', 'female', '2024-03-17 16:43:50', NULL),
(21, 'Đinh Thùy Linh', 'Đinh', 'Thùy Linh', 'thuylinh', '1', '25', '02', '2003', 'Phủ Lý - Hà Nam', '0913797460', 'Thất bại', 'https://www.facebook.com/profile.php?id=100028829018170', 'https://www.instagram.com/dinhlinh2502/', 'Chụp ảnh không cười, hay co chân lên ghế nên hay bị mất dép', 'student', 0, 'https://c4k60.com/hoso/dinhlinh.png', 'female', '2024-06-30 18:03:43', 'ExponentPushToken[SCXqBjMnboD9d6bfgIbYXb]'),
(22, 'Nguyễn Khánh Linh', 'Nguyễn', 'Khánh Linh', 'khanhlinh', '1', '13', '12', '2003', 'Phủ Lý - Hà Nam', '0334758619', 'Kling', 'https://www.facebook.com/kalizng01', 'https://www.instagram.com/kalizng/', 'Càng lớn càng xinh. Chắc do hay chơi với Dương Thảo', 'student', 0, 'https://c4k60.com/hoso/khanhlinh.jpg', 'female', '2024-03-16 16:04:08', NULL),
(23, 'Nguyễn Đức Mạnh', 'Nguyễn', 'Đức Mạnh', 'ducmanh', '1', '09', '08', '2003', 'Đồng Văn - Hà Nam', '0963058339', 'Stronk', 'https://www.facebook.com/suhdjdhsjkd', '', 'Kẻ sưu tập các nguyên tố🌪⚡️💧🔥🪨, cong an danh dan 🐧', 'student', 0, 'https://c4k60.com/hoso/nguyenmanh.jpg', 'male', '2024-07-21 23:03:11', 'ExponentPushToken[R8c4ffJAqFBiXtuxHOMzYN]'),
(24, 'Đỗ Thảo Nguyên', 'Đỗ', 'Thảo Nguyên', 'thaonguyen', '1', '13', '04', '2003', 'Phủ Lý - Hà Nam', '0916251903', 'An Nguyên', 'https://www.facebook.com/annguyn03', 'https://www.instagram.com/myannguyn', 'Xinh mỗi tội chảnh chóa', 'student', 0, 'https://c4k60.com/hoso/annguyen.jpg', 'female', '2024-03-16 16:04:08', NULL),
(25, 'Đào Thu Phương', 'Đào', 'Thu Phương', 'thuphuong', '1', '06', '08', '2003', 'Phủ Lý - Hà Nam', '0853479549', 'Katherine Lormbard', 'https://www.facebook.com/profile.php?id=100017448708462', 'https://www.instagram.com/___dtphuong___/', 'Hot girl, visual của lớp', 'student', 0, 'https://c4k60.com/hoso/daophuong.jpg', 'female', '2024-03-16 16:04:08', NULL),
(26, 'Vũ Minh Quang', 'Vũ', 'Minh Quang', 'minhquang', '1', '28', '04', '2003', 'Phủ Lý - Hà Nam', '0779314206', 'Ryckkid', 'https://www.facebook.com/quang.vuminh.5851', 'https://www.instagram.com/_vm.q_/', 'Con nhà giàu, mỗi tội hơi bếu', 'student', 1, 'https://c4k60.com/hoso/minhquang.jpg', 'male', '2024-05-27 09:33:51', NULL),
(27, 'Đỗ Hồng Quân', 'Đỗ', 'Hồng Quân', 'hongquan', '1', '08', '11', '2003', 'Phủ Lý - Hà Nam', '0949922076', 'Pinky Quân', 'https://www.facebook.com/dohongquan1243', 'https://www.instagram.com/not.quan.ok/', 'Hơi đụt nhưng mà chơi game giỏi', 'student', 1, 'https://c4k60.com/hoso/hongquan.jpg', 'male', '2024-06-07 18:23:41', NULL),
(28, 'Đan Thị Phương Thảo', 'Đan Thị', 'Phương Thảo', 'danphuongthao', '1', '07', '10', '2003', 'Phủ Lý - Hà Nam', '0586074253', 'Con nhà bán vịt', 'https://www.facebook.com/profile.php?id=100006889245341', 'https://www.instagram.com/danthao710/', 'Xinh đẹp, hoà đồng thân thiện nhiệt tình đáng yêu', 'student', 0, 'https://c4k60.com/hoso/danthao.jpg', 'female', '2024-03-16 16:04:08', NULL),
(29, 'Dương Phương Thảo', 'Dương', 'Phương Thảo', 'duongphuongthao', '1', '14', '12', '2003', 'Phủ Lý - Hà Nam', '0396136009', 'bloom', 'https://www.facebook.com/duongthaokut3', 'https://www.instagram.com/dgphgthao/', 'Càng lớn càng xinh?', 'student', 1, 'https://c4k60.com/hoso/duongthao.png', 'female', '2024-03-16 16:04:08', NULL),
(30, 'Nguyễn Minh Thư', 'Nguyễn', 'Minh Thư', 'minhthu', '1', '19', '08', '2003', 'Phủ Lý - Hà Nam', '0399851955', 'Dancing Girl', 'https://www.facebook.com/mindy03.work/', 'https://www.instagram.com/wannab_mituu/', 'Nhảy đẹp, xinh gái, trắng trẻo', 'student', 0, 'https://c4k60.com/hoso/minhthu.jpg', 'female', '2024-03-16 16:04:08', NULL),
(31, 'Vũ Huyền Trang', 'Vũ', 'Huyền Trang', 'huyentrang', '1', '21', '12', '2003', 'Phủ Lý - Hà Nam', '0844271999', 'Daydreamer and nightthinker', 'https://www.facebook.com/huyentrangvucbh', 'https://www.instagram.com/huyennttr/', 'Vũ thị huyền trang đơ', 'student', 0, 'https://c4k60.com/hoso/huyentrang.jpg', 'female', '2024-03-16 16:04:08', NULL),
(32, 'Nguyễn Thị Ánh Tuyết', 'Nguyễn Thị', 'Ánh Tuyết', 'anhtuyet', '1', '18', '04', '2003', 'Thanh Liêm - Hà Nam', '0866705975', 'Tuyết-Akira', 'https://www.facebook.com/tuyet184', 'https://www.instagram.com/tuyetakira/', 'Học giỏi vl nhưng trầm tính', 'student', 0, 'https://c4k60.com/hoso/tuyet.jpg', 'female', '2024-03-16 16:04:08', NULL),
(33, 'Trần Khánh Vân', 'Trần', 'Khánh Vân', 'khanhvan', '1', '25', '11', '2003', 'Liêm Chính - Hà Nam', '0963045212', 'Zann Cute', 'https://www.facebook.com/zanncutee11', 'https://www.instagram.com/menkh__/', 'Chúa tể khẩu nghiệp', 'student', 0, 'https://c4k60.com/hoso/khanhvan.jpg', 'female', '2024-03-16 16:04:08', NULL),
(34, 'Hà Gia Văn', 'Hà', 'Gia Văn', 'giavan', '1', '16', '11', '2003', 'Phủ Lý - Hà Nam', '0886973568', 'Sim số đẹp', 'https://www.facebook.com/giavan.ha.923', 'https://www.instagram.com/hagiavan/', 'Bán sim là đam mê, gia trưởng là sở thích', 'student', 0, 'https://c4k60.com/hoso/giavan.jpg', 'male', '2024-05-25 18:42:58', NULL),
(35, 'Đặng Thanh Huyền', 'Đặng', 'Thanh Huyền', 'danghuyen', '1', '12', '03', '1981', 'Phủ Lý - Hà Nam', '0987347140', 'GVCN', 'https://www.facebook.com/huyen.dang.5074', '', 'Là cô giáo chủ nhiệm của 12 chuyên Nga', 'teacher', 0, 'https://c4k60.com/hoso/danghuyen.jpeg', 'female', '2024-03-16 16:04:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(99) CHARACTER SET utf8mb4 NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `summary` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `start`, `end`, `summary`) VALUES
(2, 'Đi họp lớp', '2024-03-14 12:03:37', '2024-03-14 14:03:37', 'Địa điểm: Nhà cô Huyền'),
(3, 'Học online NHC', '2024-03-13 13:00:00', '2024-03-13 15:00:00', 'Qua Zoom, link trong Zalo');

-- --------------------------------------------------------

--
-- Table structure for table `changelogs`
--

CREATE TABLE `changelogs` (
  `id` int(11) NOT NULL,
  `version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `changelogs` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `changelogs`
--

INSERT INTO `changelogs` (`id`, `version`, `release_date`, `changelogs`) VALUES
(2, '1.0', '2019-03-24', 'Ra mắt cổng thông tin điện tử 10 Chuyên Nga THPT Chuyên Biên Hoà phiên bản đầu tiên trên Blogspot.com.\nMục đích ban đầu tạo ra để tra điểm thi học kỳ. '),
(3, '2.0', '2019-05-23', 'Ra mắt cổng thông tin điện tử 10 Chuyên Nga THPT Chuyên Biên Hoà phiên bản thứ hai trên GitHub.\nPhiên bản cải tiến nay đã nhanh hơn và gọn nhẹ hơn.\nĐã thêm tính năng tra cứu thời khoá biểu và thư viện ảnh.'),
(4, '3.0', '2019-07-21', 'Ra mắt cổng thông tin điện tử 11 Chuyên Nga THPT Chuyên Biên Hoà phiên bản thứ ba trên GitHub.\nPhiên bản cải tiến nay sử dụng Jekyll để tiện quản lý và phát triển.\nĐã thêm tính năng tra cứu hồ sơ học sinh, bài tập về nhà, thông báo lớp và chat.\nĐã thêm tính năng bình luận Facebook ở cuối mỗi bài viết trong mục thông báo lớp.\nĐã thêm tính năng liên lạc trợ giúp ở góc dưới bên phải màn hình.\nĐã cập nhật giao diện mới cho trang 404.'),
(5, '3.1', '2019-07-23', 'Bản cập nhật đầu tiên của phiên bản 3.0\nĐã sửa lại ngày sinh của Đinh Thuỳ Linh\nĐã sửa lại link Instagram của Trần Khánh Vân\nĐã sửa lại link Twitter của Dương Phương Thảo\nĐã sửa lại số điện thoại của Phạm Bảo Sơn Hoa\nMenu C4K60 đã được làm đậm hơn\nCửa sổ khung chat nay đã hoạt động\nĐộ dài khung chat giảm xuống một nửa\nThêm phần hướng dẫn nhập mật khẩu trong khung mật khẩu tra cứu hồ sơ học sinh\nThay đổi CNAME, sử dụng tên miền cũ c4k60.ga cho phiên bản mới\nFix lỗi BTVN Toán trong phần tra cứu bài tập về nhà'),
(6, '3.2', '2019-07-23', 'Bản cập nhật thứ hai của phiên bản 3.0\nĐã thêm phần \"Ai tạo ra cái này?\" trên trang chủ\nĐã thêm liên kết đến mạng xã hội của tác giả trên trang chủ\nĐã thêm phần \"Tôi có thể tự tạo ra trang web cho lớp mình dựa theo trang web này?\" trên trang chủ\nBình luận Facebook ở mỗi bài viết trong phần thông báo lớp nay đã hoạt động.\nThay đổi màu sắc cuộc trò chuyện trong phần Chat thành màu hồng.\nĐã thêm phần \"Thông tin thêm\" và \"Tính cách\" trong hồ sơ học sinh.\nĐã sửa lại địa chỉ của Dư Thanh Hoài.\nĐã sửa lại tên giáo viên trong thời khoá biểu.'),
(7, '3.3', '2019-07-24', 'Bản cập nhật thứ ba của phiên bản 3.0\nĐã thêm tính năng tra cứu ngày sinh nhật sắp tới của học sinh 11 Nga\nĐã thêm phần \"Sinh nhật sắp tới\" trên trang chủ\nĐã thêm phần mở ngoặc ngày sinh trong phần tra cứu ngày sinh nhật sắp tới. Cảm ơn góp ý của Đan Thị Phương Thảo!\nFix lỗi logo C4K60 bé lại ở một số trang\nĐã thêm phần mở ngoặc ngày sinh trong phần sinh nhật hôm nay\nFix lỗi sai ngày sinh nhật của một số người\nĐã chuyển phần \"Thông báo lớp\" và \"Sinh nhật sắp tới\" lên đầu trang chủ\nĐã thêm phần \"Bài tập về nhà\" lên trang chủ'),
(8, '3.4', '2019-07-25', 'Bản cập nhật đặc biệt và có nhiều thay đổi nhất của phiên bản 3.0\nCập nhật giao diện thanh menu mới\nĐã thêm logo C4K60 mới trên thanh menu (Credit goes to Thiên Hương for designing)\nĐã thêm tính năng \"Games\" (Vẫn chưa phát triển xong. Sorry guys)\nĐã thêm tính năng tìm kiếm trong trang với Google trên thanh menu\nĐã thay đổi Favicon của website thành logo mới\nMàu sắc chủ đạo của trang web nay trở thành màu vàng\nĐã fix một lỗi khiến website không thể quay lại trang chủ\nĐã fix một lỗi khiến các trang bị biến dạng\nĐã xoá bỏ tính năng gửi tin nhắn hỗ trợ ở góc phải màn hình\nTính năng Chat nhóm nay được chuyển thành dạng tab ở dưới màn hình\nThay đổi màu sắc cuộc trò chuyện trong phần Chat thành màu vàng\nĐã cố định thanh menu ở góc trên màn hình\nĐã thêm phần \"Top Donators\" trên trang chủ\nĐã thêm thông báo \"Top Donator\" ở đầu mọi trang\nĐã thêm liên kết đến trang Facebook cá nhân của Thiên Hương\nĐã thay đổi màu sắc của nút mở khóa hồ sơ học sinh thành màu vàng'),
(9, '3.5', '2020-01-24', 'Bản cập nhật đầu xuân năm mới Canh Tý 2020\nĐã thêm tính năng \"Videos\"\nĐã hoàn thiện tính năng \"Games\"\nĐã xoá bỏ hình ảnh ở đầu trang\nĐã thêm Carousel ở đầu trang\nĐã thêm trang Đăng nhập\nĐã redesign lại navbar\nĐã thêm mục Thời khoá biểu\nĐã sửa lại ảnh của Tùng Anh\nĐã thêm tính năng gửi bằng cách nhấn Enter'),
(10, '3.5.1', '2020-03-11', 'Bản cập nhật sau kì nghỉ Tết do chủng mới của virus Corona\nĐã thêm mục Wiki\nĐã thay logo mới nhân dịp mùa dịch Corona\nĐã fix lỗi hiện 2 logo trên trang chủ\nĐã fix lỗi hiện khoảng trống ở navbar\nĐã fix lỗi thanh tìm kiếm'),
(11, '3.5.2', '2020-03-27', 'Bản cập nhật trong kì nghỉ Tết do chủng mới của virus Corona\nĐã thêm thông báo về dịch COVID-19 và đường dẫn đến trang web của Bộ Y Tế ở đầu mọi trang\nĐã fix lỗi chuyển hướng trang web vô tận số lần\nĐã xoá thông báo lớp cũ từ trước đây\nĐã xoá nút đăng nhập ở thanh navbar\nĐã thêm thông báo nghỉ học'),
(12, '3.5.3', '2020-05-31', 'Bản cập nhật trong tuần học bù sau dịch Covid-19\nĐã cập nhật thời khoá biểu theo màu mới sau khoảng nửa năm không cập nhật'),
(13, '3.6', '2021-02-21', 'Bản cập nhật trong kỳ nghỉ học do dịch Covid-19\nĐã gộp tính năng Videos và Ảnh thành một\nĐã sửa lại lớp 11 -> lớp 12 trong phần Ai tạo ra cái này? ở Trang chủ\nĐã thêm tính năng đăng nhập vào trang quản trị viên ở Navbar\nĐã xoá bỏ tính năng Wiki\nĐã thêm tính năng tìm kiếm tên học sinh trong phần tra cứu hồ sơ học sinh\nGiới thiệu tính năng Thư viện ảnh hoàn toàn mới được thiết kế để mọi người đều có thể upload ảnh hoặc video thay vì chỉ có quản trị viên\nĐã thêm tính năng Tạo album mới\nĐã thêm tính năng Tải lên ảnh\nĐã thêm tính năng Tải lên video\nĐã thêm trang dành cho quản trị viên\nĐã chỉnh sửa tính năng Thông báo lớp, Bài tập về nhà và Thời khoá biểu để có thể dễ dàng thêm bớt bài viết, thời khoá biểu trong trang quản trị viên\nĐã sửa lại phần Những thay đổi ở Trang chủ để có thể cuộn xuống mà không chiếm diện tích lớn trong trang chủ'),
(16, '4.0', '2024-06-02', 'Ra mắt phiên bản di động của C4K60\nRa mắt phiên bản web hoàn toàn mới của C4K60\nCải thiện hiệu suất ứng dụng...\nTối ưu trải nghiệm người dùng\nĐã thêm tính năng thông báo đẩy trong ứng dụng\nSửa lỗi thanh điều hướng bị thừa khoảng trống đối với một số thiết bị...'),
(17, '4.0.1', '2024-06-28', 'Đã thêm Easter Egg nho nhỏ vào website. Đố các bạn tìm được đó hihi. Món quà sẽ rất thú vị đó!\nFix một số bug vặt...\nTinh chỉnh một vài tính năng phụ...'),
(18, '4.0.23', '2024-06-29', 'Giới thiệu tính năng Thư viện ảnh hoàn toàn mới được thiết kế đồng bộ với giao diện trên app mobile\r\nĐã thêm hiệu ứng ripple vào các nút trong Thư viện ảnh\r\nĐã thêm trình xem phương tiện ảnh và video tự phát triển\r\nSửa lỗi modal bị lệch sang bên phải khi xem trang ở thiết bị di động'),
(20, '4.0.54', '2024-07-24', 'Đã thêm thư viện NProgress.js để hiện thanh loading bên trên website\nTruy cập web nhanh hơn mà không cần tải lại trang bằng AJAX\nĐã chèn script Google Analytics và Adsense vào website để chạy quảng cáo (sorry guys, mình cần tiền để trang trải...)\nTạo file sitemap.txt\nĐổi thuộc tính goto của mọi thẻ HTML thành href'),
(21, '4.0.6', '2024-07-25', 'Đã sửa lỗi tiêu đề không hiện lên khi truy cập các trang\nĐã sửa lỗi icon trong thanh điều hướng không tô đậm và chuyển màu xanh khi bấm vào\nĐã đổi logo trang từ màu trắng sang màu vàng trong phiên bản di động\nThêm màn hình load trang với logo vàng mỗi khi người dùng refresh trang\nĐã thêm mã QR Code chuyển khoản trong phần nhà tài trợ\nĐã thêm banner tải về ứng dụng iOS C4K60 trên Safari iOS\nSửa lỗi lời chúc không hiển thị đúng thời gian buổi trưa\nSửa lỗi link đến các trang bên ngoài không bấm được');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 NOT NULL,
  `user_from` varchar(999) CHARACTER SET utf8mb4 NOT NULL,
  `user_to` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `image_url` varchar(999) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `type` varchar(13) NOT NULL DEFAULT 'group'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `message`, `user_from`, `user_to`, `image_url`, `time`, `type`) VALUES
(1, 'Helllo', 'phuonganh', 'tunganh', NULL, '2024-03-17 17:29:08', 'private'),
(2, 'Wow', 'tunganh', 'phuonganh', NULL, '2024-03-17 17:29:13', 'private'),
(3, 'It actually ửoked', 'tunganh', 'phuonganh', NULL, '2024-03-17 17:29:20', 'private'),
(4, 'Hey', 'phuonganh', 'tunganh', NULL, '2024-03-17 17:33:30', 'private'),
(5, 'Huh', 'tunganh', 'phuonganh', NULL, '2024-03-17 17:33:48', 'private'),
(6, 'Haha', 'tunganh', 'phuonganh', NULL, '2024-03-17 17:38:30', 'private'),
(7, 'Hahaa', 'tunganh', 'phuonganh', NULL, '2024-03-17 17:38:48', 'private'),
(8, 'Lollll', 'phuonganh', 'tunganh', NULL, '2024-03-17 17:39:07', 'private'),
(9, 'What', 'phuonganh', 'class_group', NULL, '2024-03-17 17:39:25', 'group'),
(10, 'Are you doing', 'tunganh', 'class_group', NULL, '2024-03-17 17:39:36', 'group'),
(11, 'Heyyy what’s up', 'phuonganh', 'class_group', NULL, '2024-03-17 17:42:32', 'group'),
(12, 'Á đù men', 'giavan', 'class_group', NULL, '2024-03-17 18:13:35', 'group'),
(13, 'Chất đêys', 'giavan', 'class_group', NULL, '2024-03-17 18:13:42', 'group'),
(14, 'Nai xừ', 'giavan', 'class_group', NULL, '2024-03-17 20:05:44', 'group'),
(21, 'hola', 'tunganh', 'phuonganh', NULL, '2024-03-18 10:39:50', 'private'),
(22, 'hola2', 'tunganh', 'phuonganh', NULL, '2024-03-18 10:42:46', 'private'),
(23, 'Hey', 'phuonganh', 'class_group', NULL, '2024-03-18 10:55:26', 'group'),
(24, 'Yo', 'phuonganh', 'class_group', NULL, '2024-03-18 10:57:06', 'group'),
(25, 'Hello whats uppppppp', 'giavan', 'phuonganh', NULL, '2024-03-18 11:08:28', 'private'),
(26, 'Sup bro', 'phuonganh', 'giavan', NULL, '2024-03-18 11:08:49', 'private'),
(27, 'Qwerty', 'giavan', 'phuonganh', NULL, '2024-03-18 12:44:17', 'private'),
(28, 'Hey', 'tunganh', 'phuonganh', NULL, '2024-03-18 12:53:19', 'private'),
(29, 'Hey  ', 'phuonganh', 'tunganh', NULL, '2024-03-18 12:53:51', 'private'),
(30, 'Lollll  ', 'phuonganh', 'tunganh', NULL, '2024-03-18 13:00:22', 'private'),
(31, 'Alooo', 'tunganh', 'giavan', NULL, '2024-03-18 13:02:00', 'private'),
(32, 'Hi', 'tunganh', 'phuonganh', NULL, '2024-03-18 13:02:53', 'private'),
(33, 'Holll', 'phuonganh', 'tunganh', NULL, '2024-03-18 13:23:56', 'private'),
(34, 'Haha', 'phuonganh', 'giavan', NULL, '2024-03-18 13:56:52', 'private'),
(35, 'Học ', 'phuonganh', 'giavan', NULL, '2024-03-18 13:57:36', 'private'),
(36, 'dinh muc nha may', 'phuonganh', 'tunganh', NULL, '2024-03-18 14:02:46', 'private'),
(37, 'huh?', 'giavan', 'tunganh', NULL, '2024-03-18 14:16:00', 'private'),
(38, 'Ha', 'tunganh', 'giavan', NULL, '2024-03-18 14:16:08', 'private'),
(39, 'cc', 'giavan', 'tunganh', NULL, '2024-03-18 14:17:33', 'private'),
(40, 'duma', 'giavan', 'class_group', NULL, '2024-03-18 14:18:59', 'group'),
(41, 'Hihi', 'tunganh', 'class_group', NULL, '2024-03-18 14:19:20', 'group'),
(42, 'hi cai loz a', 'giavan', 'class_group', NULL, '2024-03-18 14:23:15', 'group'),
(43, 'hehe', 'giavan', 'class_group', NULL, '2024-03-18 14:26:18', 'group'),
(44, '?', 'giavan', 'phuonganh', NULL, '2024-03-18 14:26:30', 'private'),
(45, 'ko', 'giavan', 'phuonganh', NULL, '2024-03-18 14:30:09', 'private'),
(46, 'k', 'giavan', 'phuonganh', NULL, '2024-03-18 14:37:19', 'private'),
(49, 'Wut', 'tunganh', 'phuonganh', NULL, '2024-03-18 17:58:37', 'private'),
(50, 'lol', 'tunganh', 'giavan', NULL, '2024-03-19 10:19:27', 'private'),
(51, 'hhh', 'tunganh', 'phuonganh', NULL, '2024-03-19 10:21:02', 'private'),
(52, 'lll', 'tunganh', 'class_group', NULL, '2024-03-19 10:27:42', 'group'),
(53, 'll', 'tunganh', 'phuonganh', NULL, '2024-03-19 10:29:38', 'private'),
(54, 'bitch', 'tunganh', 'class_group', NULL, '2024-03-19 10:33:13', 'group'),
(55, 'sdsdsd', 'tunganh', 'class_group', NULL, '2024-03-19 10:34:20', 'group'),
(56, 'sdsd', 'tunganh', 'class_group', NULL, '2024-03-19 10:37:02', 'group'),
(57, 'ajhaa', 'tunganh', 'class_group', NULL, '2024-03-19 10:43:25', 'group'),
(58, 'haha', 'tunganh', 'giavan', NULL, '2024-03-19 10:51:18', 'private'),
(59, 'll', 'tunganh', 'giavan', NULL, '2024-03-19 10:52:37', 'private'),
(60, 'haha', 'tunganh', 'class_group', NULL, '2024-03-19 10:52:56', 'group'),
(61, 'ah', 'tunganh', 'phuonganh', NULL, '2024-03-19 10:53:03', 'private'),
(62, 'llll', 'tunganh', 'class_group', NULL, '2024-03-19 10:53:33', 'group'),
(63, 'lll', 'tunganh', 'phuonganh', NULL, '2024-03-19 10:53:43', 'private'),
(64, 'hic', 'tunganh', 'giavan', NULL, '2024-03-19 10:54:48', 'private'),
(65, 'fuuuu', 'tunganh', 'class_group', NULL, '2024-03-19 10:57:35', 'group'),
(66, 'har?', 'phuonganh', 'tunganh', NULL, '2024-03-19 10:58:18', 'private'),
(67, 'aha', 'tunganh', 'phuonganh', NULL, '2024-03-19 11:04:39', 'private'),
(68, 'huhu', 'phuonganh', 'tunganh', NULL, '2024-03-19 11:27:16', 'private'),
(69, 'hihi', 'phuonganh', 'tunganh', NULL, '2024-03-19 11:27:38', 'private'),
(70, 'Hihi', 'tunganh', 'class_group', NULL, '2024-03-19 11:31:36', 'group'),
(71, 'tunganh', 'tunganh', 'phuonganh', NULL, '2024-03-19 12:33:42', 'private'),
(72, 'tunganh', 'tunganh', 'phuonganh', NULL, '2024-03-19 12:33:45', 'private'),
(73, 'tunganh', 'tunganh', 'class_group', NULL, '2024-03-19 12:33:46', 'group'),
(74, 'tunganh', 'tunganh', 'class_group', NULL, '2024-03-19 12:33:48', 'group'),
(75, 'tunganh', 'tunganh', 'giavan', NULL, '2024-03-19 12:34:28', 'private'),
(76, 'tunganh', 'tunganh', 'giavan', NULL, '2024-03-19 12:34:30', 'private'),
(77, 'tunganh', 'tunganh', 'giavan', NULL, '2024-03-19 12:34:31', 'private'),
(78, 'tunganh', 'tunganh', 'giavan', NULL, '2024-03-19 12:34:33', 'private'),
(79, 'gzkzof', 'tunganh', 'giavan', NULL, '2024-03-19 12:34:34', 'private'),
(80, 'jytiul', 'tunganh', 'giavan', NULL, '2024-03-19 12:34:36', 'private'),
(81, 'bsmoyj', 'tunganh', 'class_group', NULL, '2024-03-19 12:34:56', 'group'),
(82, 'bvhnuj', 'tunganh', 'giavan', NULL, '2024-03-19 12:36:01', 'private'),
(83, 'Hehe', 'tunganh', 'phuonganh', NULL, '2024-03-19 13:48:44', 'private'),
(84, 'Hi', 'tunganh', 'phuonganh', NULL, '2024-03-19 13:48:53', 'private'),
(85, 'H', 'tunganh', 'phuonganh', NULL, '2024-03-19 13:49:20', 'private'),
(86, 'Hello', 'tunganh', 'phuonganh', NULL, '2024-03-19 13:50:06', 'private'),
(87, 'H ah a', 'tunganh', 'phuonganh', NULL, '2024-03-19 13:50:21', 'private'),
(88, 'Ha', 'tunganh', 'phuonganh', NULL, '2024-03-19 13:51:05', 'private'),
(89, 'Hii', 'tunganh', 'phuonganh', NULL, '2024-03-19 13:51:58', 'private'),
(90, 'hii', 'tunganh', 'phuonganh', NULL, '2024-03-19 13:52:23', 'private'),
(91, 'tugem', 'tunganh', 'giavan', NULL, '2024-03-19 13:57:14', 'private'),
(92, 'Hihi', 'tunganh', 'giavan', NULL, '2024-03-19 13:57:42', 'private'),
(93, 'Jdkxklcldl', 'tunganh', 'giavan', NULL, '2024-03-19 13:57:53', 'private'),
(94, 'Lalls', 'tunganh', 'giavan', NULL, '2024-03-19 13:58:07', 'private'),
(95, 'hi', 'tunganh', 'sonhoa', NULL, '2024-03-19 13:58:59', 'private'),
(96, 'Cl', 'sonhoa', 'tunganh', NULL, '2024-03-19 13:59:09', 'private'),
(97, 'Cc', 'tunganh', 'giavan', NULL, '2024-03-27 12:50:55', 'private'),
(98, 'Cc', 'tunganh', 'phuonganh', NULL, '2024-03-27 13:04:29', 'private'),
(99, 'Hh', 'tunganh', 'giavan', NULL, '2024-03-27 13:04:39', 'private'),
(100, 'Hehe', 'tunganh', 'phuonganh', NULL, '2024-03-28 10:36:18', 'private'),
(101, 'Con caccc', 'tunganh', 'class_group', NULL, '2024-05-16 18:20:26', 'group'),
(102, 'Hâh', 'phuonganh', 'tunganh', NULL, '2024-05-16 18:21:32', 'private'),
(103, 'lol', 'tunganh', 'giavan', NULL, '2024-05-25 16:27:14', 'private'),
(104, 'hic', 'tunganh', 'giavan', NULL, '2024-05-25 16:27:23', 'private'),
(105, '??', 'giavan', 'tunganh', NULL, '2024-05-25 17:31:21', 'private'),
(106, 'j dey', 'giavan', 'tunganh', NULL, '2024-05-25 17:31:29', 'private'),
(107, 'khum co j', 'tunganh', 'giavan', NULL, '2024-05-25 17:31:43', 'private'),
(108, 'jh,hh', 'giavan', 'class_group', NULL, '2024-05-25 17:32:02', 'group'),
(109, 'Cc', 'tunganh', 'giavan', NULL, '2024-05-25 17:48:11', 'private'),
(110, '??', 'giavan', 'tunganh', NULL, '2024-05-25 17:49:41', 'private'),
(111, 'aosdoiasdasdiasjdaiojdoisjdioasdijaidojasdiojasiojaijsoijadosijdsajo', 'giavan', 'tunganh', NULL, '2024-05-25 18:08:06', 'private'),
(112, 'Good morning!', 'giavan', 'tunganh', NULL, '2024-05-25 18:33:42', 'private'),
(113, '', 'tunganh', 'phuonganh', 'tunganh_to_phuonganh6651dd55a44365.28493120.png', '2024-05-25 19:45:09', 'private'),
(114, '', 'tunganh', 'phuonganh', 'tunganh_to_phuonganh6651dff5959460.08248744.jpg', '2024-05-25 19:56:21', 'private'),
(122, '', 'tunganh', 'phuonganh', 'tunganh_to_phuonganh6194737e90ee40.45519048.jpg', '2024-05-25 20:25:34', 'private'),
(123, '', 'tunganh', 'phuonganh', 'tunganh_to_phuonganh6194741c77cd44.33951883.jpg', '2024-05-25 20:28:20', 'private'),
(124, 'cc', 'tunganh', 'phuonganh', NULL, '2024-05-25 20:28:25', 'private'),
(125, 'loo', 'tunganh', 'class_group', NULL, '2024-05-25 20:28:41', 'group'),
(126, 'll', 'tunganh', 'class_group', NULL, '2024-05-25 20:29:12', 'group'),
(127, 'hehe', 'tunganh', 'sonhoa', NULL, '2024-05-25 20:29:31', 'private'),
(128, '', 'tunganh', 'sonhoa', 'tunganh_to_sonhoa6194746946168c.48554939.jpg', '2024-05-25 20:29:41', 'private'),
(129, '', 'tunganh', 'class_group', 'tunganh_to_undefined6194770b08bde0.95906015.jpg', '2024-05-25 20:41:26', 'group'),
(130, '', 'tunganh', 'class_group', 'tunganh_to_undefined61947723e1377c.93299597.jpg', '2024-05-25 20:41:52', 'group'),
(131, '', 'tunganh', 'class_group', 'tunganh_to_undefined61947796bb68d0.12580407.jpg', '2024-05-25 20:43:52', 'group'),
(132, '', 'tunganh', 'class_group', 'tunganh_to_undefined61947845a16dcc.97977919.jpg', '2024-05-25 20:46:56', 'group'),
(133, '', 'tunganh', 'class_group', 'tunganh_to_undefined6194788768cd28.49839326.jpg', '2024-05-25 20:48:06', 'group'),
(134, '', 'tunganh', 'phuonganh', 'tunganh_to_phuonganh6194f9f2a0c668.44820840.jpg', '2024-05-26 06:27:09', 'private'),
(135, 'hhh', 'tunganh', 'phuonganh', NULL, '2024-05-26 06:27:39', 'private'),
(136, 'hh', 'tunganh', 'phuonganh', NULL, '2024-05-26 06:32:38', 'private'),
(137, 'll', 'tunganh', 'phuonganh', NULL, '2024-05-26 06:33:17', 'private'),
(138, 'haha', 'tunganh', 'sonhoa', NULL, '2024-05-26 09:38:15', 'private'),
(139, 'haha', 'tunganh', 'sonhoa', NULL, '2024-05-26 09:38:20', 'private'),
(140, 'asd', 'tunganh', 'sonhoa', NULL, '2024-05-26 09:38:23', 'private'),
(141, 'hihi', 'tunganh', 'sonhoa', NULL, '2024-05-26 09:38:53', 'private'),
(142, '', 'tunganh', 'sonhoa', 'tunganh_to_sonhoa619524dace6c70.45363920.jpg', '2024-05-26 09:39:05', 'private'),
(143, '', 'tunganh', 'sonhoa', 'tunganh_to_sonhoa6195253decd718.11415049.jpg', '2024-05-26 09:40:51', 'private'),
(144, 'llll', 'tunganh', 'phuonganh', NULL, '2024-05-26 14:31:02', 'private'),
(145, 'hehe', 'tunganh', 'phuonganh', NULL, '2024-05-26 14:31:27', 'private'),
(146, 'hjhj', 'tunganh', 'giavan', NULL, '2024-05-26 14:33:08', 'private'),
(147, '', 'tunganh', 'giavan', 'tunganh_to_giavan61956776936fe8.48894709.jpg', '2024-05-26 14:37:03', 'private'),
(148, 'll', 'tunganh', 'class_group', NULL, '2024-05-26 14:44:27', 'group'),
(149, 's', 'tunganh', 'sonhoa', NULL, '2024-05-26 14:48:35', 'private'),
(150, 'lllol', 'tunganh', 'sonhoa', NULL, '2024-05-26 14:52:52', 'private'),
(151, 'aloo', 'tunganh', 'class_group', NULL, '2024-05-26 14:53:07', 'group'),
(152, 'nnn', 'tunganh', 'phuonganh', NULL, '2024-05-26 14:53:24', 'private'),
(153, 'hjhj', 'tunganh', 'class_group', NULL, '2024-05-26 14:56:05', 'group'),
(154, 'hahhaa', 'tunganh', 'giavan', NULL, '2024-05-26 15:07:26', 'private'),
(155, 'hahha', 'tunganh', 'giavan', NULL, '2024-05-26 15:08:31', 'private'),
(156, 'sdsd', 'tunganh', 'giavan', NULL, '2024-05-26 15:08:56', 'private'),
(157, 'dsds', 'tunganh', 'phuonganh', NULL, '2024-05-26 15:09:50', 'private'),
(158, 'sds', 'tunganh', 'class_group', NULL, '2024-05-26 15:16:14', 'group'),
(159, 'kekke', 'tunganh', 'phuonganh', NULL, '2024-05-26 15:18:31', 'private'),
(160, 'l', 'tunganh', 'giavan', NULL, '2024-05-26 15:20:11', 'private'),
(161, 'hj', 'tunganh', 'phuonganh', NULL, '2024-05-26 15:23:48', 'private'),
(162, 'haha', 'tunganh', 'sonhoa', NULL, '2024-05-26 15:34:02', 'private'),
(163, 'tunganh', 'tunganh', 'sonhoa', NULL, '2024-05-26 16:26:54', 'private'),
(164, 'tunganh', 'tunganh', 'sonhoa', NULL, '2024-05-26 16:26:58', 'private'),
(165, 'rblwal', 'tunganh', 'sonhoa', NULL, '2024-05-26 16:27:07', 'private'),
(166, 'eomsdv', 'tunganh', 'phuonganh', NULL, '2024-05-26 16:27:31', 'private'),
(167, 'bkfvvp', 'tunganh', 'giavan', NULL, '2024-05-26 16:27:40', 'private'),
(168, 'ongzpo', 'tunganh', 'giavan', NULL, '2024-05-26 16:27:53', 'private'),
(169, 'fflqxn', 'tunganh', 'class_group', NULL, '2024-05-26 16:37:04', 'group'),
(170, 'vijomc', 'tunganh', 'class_group', NULL, '2024-05-26 16:37:17', 'group'),
(171, '', 'tunganh', 'class_group', 'tunganh_to_undefined619590954a4c0c.10200882.jpg', '2024-05-26 17:40:59', 'group'),
(172, 'Hihi', 'tunganh', 'class_group', NULL, '2024-05-26 17:41:47', 'group'),
(173, 'Hi', 'tunganh', 'sonhoa', NULL, '2024-05-26 17:43:35', 'private'),
(174, '?', 'tunganh', 'sonhoa', NULL, '2024-05-26 17:43:58', 'private'),
(175, '?', 'tunganh', 'sonhoa', NULL, '2024-05-26 17:46:30', 'private'),
(176, '', 'tunganh', 'class_group', 'tunganh_to_undefined619591ef3ba730.79560756.png', '2024-05-26 17:47:03', 'group'),
(177, 'Wasss', 'tunganh', 'class_group', NULL, '2024-05-26 17:47:18', 'group'),
(178, '///', 'tunganh', 'sonhoa', NULL, '2024-05-26 17:47:32', 'private'),
(179, 'Ahha', 'tunganh', 'sonhoa', NULL, '2024-05-26 17:47:47', 'private'),
(180, '', 'tunganh', 'sonhoa', NULL, '2024-05-26 17:47:58', 'private'),
(181, '', 'tunganh', 'sonhoa', 'tunganh_to_sonhoa6195922874a640.56515506.jpg', '2024-05-26 17:48:06', 'private'),
(182, '', 'tunganh', 'sonhoa', 'tunganh_to_sonhoa6195923f1f8a20.17338894.jpg', '2024-05-26 17:48:30', 'private'),
(183, 'Hih', 'tunganh', 'phuonganh', NULL, '2024-05-26 17:48:59', 'private'),
(184, 'Đmm', 'tunganh', 'giavan', NULL, '2024-05-26 17:49:07', 'private'),
(185, 'Loa ???? ', 'ducmanh', 'class_group', NULL, '2024-05-27 08:55:01', 'group'),
(186, '', 'ducmanh', 'class_group', 'ducmanh_to_undefined61965cf009507c.5985871.jpeg', '2024-05-27 08:55:19', 'group'),
(187, 'Haha', 'minhquang', 'tunganh', NULL, '2024-05-27 09:28:45', 'private'),
(188, 'Định mức nhà m', 'tunganh', 'minhquang', NULL, '2024-05-27 09:29:10', 'private'),
(189, '??', 'minhquang', 'tunganh', NULL, '2024-05-27 09:29:26', 'private'),
(190, 'Cc', 'tunganh', 'minhquang', NULL, '2024-05-27 09:30:30', 'private'),
(191, 'Hic', 'thienhuong', 'tunganh', NULL, '2024-05-27 09:34:30', 'private'),
(192, 'Hii', 'thienhuong', 'minhquang', NULL, '2024-05-27 09:34:51', 'private'),
(193, 'Hic con cặc', 'tunganh', 'thienhuong', NULL, '2024-05-27 11:44:42', 'private'),
(194, '', 'phuonganh', 'tunganh', 'phuonganh_to_tunganh61969369a65d88.78533019.jpg', '2024-05-27 12:59:02', 'private'),
(195, 'Hola', 'phuonganh', 'tunganh', NULL, '2024-05-27 12:59:10', 'private'),
(196, 'cut', 'tunganh', 'phuonganh', NULL, '2024-05-27 12:59:30', 'private'),
(197, 'l', 'tunganh', 'phuonganh', NULL, '2024-05-27 13:02:19', 'private'),
(198, '??', 'phuonganh', 'tunganh', NULL, '2024-05-27 13:02:29', 'private'),
(199, 'haha', 'tunganh', 'phuonganh', NULL, '2024-05-27 13:02:44', 'private'),
(200, 'J', 'phuonganh', 'tunganh', NULL, '2024-05-27 13:03:08', 'private'),
(201, 'Tớ iuu cậu mà :<', 'thienhuong', 'tunganh', NULL, '2024-05-27 13:03:11', 'private'),
(202, 'Sao lại nói vậy ', 'thienhuong', 'tunganh', NULL, '2024-05-27 13:03:16', 'private'),
(203, 'Hic', 'thienhuong', 'tunganh', NULL, '2024-05-27 13:03:18', 'private'),
(204, 'cacc', 'tunganh', 'thienhuong', NULL, '2024-05-27 13:04:05', 'private'),
(205, 'co cl nhe :)', 'tunganh', 'thienhuong', NULL, '2024-05-27 13:04:32', 'private'),
(206, 'hihi', 'tunganh', 'thienhuong', NULL, '2024-05-27 13:48:24', 'private'),
(207, 'Loz', 'tunganh', 'phuonganh', NULL, '2024-05-27 13:48:56', 'private'),
(208, 'ngao a', 'tunganh', 'phuonganh', NULL, '2024-05-27 13:51:36', 'private'),
(209, 'Hi con c', 'thienhuong', 'tunganh', NULL, '2024-05-27 15:58:36', 'private'),
(210, 'Yeu thi kh yeu', 'thienhuong', 'tunganh', NULL, '2024-05-27 15:58:42', 'private'),
(211, 'Chich k', 'thienhuong', 'tunganh', NULL, '2024-05-27 15:58:45', 'private'),
(212, '', 'thienhuong', 'tunganh', NULL, '2024-05-27 16:01:02', 'private'),
(213, '???', 'thienhuong', 'tunganh', NULL, '2024-05-27 19:18:40', 'private'),
(214, 'Kh có chức năng thu hồi tin nhắn hả', 'thienhuong', 'tunganh', NULL, '2024-05-27 19:18:58', 'private'),
(215, '', 'thienhuong', 'class_group', 'thienhuong_to_undefined6196e87276ba18.7986040.jpeg', '2024-05-27 19:19:26', 'group'),
(216, 'Uk', 'phuonganh', 'tunganh', NULL, '2024-05-28 06:35:33', 'private'),
(217, 'Anh Dương Tùng', 'phuonganh', 'giavan', NULL, '2024-05-28 06:35:51', 'private'),
(218, '=))) chịu oy', 'phuonganh', 'class_group', NULL, '2024-05-28 06:37:48', 'group'),
(219, '', 'phuonganh', 'class_group', 'phuonganh_to_undefined61978041264828.10742493.jpg', '2024-05-28 06:38:35', 'group'),
(220, 'Khum em :)', 'tunganh', 'thienhuong', NULL, '2024-05-28 10:16:33', 'private'),
(221, 'Hii', 'tunganh', 'phuonganh', NULL, '2024-05-28 10:21:53', 'private'),
(222, 'Làm thêm cái tbao tin nhắn ii', 'thienhuong', 'tunganh', NULL, '2024-05-28 10:36:57', 'private'),
(223, 'Ok sắp có nhé', 'tunganh', 'thienhuong', NULL, '2024-05-28 10:45:25', 'private'),
(224, 'Happi chao ban', 'tunganh', 'phuonganh', NULL, '2024-05-28 11:04:00', 'private'),
(225, 'Có ai tải chưa :)))', 'tunganh', 'class_group', NULL, '2024-05-28 11:04:31', 'group'),
(226, 'Hehe', 'danghai', 'tunganh', NULL, '2024-05-28 13:08:52', 'private'),
(227, 'Alo', 'danghai', 'tunganh', NULL, '2024-05-28 13:12:52', 'private'),
(228, 'Chịu oy', 'danghai', 'class_group', NULL, '2024-05-28 13:13:19', 'group'),
(229, 'Không đăng bài được', 'danghai', 'class_group', NULL, '2024-05-28 13:13:38', 'group'),
(230, '', 'danghai', 'class_group', NULL, '2024-05-28 13:13:39', 'group'),
(231, 'Hiii', 'tunganh', 'danghai', NULL, '2024-05-28 13:16:15', 'private'),
(232, 'Gửi ảnh đc đoá', 'tunganh', 'danghai', NULL, '2024-05-28 13:16:22', 'private'),
(233, 'Haha tí làm tính năng đó nhé', 'tunganh', 'class_group', NULL, '2024-05-28 13:16:55', 'group'),
(234, 'Vcl luôn', 'sonhoa', 'tunganh', NULL, '2024-05-29 10:20:07', 'private'),
(235, 'Cuttt', 'phuonganh', 'tunganh', NULL, '2024-05-30 10:21:38', 'private'),
(236, 'Ua j', 'tunganh', 'phuonganh', NULL, '2024-05-30 10:41:03', 'private'),
(237, 'Fukk', 'tunganh', 'phuonganh', NULL, '2024-05-30 10:44:06', 'private'),
(238, 'Jjj', 'tunganh', 'sonhoa', NULL, '2024-05-30 11:01:41', 'private'),
(239, 'abc', 'tunganh', 'phuonganh', NULL, '2024-05-30 11:25:54', 'private'),
(240, 'Lmooo', 'tunganh', 'phuonganh', NULL, '2024-05-30 12:33:37', 'private'),
(241, 'Cbi có nè', 'tunganh', 'thienhuong', NULL, '2024-05-30 12:35:46', 'private'),
(242, 'Hh', 'tunganh', 'minhquang', NULL, '2024-05-30 12:59:44', 'private'),
(243, 'Ll', 'tunganh', 'minhquang', NULL, '2024-05-30 13:00:25', 'private'),
(244, 'Lo', 'tunganh', 'minhquang', NULL, '2024-05-30 13:00:49', 'private'),
(245, 'Lol', 'tunganh', 'minhquang', NULL, '2024-05-30 13:01:06', 'private'),
(246, 'Haha', 'tunganh', 'minhquang', NULL, '2024-05-30 13:04:39', 'private'),
(247, 'Haha', 'phuonganh', 'tunganh', NULL, '2024-05-30 13:05:40', 'private'),
(248, 'Dmm', 'phuonganh', 'tunganh', NULL, '2024-05-30 13:09:59', 'private'),
(249, '?', 'phuonganh', 'tunganh', NULL, '2024-05-30 13:11:51', 'private'),
(250, 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', 'phuonganh', 'tunganh', NULL, '2024-05-30 13:13:17', 'private'),
(251, 'Huhu', 'buithuhien', 'tunganh', NULL, '2024-05-31 10:08:15', 'private'),
(252, 'Hihi', 'buithuhien', 'tunganh', NULL, '2024-05-31 10:10:31', 'private'),
(253, 'Hehee', 'tunganh', 'buithuhien', NULL, '2024-05-31 10:11:19', 'private'),
(254, 'Vv', 'buithuhien', 'tunganh', NULL, '2024-05-31 10:12:17', 'private'),
(255, 'Hihi', 'tunganh', 'buithuhien', NULL, '2024-05-31 10:15:06', 'private'),
(256, 'Vẫn chưa có', 'thienhuong', 'tunganh', NULL, '2024-05-31 11:56:32', 'private'),
(257, 'aryrsj', 'tunganh', 'phuonganh', NULL, '2024-06-01 08:56:10', 'private'),
(258, 'jhhzqy', 'tunganh', 'phuonganh', NULL, '2024-06-01 08:56:11', 'private'),
(259, '?????', 'thienhuong', 'tunganh', NULL, '2024-06-01 12:21:25', 'private'),
(260, 'Sao rùi', 'thienhuong', 'tunganh', NULL, '2024-06-01 12:21:29', 'private'),
(261, 'Lo', 'buithuhien', 'tunganh', NULL, '2024-06-01 15:16:25', 'private'),
(262, 'Đang build app nha', 'tunganh', 'thienhuong', NULL, '2024-06-01 15:28:08', 'private'),
(263, 'Tí nữa lên store update ik', 'tunganh', 'thienhuong', NULL, '2024-06-01 15:28:24', 'private'),
(264, 'jruuoy', 'tunganh', 'giavan', NULL, '2024-06-01 16:00:19', 'private'),
(265, 'utgopu', 'tunganh', 'class_group', NULL, '2024-06-01 16:02:12', 'group'),
(266, 'tunganh', 'tunganh', 'buithuhien', NULL, '2024-06-01 16:03:21', 'private'),
(267, 'tunganh', 'tunganh', 'buithuhien', NULL, '2024-06-01 16:03:25', 'private'),
(268, 'pbezpq', 'tunganh', 'buithuhien', NULL, '2024-06-01 16:03:33', 'private'),
(269, 'tunganh', 'tunganh', 'minhquang', NULL, '2024-06-01 16:04:08', 'private'),
(270, 'tunganh', 'tunganh', 'minhquang', NULL, '2024-06-01 16:04:11', 'private'),
(271, 'kxtyqh', 'tunganh', 'class_group', NULL, '2024-06-01 16:10:22', 'group'),
(272, 'zjnnnq', 'tunganh', 'sonhoa', NULL, '2024-06-01 16:13:12', 'private'),
(273, 'sxgtow', 'tunganh', 'sonhoa', NULL, '2024-06-01 16:13:34', 'private'),
(274, 'vijomc', 'tunganh', 'sonhoa', NULL, '2024-06-01 16:13:48', 'private'),
(275, 'Xong rùi nha', 'tunganh', 'thienhuong', NULL, '2024-06-01 17:30:06', 'private'),
(276, '', 'tunganh', 'thienhuong', 'tunganh_to_thienhuong619d195df80518.15996407.jpg', '2024-06-01 17:30:13', 'private'),
(277, 'Alo', 'phamthuhien', 'tunganh', NULL, '2024-06-01 18:30:44', 'private'),
(278, 'Hello', 'tunganh', 'thienhuong', NULL, '2024-06-03 07:58:26', 'private'),
(279, 'Hi', 'tunganh', 'thienhuong', NULL, '2024-06-03 12:06:44', 'private'),
(280, 'Lô', 'thienhuong', 'tunganh', NULL, '2024-06-03 12:07:10', 'private'),
(281, '', 'tunganh', 'class_group', 'tunganh_to_undefined61a205f052cb84.85252395.jpg', '2024-06-05 15:29:57', 'group'),
(282, '', 'tunganh', 'thienhuong', 'tunganh_to_thienhuong61a205fff0fa28.42681623.jpg', '2024-06-05 15:30:13', 'private'),
(283, 'Tớ yêu cậu', 'tunganh', 'thienhuong', NULL, '2024-06-12 11:44:33', 'private'),
(284, 'Lô cặc', 'tunganh', 'phamthuhien', NULL, '2024-06-12 11:44:45', 'private'),
(285, 'Djtmemay', 'tunganh', 'phamthuhien', NULL, '2024-06-12 11:44:49', 'private'),
(286, 'Hihi', 'tunganh', 'thienhuong', NULL, '2024-06-17 10:05:09', 'private'),
(287, 'Hello babe:))', 'tunganh', 'thuylinh', NULL, '2024-06-30 17:20:45', 'private'),
(288, 'Hjhj', 'tunganh', 'thuylinh', NULL, '2024-06-30 17:21:21', 'private'),
(289, 'Vcl', 'tunganh', 'giavan', NULL, '2024-06-30 17:21:43', 'private'),
(290, 'Qqqqq', 'thuylinh', 'tunganh', NULL, '2024-06-30 17:21:46', 'private'),
(291, 'Bbc', 'thuylinh', 'tunganh', NULL, '2024-06-30 17:21:50', 'private'),
(292, 'Chgx', 'thuylinh', 'tunganh', NULL, '2024-06-30 17:21:52', 'private'),
(293, 'C', 'thuylinh', 'tunganh', NULL, '2024-06-30 17:22:04', 'private'),
(294, 'Nnnk', 'thuylinh', 'tunganh', NULL, '2024-06-30 17:22:22', 'private'),
(295, 'Hello', 'thuylinh', 'tunganh', NULL, '2024-06-30 17:22:25', 'private'),
(296, ':)))', 'tunganh', 'thuylinh', NULL, '2024-06-30 17:22:54', 'private'),
(297, 'Qq', 'thuylinh', 'tunganh', NULL, '2024-06-30 17:23:01', 'private'),
(298, 'Gửi qua mess ảnh đẹp nhất của babe đi', 'tunganh', 'thuylinh', NULL, '2024-06-30 17:23:29', 'private'),
(299, 'Để a tạo nick mới cho babe ở app này :))', 'tunganh', 'thuylinh', NULL, '2024-06-30 17:23:42', 'private'),
(300, 'Taoo đii', 'thuylinh', 'tunganh', NULL, '2024-06-30 17:24:58', 'private'),
(301, 'Lmao', 'tunganh', 'thienhuong', NULL, '2024-06-30 17:26:09', 'private'),
(302, 'Đợi xíu hen', 'tunganh', 'thuylinh', NULL, '2024-06-30 17:26:20', 'private'),
(303, 'Cho xin số điện thoại coi', 'tunganh', 'thuylinh', NULL, '2024-06-30 17:31:08', 'private'),
(304, 'Hú', 'tunganh', 'thuylinh', NULL, '2024-06-30 17:44:43', 'private'),
(305, 'Hellu', 'tunganh', 'vulan', NULL, '2024-06-30 18:04:33', 'private'),
(306, 'Húuuuu', 'tunganh', 'vulan', NULL, '2024-06-30 18:05:04', 'private'),
(307, 'Kh ib vs ng lạ', 'vulan', 'tunganh', NULL, '2024-06-30 18:05:55', 'private'),
(308, 'Qq', 'tunganh', 'vulan', NULL, '2024-06-30 18:06:54', 'private'),
(309, 'Xàm', 'tunganh', 'vulan', NULL, '2024-06-30 18:06:57', 'private'),
(310, 'Ai cho bắt trước ', 'vulan', 'tunganh', NULL, '2024-06-30 18:07:28', 'private'),
(311, 'Kệ hihi', 'tunganh', 'vulan', NULL, '2024-06-30 18:12:48', 'private'),
(312, '', 'tunganh', 'class_group', 'tunganh_to_undefined61c3e3f7c9e14c.42179340.jpg', '2024-07-02 13:59:03', 'group'),
(313, '', 'tunganh', 'class_group', 'tunganh_to_undefined61c3e3fed3ee6c.85537606.jpg', '2024-07-02 13:59:10', 'group'),
(314, 'lol', 'tunganh', 'phamthuhien', NULL, '2024-07-06 11:20:55', 'private'),
(315, '', 'tunganh', 'phamthuhien', NULL, '2024-07-06 11:38:42', 'private'),
(316, 'lmao', 'tunganh', 'phamthuhien', NULL, '2024-07-06 11:40:13', 'private'),
(317, '', 'tunganh', 'phamthuhien', 'z5602653760590_38427beec230b4911f855f0c569d1791.jpg', '2024-07-06 11:54:01', 'private'),
(318, '', 'tunganh', 'phamthuhien', 'tunganh_to_phamthuhien61c8d23f859498.85604266.jpg', '2024-07-06 12:06:21', 'private'),
(319, '', 'tunganh', 'class_group', 'tunganh_to_undefined61d0f4c4e05074.70129425.jpg', '2024-07-12 23:23:30', 'group'),
(320, '', 'tunganh', 'class_group', 'tunganh_to_undefined61d0f4d1286010.13626185.jpg', '2024-07-12 23:23:36', 'group'),
(321, '', 'tunganh', 'class_group', 'tunganh_to_undefined61d0f4dfd17bb0.30237454.jpg', '2024-07-12 23:24:04', 'group'),
(322, 'Kkk', 'tunganh', 'phamthuhien', NULL, '2024-07-21 10:38:52', 'private'),
(323, 'Lol', 'tunganh', 'phamthuhien', NULL, '2024-07-21 10:39:59', 'private'),
(324, 'Lan ới lan à', 'tunganh', 'vulan', NULL, '2024-07-27 03:10:42', 'private'),
(325, 'Lan đâu rồi', 'tunganh', 'vulan', NULL, '2024-07-27 03:10:45', 'private'),
(326, 'Sao lại block anh', 'tunganh', 'vulan', NULL, '2024-07-27 03:10:52', 'private'),
(327, 'Hehe', 'tunganh', 'class_group', NULL, '2024-07-30 12:59:16', 'group');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int(11) NOT NULL,
  `user_1` varchar(25) NOT NULL,
  `user_2` varchar(25) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `user_1`, `user_2`, `updated_at`) VALUES
(1, 'tunganh', 'phuonganh', '2024-06-01 01:56:11'),
(4, 'giavan', 'phuonganh', '2024-05-27 23:35:51'),
(5, 'tunganh', 'giavan', '2024-06-30 10:21:43'),
(6, 'tunganh', 'sonhoa', '2024-06-01 09:13:48'),
(8, 'minhquang', 'tunganh', '2024-06-01 09:04:11'),
(9, 'thienhuong', 'tunganh', '2024-06-30 10:26:09'),
(10, 'thienhuong', 'minhquang', '2024-05-27 02:34:51'),
(11, 'danghai', 'tunganh', '2024-05-28 06:16:22'),
(12, 'buithuhien', 'tunganh', '2024-06-01 09:03:34'),
(13, 'phamthuhien', 'tunganh', '2024-07-21 03:39:59'),
(14, 'tunganh', 'thuylinh', '2024-06-30 10:44:43'),
(15, 'tunganh', 'vulan', '2024-07-26 20:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `donators`
--

CREATE TABLE `donators` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_link` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donators`
--

INSERT INTO `donators` (`id`, `name`, `amount`, `social_link`) VALUES
(1, 'Nguyễn Đặng Hải', '$8', 'https://www.facebook.com/ndhai112'),
(2, 'Ẩn danh', '20.000đ', NULL),
(3, 'Ẩn danh', '20.000đ', NULL),
(4, 'Vũ Minh Quang', '100.000đ', 'https://www.facebook.com/quang.vuminh.5851'),
(5, 'Dương Phương Thảo', '22.222đ', 'https://www.facebook.com/duongthaokut3'),
(6, 'Đỗ Hồng Quân', '20.000đ', 'https://www.facebook.com/dohongquan1243');

-- --------------------------------------------------------

--
-- Table structure for table `images_upload`
--

CREATE TABLE `images_upload` (
  `id` int(11) NOT NULL,
  `c4id` int(5) NOT NULL,
  `username` varchar(999) NOT NULL,
  `filename` varchar(999) NOT NULL,
  `time_of_upload` datetime NOT NULL,
  `caption` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images_upload`
--

INSERT INTO `images_upload` (`id`, `c4id`, `username`, `filename`, `time_of_upload`, `caption`) VALUES
(1, 21110, 'tunnaduong', '/images/tunna.jpg', '2021-02-06 17:50:00', ''),
(2, 25896, 'tunnaduong', '/images/PHQ_2410-min.jpg', '2021-02-07 18:24:43', ''),
(3, 53132, 'tunnaduong', 'images/pink-flower-tree-facebook-cover-photo.jpg', '2021-02-07 21:01:43', 'sdsd'),
(5, 12806, 'tunnaduong', '/images/default_pic.jpg', '2021-02-07 21:15:42', 'concac'),
(6, 41397, 'tunnaduong', '/images/èkjlksd.png', '2021-03-25 12:03:09', 'Khoa học kĩ thuật'),
(7, 28576, 'tunnaduong', '/images/75398383_515895812592428_205755807088771072_n.jpg', '2021-03-25 12:05:21', 'nice'),
(8, 52418, 'tunnaduong', '/images/batan.jpg', '2021-03-25 12:05:38', ''),
(9, 70244, 'tunnaduong', '/images/142666639_1289218368131099_2558979508519694682_n.jpg', '2021-03-25 12:06:01', 'xinh'),
(10, 22744, 'tunnaduong', '/images/èkjlksd.png', '2021-03-25 12:09:10', 'khkt'),
(11, 22029, 'tunnaduong', '/images/7E6F9B68-27EA-4D8E-BC7A-EB93CFAF2116.jpeg', '2021-03-25 12:14:20', 'đếm xem có bao nhiêu tunna trong ảnh ik'),
(12, 65416, 'tunnaduong', '/images/image.jpg', '2021-03-25 12:18:01', 'chơi bài đi'),
(13, 98539, 'tunnaduong', '/images/85DF3E17-501A-4DE0-A70F-02D57A3C2C2F.jpeg', '2021-03-25 12:18:53', 'thằng mọi da đen đang nhảy'),
(14, 12092, 'tunnaduong', '/images/Picture 1.png', '2021-03-25 13:23:20', 'Dự án khoa học kĩ thuật'),
(15, 54054, 'tunnaduong', '/images/F39DC377-F6C8-4768-8F31-F3F35F96375A.jpeg', '2021-03-25 22:03:43', 'Hải thiểu năng :))'),
(16, 34890, 'shibaanh2708', '/images/01581F85-3902-4FAE-85F3-F4A2B74AA5AC.jpeg', '2021-03-25 22:27:45', 'Hế tan học rùi lè'),
(17, 11822, 'tunnaduong', '/images/D854950F-0B1F-4021-B05C-55925D8EF3AF.jpeg', '2021-03-25 22:40:08', 'Con mèo béo.jpg'),
(18, 11850, 'tunnaduong', '/images/video_2_webgioithieu_thumbnail.png', '2021-08-23 09:44:42', 'Địt cụ thằng béo hahahahahahahahahahaĐịt cụ thằng béo hahahahahahahahahahaĐịt cụ thằng béo hahahahahahahahahahaĐịt cụ thằng béosđss'),
(19, 70685, 'tunnaduong', '/images/video_3_webgiongfb.png', '2021-08-25 16:45:32', 'dsdsd'),
(20, 64658, 'test', '/images/video_1_chaywebpc_thumbnail.png', '2021-08-25 16:49:43', 'Đây là một bài test'),
(21, 81147, 'tunnaduong', '/images/20211219_162535.png', '2022-01-04 19:59:46', '\r\n:)))'),
(22, 28352, 'tunnaduong', '/images/Symbol-1009-465597f21181.jpeg', '2022-03-13 20:52:36', 'alo'),
(23, 49674, 'thonqu', '/images/A1553D7B-7168-4CF0-B8E6-27D3E48EE5B4.jpeg', '2022-11-20 03:02:30', '20/11/2022 dã ngoại'),
(24, 93840, 'tunnaduong', '/images/balloons.jpeg', '2024-03-13 13:12:09', 'happy'),
(25, 88483, 'tunnaduong', '/images/adaptive-icon (1).png', '2024-03-14 11:32:45', 'haha');

-- --------------------------------------------------------

--
-- Table structure for table `live_radio_idle_playlist`
--

CREATE TABLE `live_radio_idle_playlist` (
  `id` int(3) NOT NULL,
  `video_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_radio_idle_playlist`
--

INSERT INTO `live_radio_idle_playlist` (`id`, `video_id`) VALUES
(1, 'KypuJGsZ8pQ'),
(2, 'UVbv-PJXm14'),
(3, 'PNhYz6RmIr4'),
(4, 'hTGcMk_QXEg'),
(6, '0GVExpdmoDs'),
(7, 'cIGCSUBWfs8'),
(12, 'DcCISK3sCYg'),
(13, 'd6vkQ7D2Vb8'),
(15, 'Yw9Ra2UiVLw'),
(16, 'p40OWOxAeSw'),
(18, 'C-NsSDZydFM'),
(20, 'fHI8X4OXluQ'),
(24, 'HViOPRTO324'),
(26, 'W08NL1mchhs'),
(28, 'Pw-0pbY9JeU'),
(29, '0t2tjNqGyJI'),
(32, '6o5ZMiyabj8'),
(34, 'j65ER9DWITE'),
(37, 'TkYVBTEMC5s'),
(38, '9lwYQO5BDM4'),
(41, '50GgtdTIHJk'),
(42, 'CyscSNNsZBE'),
(43, 'JxBnLmCOEJ8'),
(47, 'QWqMnRNBvAM'),
(48, 'u933bUFjV80'),
(49, 'ljfxIlT_T_4'),
(50, '_akC0MOxdV0'),
(52, 'r17tdNVJRUk'),
(56, 'LZN4I3K8SC0'),
(57, 'DQDu60-C-ns'),
(59, 'Zzn9-ATB9aU'),
(61, 'gUr4qp6YGLs'),
(64, '58IkVCh3hWU'),
(65, 'nHxXzMDmSEQ'),
(67, 'q3HSr-Hfbag'),
(71, 'Gs069dndIYk');

-- --------------------------------------------------------

--
-- Table structure for table `live_radio_logs`
--

CREATE TABLE `live_radio_logs` (
  `id` int(11) NOT NULL,
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_type` enum('chat','user_join','user_left','user_like','user_dislike','user_vote_skip','user_vote_remove') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'chat',
  `msg` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_radio_logs`
--

INSERT INTO `live_radio_logs` (`id`, `created_by`, `msg_type`, `msg`, `thumbnail`, `time`) VALUES
(1, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2022-06-27 08:07:07'),
(6, 'tunganh', 'chat', 'Hú!! Có ai đang xem không?', 'user:tunganh', '2022-06-27 08:08:07'),
(7, 'tunganh', 'chat', 'cuoc doi cu troi...', 'user:tunganh', '2022-06-27 14:02:31'),
(8, 'quangthang', 'chat', 'ta nhin lai', 'user:quangthang', '2022-06-27 14:04:11'),
(9, 'tunganh', 'chat', 'chot nhu chiec hon the thoi', 'user:tunganh', '2022-06-27 14:05:11'),
(10, 'quangthang', 'chat', 'brooo', 'user:quangthang', '2022-06-27 14:12:36'),
(11, 'quangthang', 'chat', 'yo wtf', 'user:quangthang', '2022-06-27 14:17:17'),
(12, 'quangthang', 'chat', 'ahahaha', 'user:quangthang', '2022-06-27 14:21:16'),
(13, 'quangthang', 'chat', 'lol', 'user:quangthang', '2022-06-27 14:21:24'),
(14, 'quangthang', 'chat', 'lmao', 'user:quangthang', '2022-06-27 14:22:00'),
(15, 'tunganh', 'chat', '', 'user:tunganh', '2022-06-27 14:24:43'),
(16, 'tunganh', 'chat', '', 'user:tunganh', '2022-06-27 14:24:48'),
(17, 'tunganh', 'chat', '', 'user:tunganh', '2022-06-27 14:24:58'),
(18, 'tunganh', 'chat', 'chua biet dem dai', 'user:tunganh', '2022-06-27 14:26:39'),
(19, 'tunganh', 'chat', 'dung lo gi baby', 'user:tunganh', '2022-06-27 14:26:54'),
(20, 'tunganh', 'chat', 'bay by dung lam annh xuyyy', 'user:tunganh', '2022-06-27 15:26:01'),
(21, 'tunganh', 'chat', 'trong con ngot ngao', 'user:tunganh', '2022-06-27 15:27:17'),
(22, 'quangthang', 'chat', 'mang tim anh di pha', 'user:quangthang', '2022-06-27 15:27:41'),
(23, 'tunganh', 'chat', 'Xuyyy vai lon', 'user:tunganh', '2022-06-27 15:28:50'),
(24, 'tunganh', 'chat', 'Next plz', 'user:tunganh', '2022-06-27 15:29:25'),
(25, 'tunganh', 'chat', 'Ê app này hay thế', 'user:tunganh', '2022-06-27 15:30:28'),
(26, 'phuonganh', 'chat', 'Yêu đương gìii', 'user:phuonganh', '2022-06-27 15:31:18'),
(27, 'phuonganh', 'chat', 'Em thở nhẹ sợi khói', 'user:phuonganh', '2022-06-27 15:31:46'),
(28, 'phuonganh', 'chat', 'Yoooo', 'user:phuonganh', '2022-06-27 15:33:53'),
(29, 'phuonganh', 'chat', 'Có ai khum :(((', 'user:phuonganh', '2022-06-27 15:34:02'),
(30, 'phuonganh', 'chat', 'Yooo', 'user:phuonganh', '2022-06-27 15:35:18'),
(31, 'minhquang', 'chat', 'Lật trứng', 'user:minhquang', '2022-06-27 15:36:10'),
(32, 'minhquang', 'chat', 'Bb', 'user:minhquang', '2022-06-27 15:37:17'),
(33, 'thuyhien', 'chat', 'Helloooo', 'user:thuyhien', '2022-06-27 15:38:21'),
(34, 'tunganh', 'chat', 'day la mot cmt vo hox', 'user:tunganh', '2022-06-27 15:40:29'),
(35, 'quangthang', 'chat', 'bat dau tu day no se deo load nua :v', 'user:quangthang', '2022-06-27 15:40:56'),
(36, 'giavan', 'chat', 'Đf', 'user:giavan', '2022-06-27 15:50:20'),
(37, 'giavan', 'chat', '?', 'user:giavan', '2022-06-27 15:52:53'),
(38, 'giavan', 'chat', 'Bro', 'user:giavan', '2022-06-27 16:36:49'),
(39, 'giavan', 'chat', 'Hâhha', 'user:giavan', '2022-06-27 16:37:15'),
(40, 'tunganh', 'chat', 'lll', 'user:tunganh', '2022-06-27 16:40:42'),
(41, 'giavan', 'chat', 'Yo', 'user:giavan', '2022-06-27 16:43:21'),
(42, 'giavan', 'chat', 'Hâh', 'user:giavan', '2022-06-27 16:43:33'),
(43, 'giavan', 'chat', '@@', 'user:giavan', '2022-06-28 01:22:06'),
(44, 'giavan', 'chat', '...', 'user:giavan', '2022-06-28 01:22:37'),
(45, 'giavan', 'chat', 'Lol', 'user:giavan', '2022-06-28 01:26:04'),
(46, 'tunganh', 'chat', 'ok', 'user:tunganh', '2022-06-28 02:59:31'),
(47, 'tunganh', 'chat', 'hello anh em', 'user:tunganh', '2022-06-28 03:41:53'),
(48, 'tunganh', 'chat', 'brooo', 'user:tunganh', '2022-06-28 05:34:44'),
(49, 'tunganh', 'chat', 'aloo', 'user:tunganh', '2022-06-28 05:35:28'),
(50, 'danphuongthao', 'chat', 'Ô có app cơ à', 'user:danphuongthao', '2022-06-28 05:40:48'),
(51, 'danphuongthao', 'chat', 'Ừ', 'user:danphuongthao', '2022-06-29 01:27:19'),
(52, 'danphuongthao', 'chat', 'Lô', 'user:danphuongthao', '2022-06-29 01:30:57'),
(53, 'danphuongthao', 'chat', 'Hú', 'user:danphuongthao', '2022-06-29 01:31:06'),
(54, 'danphuongthao', 'chat', 'Haha', 'user:danphuongthao', '2022-06-29 01:34:41'),
(55, 'quangthang', 'chat', 'haha', 'user:quangthang', '2022-06-29 02:56:02'),
(56, 'phamthuhien', 'chat', 'Noonnono', 'user:phamthuhien', '2022-06-29 05:35:30'),
(57, 'quangthang', 'chat', 'Abc', 'user:quangthang', '2022-06-29 06:59:46'),
(58, 'hongquan', 'chat', 'Nnnn', 'user:hongquan', '2022-06-30 08:13:14'),
(59, 'tunganh', 'chat', 'dm phat', 'user:tunganh', '2022-07-01 09:14:54'),
(60, 'tunganh', 'chat', 'Hello world from tung anh', 'user:tunganh', '2022-07-04 15:02:12'),
(61, 'phamthuhien', 'chat', 'Helo', 'user:phamthuhien', '2022-07-10 05:01:54'),
(62, 'tunganh', 'chat', 'Duma', 'user:tunganh', '2022-07-12 22:37:06'),
(63, 'phamthuhien', 'chat', '...', 'user:phamthuhien', '2022-07-13 02:36:54'),
(64, 'thienhuong', 'chat', 'looo', 'user:thienhuong', '2022-07-15 09:16:21'),
(65, 'tunganh', 'chat', 'Hí', 'user:tunganh', '2022-07-15 17:52:09'),
(66, 'phuonganh', 'chat', 'Alo', 'user:phuonganh', '2022-07-17 08:37:39'),
(67, 'giavan', 'chat', 'Dm phat', 'user:giavan', '2022-07-17 09:48:19'),
(68, 'huyentrang', 'chat', 'Con chào cô chú', 'user:huyentrang', '2022-07-31 13:50:30'),
(69, 'huyentrang', 'chat', 'Dcm', 'user:huyentrang', '2022-08-06 12:24:54'),
(70, 'huyentrang', 'chat', 'Hâhhaha', 'user:huyentrang', '2022-08-06 12:24:59'),
(71, 'tunganh', 'chat', 'Ô hi', 'user:tunganh', '2022-08-06 12:27:26'),
(72, 'tunganh', 'chat', '????????????????????????????', 'user:tunganh', '2022-08-07 04:05:49'),
(73, 'tunganh', 'chat', '????????', 'user:tunganh', '2022-08-07 04:06:08'),
(74, 'tunganh', 'chat', 'Dhsjsjsj', 'user:tunganh', '2022-08-09 03:42:48'),
(75, 'tunganh', 'chat', 'Djsnsn', 'user:tunganh', '2022-08-09 03:42:57'),
(76, 'tunganh', 'chat', 'Địt mẹ bíp', 'user:tunganh', '2022-08-27 14:08:06'),
(77, 'tunganh', 'chat', 'Hbbh', 'user:tunganh', '2022-09-02 05:03:30'),
(78, 'tunganh', 'chat', 'Too', 'user:tunganh', '2022-09-02 05:03:37'),
(79, 'danghai', 'chat', 'bruh', 'user:danghai', '2022-09-02 13:01:19'),
(80, 'danghai', 'chat', 'haha', 'user:danghai', '2022-09-02 13:01:25'),
(81, 'tunganh', 'chat', 'Ơ hi', 'user:tunganh', '2022-09-02 13:08:09'),
(82, 'quanghuy', 'chat', 'Nhug em', 'user:quanghuy', '2022-09-04 20:51:49'),
(83, 'quanghuy', 'chat', '????????', 'user:quanghuy', '2022-09-04 21:03:49'),
(84, 'quanghuy', 'chat', 'Địt mẹ thằng Quân￼￼', 'user:quanghuy', '2022-09-05 05:17:28'),
(85, 'quangthang', 'chat', 'Cđ', 'user:quangthang', '2022-09-06 10:01:53'),
(86, 'phuonganh', 'chat', 'a', 'user:phuonganh', '2022-09-07 09:51:53'),
(87, 'tunganh', 'chat', 'Gâhhaba', 'user:tunganh', '2022-09-09 10:14:27'),
(88, 'phuonganh', 'chat', 'jh', 'user:phuonganh', '2022-09-13 12:34:42'),
(89, 'tunganh', 'chat', 'Ggg', 'user:tunganh', '2022-09-30 03:21:10'),
(90, 'tunganh', 'chat', 'Haha', 'user:tunganh', '2022-10-07 03:21:35'),
(91, 'phuonganh', 'chat', 'sdfdsdf', 'user:phuonganh', '2022-10-11 15:51:37'),
(92, 'tunganh', 'chat', 'Hello', 'user:tunganh', '2022-10-21 21:05:02'),
(93, 'tunganh', 'chat', 'I’m back hehe', 'user:tunganh', '2022-10-21 21:05:07'),
(94, 'tunganh', 'chat', 'Haha', 'user:tunganh', '2022-10-28 23:17:02'),
(95, 'tunganh', 'chat', 'Xin day', 'user:tunganh', '2022-10-31 04:31:42'),
(96, 'tunganh', 'chat', 'Hdhdjjdn shjjdbd', 'user:tunganh', '2022-10-31 04:32:03'),
(97, 'tunganh', 'chat', 'Dmmmmm', 'user:tunganh', '2022-11-10 11:36:55'),
(98, 'tunganh', 'chat', 'Cccc', 'user:tunganh', '2022-11-16 12:22:47'),
(99, 'tunganh', 'chat', 'Cc', 'user:tunganh', '2022-12-01 15:01:24'),
(100, 'tunganh', 'chat', 'xjxjjxjx', 'user:tunganh', '2022-12-27 09:27:36'),
(101, 'tunganh', 'chat', 'chatttt', 'user:tunganh', '2022-12-27 09:27:41'),
(102, 'tunganh', 'chat', 'Kkk', 'user:tunganh', '2023-02-13 02:57:40'),
(103, 'phuonganh', 'chat', 'Hi dm con tó', 'user:phuonganh', '2023-03-21 16:05:10'),
(104, 'tunganh', 'chat', 'Ok so we are on our way to get our house and then I’ll head to your place and then come over to your place to get food for you guys to come in the house for me to go home with the baby shower then I can go home with my family for the weekend if I need anything I need a ride home with my family I need a few things for me and my dad to get a couple of them from my family so they will have a good time and I’ll see if they have a new car and then I’ll let you know when you can get it done I will be home by then I’ll let you know if you want me there or you could do that to you guys if I can make you a happy mother’s time bye and I’ll see what you want me and I’ll see if you want me too I love it ', 'user:tunganh', '2023-04-09 09:51:44'),
(105, 'hoangphat', 'chat', 'Dúm may', 'user:hoangphat', '2023-05-31 06:22:47'),
(106, 'hoangphat', 'chat', 'Dúm may\n', 'user:hoangphat', '2023-05-31 06:22:47'),
(107, 'hongquan', 'chat', 'Cc đị cụ mày connf chóosososi', 'user:hongquan', '2023-06-07 03:16:56'),
(108, 'hongquan', 'chat', 'Cc đị cụ mày connf chóosososi', 'user:hongquan', '2023-06-07 03:16:56'),
(109, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-07-07 09:38:28'),
(110, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-07-07 09:43:11'),
(111, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 03:45:06'),
(112, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 03:48:57'),
(113, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:02:57'),
(114, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:06:25'),
(115, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:07:02'),
(116, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:11:13'),
(117, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:12:34'),
(118, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:12:39'),
(119, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:13:24'),
(120, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:14:53'),
(121, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:30:05'),
(122, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 04:32:21'),
(123, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-09 06:03:32'),
(124, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-09 06:04:22'),
(125, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-09 06:18:21'),
(126, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-09 07:10:47'),
(127, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-09 07:23:04'),
(128, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-09 07:23:53'),
(129, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2023-11-10 09:00:58'),
(130, 'hongquan', 'chat', 'Đcu', 'user:hongquan', '2023-11-10 09:03:54'),
(131, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-13 04:23:18'),
(132, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-13 04:57:10'),
(133, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-13 10:25:25'),
(134, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-13 15:29:22'),
(135, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2023-11-27 09:30:59'),
(136, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-01-13 05:10:47'),
(137, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-01-13 05:12:35'),
(138, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-01-25 02:09:11'),
(139, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-11 04:07:19'),
(140, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-11 04:07:42'),
(141, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-11 04:09:53'),
(142, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-11 05:45:08'),
(143, 'System', 'user_join', '', 'user:hongquan', '2024-03-11 21:32:27'),
(144, 'System', 'user_join', '', 'user:', '2024-03-11 21:32:27'),
(145, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2024-03-11 21:32:28'),
(146, 'System', 'user_join', '', 'user:', '2024-03-12 00:07:06'),
(147, 'System', 'user_join', '', 'user:hongquan', '2024-03-12 00:07:06'),
(148, 'System', 'user_join', 'Đỗ Hồng Quân', 'user:hongquan', '2024-03-12 00:07:07'),
(149, 'System', 'user_join', '', 'user:', '2024-03-12 04:00:55'),
(150, 'System', 'user_join', '', 'user:tunganh', '2024-03-12 04:00:55'),
(151, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-12 04:00:55'),
(152, 'System', 'user_join', '', 'user:', '2024-03-12 04:06:37'),
(153, 'System', 'user_join', '', 'user:tunganh', '2024-03-12 04:06:38'),
(154, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-12 04:06:38'),
(155, 'System', 'user_join', '', 'user:', '2024-03-12 09:00:43'),
(156, 'System', 'user_join', '', 'user:phuonganh', '2024-03-12 09:00:43'),
(157, 'System', 'user_join', 'Ngô Phương Anh', 'user:phuonganh', '2024-03-12 09:00:43'),
(158, 'System', 'user_join', '', 'user:', '2024-03-12 09:08:31'),
(159, 'System', 'user_join', '', 'user:tunganh', '2024-03-12 09:08:31'),
(160, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-12 09:08:31'),
(161, 'System', 'user_join', '', 'user:tunganh', '2024-03-12 11:19:32'),
(162, 'System', 'user_join', '', 'user:', '2024-03-12 11:19:32'),
(163, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-12 11:19:32'),
(164, 'System', 'user_join', '', 'user:', '2024-03-12 13:16:56'),
(165, 'System', 'user_join', '', 'user:tunganh', '2024-03-12 13:16:56'),
(166, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-12 13:16:57'),
(167, 'System', 'user_join', '', 'user:', '2024-03-13 05:43:59'),
(168, 'System', 'user_join', '', 'user:tunganh', '2024-03-13 05:43:59'),
(169, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-13 05:43:59'),
(170, 'System', 'user_join', '', 'user:', '2024-03-13 07:12:44'),
(171, 'System', 'user_join', '', 'user:tunganh', '2024-03-13 07:12:44'),
(172, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-13 07:12:45'),
(173, 'System', 'user_join', '', 'user:', '2024-03-13 12:03:19'),
(174, 'System', 'user_join', '', 'user:tunganh', '2024-03-13 12:03:19'),
(175, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-13 12:03:25'),
(176, 'System', 'user_join', '', 'user:', '2024-03-14 08:30:36'),
(177, 'System', 'user_join', '', 'user:tunganh', '2024-03-14 08:30:37'),
(178, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-14 08:30:38'),
(179, 'System', 'user_join', '', 'user:', '2024-03-14 08:54:46'),
(180, 'System', 'user_join', '', 'user:giavan', '2024-03-14 08:54:46'),
(181, 'System', 'user_join', 'Hà Gia Văn', 'user:giavan', '2024-03-14 08:54:47'),
(182, 'System', 'user_join', '', 'user:', '2024-03-14 08:58:23'),
(183, 'System', 'user_join', '', 'user:giavan', '2024-03-14 08:58:24'),
(184, 'System', 'user_join', 'Hà Gia Văn', 'user:giavan', '2024-03-14 08:58:24'),
(185, 'System', 'user_join', '', 'user:', '2024-03-14 08:59:03'),
(186, 'System', 'user_join', '', 'user:tunganh', '2024-03-14 08:59:03'),
(187, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-14 08:59:04'),
(188, 'System', 'user_join', '', 'user:', '2024-03-14 08:59:30'),
(189, 'System', 'user_join', '', 'user:giavan', '2024-03-14 08:59:30'),
(190, 'System', 'user_join', 'Hà Gia Văn', 'user:giavan', '2024-03-14 08:59:31'),
(191, 'System', 'user_join', '', 'user:tunganh', '2024-03-14 09:05:40'),
(192, 'System', 'user_join', '', 'user:', '2024-03-14 09:05:40'),
(193, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-14 09:05:40'),
(194, 'System', 'user_join', '', 'user:', '2024-03-14 09:06:23'),
(195, 'System', 'user_join', '', 'user:tunganh', '2024-03-14 09:06:23'),
(196, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-14 09:06:24'),
(197, 'System', 'user_join', '', 'user:', '2024-03-14 09:07:33'),
(198, 'System', 'user_join', '', 'user:giavan', '2024-03-14 09:07:33'),
(199, 'System', 'user_join', 'Hà Gia Văn', 'user:giavan', '2024-03-14 09:07:33'),
(200, 'System', 'user_join', '', 'user:tunganh', '2024-03-14 09:07:43'),
(201, 'System', 'user_join', '', 'user:', '2024-03-14 09:07:43'),
(202, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-14 09:07:44'),
(203, 'System', 'user_join', '', 'user:', '2024-03-14 09:08:23'),
(204, 'System', 'user_join', '', 'user:tunganh ', '2024-03-14 09:08:23'),
(205, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh ', '2024-03-14 09:08:25'),
(206, 'System', 'user_join', '', 'user:', '2024-03-14 09:26:45'),
(207, 'System', 'user_join', '', 'user:tunganh', '2024-03-14 09:26:45'),
(208, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-14 09:26:45'),
(209, 'System', 'user_join', '', 'user:', '2024-03-14 09:29:54'),
(210, 'System', 'user_join', '', 'user:tunganh', '2024-03-14 09:29:55'),
(211, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-14 09:29:55'),
(212, 'System', 'user_join', '', 'user:tunganh', '2024-03-14 20:49:27'),
(213, 'System', 'user_join', '', 'user:', '2024-03-14 20:49:27'),
(214, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-14 20:49:27'),
(215, 'System', 'user_join', '', 'user:tunganh', '2024-03-15 07:51:50'),
(216, 'System', 'user_join', '', 'user:', '2024-03-15 07:51:50'),
(217, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-15 07:51:50'),
(218, 'System', 'user_join', '', 'user:tunganh', '2024-03-15 07:55:56'),
(219, 'System', 'user_join', '', 'user:', '2024-03-15 07:55:56'),
(220, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-15 07:55:57'),
(221, 'System', 'user_join', '', 'user:phuonganh', '2024-03-15 11:36:13'),
(222, 'System', 'user_join', '', 'user:', '2024-03-15 11:36:13'),
(223, 'System', 'user_join', 'Ngô Phương Anh', 'user:phuonganh', '2024-03-15 11:36:14'),
(224, 'System', 'user_join', '', 'user:', '2024-03-16 01:03:30'),
(225, 'System', 'user_join', '', 'user:tunganh', '2024-03-16 01:03:31'),
(226, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-16 01:03:36'),
(227, 'System', 'user_join', '', 'user:', '2024-03-16 01:14:11'),
(228, 'System', 'user_join', '', 'user:tunganh', '2024-03-16 01:14:13'),
(229, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-16 01:14:18'),
(230, 'System', 'user_join', '', 'user:', '2024-03-16 02:29:11'),
(231, 'System', 'user_join', '', 'user:tunganh   ', '2024-03-16 02:29:11'),
(232, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh   ', '2024-03-16 02:29:13'),
(233, 'System', 'user_join', '', 'user:', '2024-03-16 05:56:22'),
(234, 'System', 'user_join', '', 'user:tunganh', '2024-03-16 05:56:22'),
(235, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-16 05:56:23'),
(236, 'System', 'user_join', '', 'user:', '2024-03-16 07:59:06'),
(237, 'System', 'user_join', '', 'user:tunganh', '2024-03-16 07:59:06'),
(238, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-16 07:59:06'),
(239, 'System', 'user_join', '', 'user:', '2024-03-18 05:16:14'),
(240, 'System', 'user_join', '', 'user:tunganh', '2024-03-18 05:16:14'),
(241, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-18 05:16:14'),
(242, 'System', 'user_join', '', 'user:giavan', '2024-03-18 05:42:49'),
(243, 'System', 'user_join', '', 'user:', '2024-03-18 05:42:49'),
(244, 'System', 'user_join', 'Hà Gia Văn', 'user:giavan', '2024-03-18 05:42:51'),
(245, 'System', 'user_join', '', 'user:', '2024-03-18 06:41:20'),
(246, 'System', 'user_join', '', 'user:tunganh', '2024-03-18 06:41:20'),
(247, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-18 06:41:20'),
(248, 'System', 'user_join', '', 'user:', '2024-03-18 08:40:35'),
(249, 'System', 'user_join', '', 'user:tunganh', '2024-03-18 08:40:35'),
(250, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-18 08:40:35'),
(251, 'System', 'user_join', '', 'user:tunganh', '2024-03-19 03:12:02'),
(252, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-19 03:12:02'),
(253, 'System', 'user_join', '', 'user:', '2024-03-26 03:31:50'),
(254, 'System', 'user_join', '', 'user:tunganh', '2024-03-26 03:31:50'),
(255, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-26 03:31:50'),
(256, 'System', 'user_join', '', 'user:', '2024-03-26 03:34:04'),
(257, 'System', 'user_join', '', 'user:tunganh', '2024-03-26 03:34:04'),
(258, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-26 03:34:04'),
(259, 'System', 'user_join', '', 'user:', '2024-03-26 08:33:47'),
(260, 'System', 'user_join', '', 'user:tunganh', '2024-03-26 08:33:47'),
(261, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-26 08:33:47'),
(262, 'tunganh', 'chat', 'Ho', 'user:tunganh', '2024-03-26 08:34:21'),
(263, 'tunganh', 'chat', 'Hihi', 'user:tunganh', '2024-03-26 08:34:29'),
(264, 'System', 'user_join', '', 'user:', '2024-03-26 08:35:55'),
(265, 'System', 'user_join', '', 'user:tunganh', '2024-03-26 08:35:55'),
(266, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-26 08:35:56'),
(267, 'System', 'user_join', '', 'user:tunganh', '2024-03-27 06:02:07'),
(268, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-03-27 06:02:07'),
(269, 'System', 'user_join', '', 'user:tunganh', '2024-04-02 03:45:25'),
(270, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-04-02 03:45:25'),
(271, 'System', 'user_join', '', 'user:minhquang', '2024-04-02 03:48:04'),
(272, 'System', 'user_join', 'Vũ Minh Quang', 'user:minhquang', '2024-04-02 03:48:04'),
(273, 'System', 'user_join', '', 'user:tunganh', '2024-04-02 04:14:00'),
(274, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-04-02 04:14:00'),
(275, 'System', 'user_join', '', 'user:tunganh', '2024-04-08 17:40:11'),
(276, 'System', 'user_join', '', 'user:', '2024-04-08 17:40:11'),
(277, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-04-08 17:40:12'),
(278, 'System', 'user_join', '', 'user:', '2024-04-10 05:23:35'),
(279, 'System', 'user_join', '', 'user:tunganh', '2024-04-10 05:23:35'),
(280, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-04-10 05:23:35'),
(281, 'System', 'user_join', '', 'user:minhquang', '2024-04-11 03:44:13'),
(282, 'System', 'user_join', 'Vũ Minh Quang', 'user:minhquang', '2024-04-11 03:44:13'),
(283, 'System', 'user_join', '', 'user:tunganh', '2024-05-14 12:55:32'),
(284, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-14 12:55:33'),
(285, 'System', 'user_join', '', 'user:tunganh', '2024-05-14 12:55:55'),
(286, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-14 12:55:56'),
(287, 'System', 'user_join', '', 'user:tunganh', '2024-05-14 13:02:57'),
(288, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-14 13:02:57'),
(289, 'System', 'user_join', '', 'user:tunganh', '2024-05-16 11:40:56'),
(290, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-16 11:40:56'),
(291, 'System', 'user_join', '', 'user:tunganh', '2024-05-17 02:19:47'),
(292, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-17 02:19:48'),
(293, 'System', 'user_join', '', 'user:', '2024-05-21 13:31:31'),
(294, 'System', 'user_join', '', 'user:tunganh', '2024-05-21 13:31:31'),
(295, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-21 13:31:31'),
(296, 'System', 'user_join', '', 'user:tunganh', '2024-05-25 09:24:53'),
(297, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-25 09:24:53'),
(298, 'System', 'user_join', '', 'user:tunganh', '2024-05-25 09:25:38'),
(299, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-25 09:25:42'),
(300, 'System', 'user_join', '', 'user:tunganh', '2024-05-25 10:30:29'),
(301, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-25 10:30:30'),
(302, 'System', 'user_join', '', 'user:tunganh', '2024-05-26 08:37:37'),
(303, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-26 08:37:37'),
(304, 'System', 'user_join', '', 'user:tunganh', '2024-05-26 08:40:46'),
(305, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-26 08:40:47'),
(306, 'System', 'user_join', '', 'user:tunganh', '2024-05-26 09:24:11'),
(307, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-26 09:24:11'),
(308, 'System', 'user_join', '', 'user:tunganh', '2024-05-26 09:24:29'),
(309, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-26 09:24:29'),
(310, 'System', 'user_join', '', 'user:tunganh', '2024-05-26 09:35:57'),
(311, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-26 09:35:57'),
(312, 'System', 'user_join', '', 'user:tunganh', '2024-05-27 00:39:43'),
(313, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-27 00:39:44'),
(314, 'System', 'user_join', '', 'user:ducmanh', '2024-05-27 01:53:41'),
(315, 'System', 'user_join', 'Nguyễn Đức Mạnh', 'user:ducmanh', '2024-05-27 01:53:42'),
(316, 'System', 'user_join', '', 'user:tunganh', '2024-05-27 02:30:54'),
(317, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-27 02:30:54'),
(318, 'System', 'user_join', '', 'user:tunganh', '2024-05-27 04:49:31'),
(319, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-27 04:49:31'),
(320, 'System', 'user_join', '', 'user:thienhuong', '2024-05-27 04:50:19'),
(321, 'System', 'user_join', 'Phạm Thị Thiên Hương', 'user:thienhuong', '2024-05-27 04:50:19'),
(322, 'System', 'user_join', '', 'user:kimhue', '2024-05-27 04:53:13'),
(323, 'System', 'user_join', 'Lã Kim Huệ', 'user:kimhue', '2024-05-27 04:53:13'),
(324, 'System', 'user_join', '', 'user:tunganh', '2024-05-27 05:52:04'),
(325, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-27 05:52:07'),
(326, 'System', 'user_join', '', 'user:tunganh', '2024-05-27 06:16:04'),
(327, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-27 06:16:05'),
(328, 'System', 'user_join', '', 'user:tunganh', '2024-05-27 06:32:39'),
(329, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-27 06:32:39'),
(330, 'System', 'user_join', '', 'user:tunganh', '2024-05-27 06:44:00'),
(331, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-27 06:44:01'),
(332, 'System', 'user_join', '', 'user:thienhuong', '2024-05-27 12:20:00'),
(333, 'System', 'user_join', 'Phạm Thị Thiên Hương', 'user:thienhuong', '2024-05-27 12:20:00'),
(334, 'System', 'user_join', '', 'user:tunganh', '2024-05-27 15:50:45'),
(335, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-27 15:50:46'),
(336, 'System', 'user_join', '', 'user:phuonganh', '2024-05-27 23:33:59'),
(337, 'System', 'user_join', 'Ngô Phương Anh', 'user:phuonganh', '2024-05-27 23:34:00'),
(338, 'System', 'user_join', '', 'user:phuonganh', '2024-05-28 03:15:42'),
(339, 'System', 'user_join', 'Ngô Phương Anh', 'user:phuonganh', '2024-05-28 03:15:42'),
(340, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 03:45:34'),
(341, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 03:45:35'),
(342, 'tunganh', 'chat', 'Hú', 'user:tunganh', '2024-05-28 03:45:44'),
(343, 'tunganh', 'chat', 'Ai đang xem đếi ????', 'user:tunganh', '2024-05-28 03:45:58'),
(344, 'System', 'user_join', '', 'user:phuonganh', '2024-05-28 03:46:50'),
(345, 'System', 'user_join', 'Ngô Phương Anh', 'user:phuonganh', '2024-05-28 03:46:50'),
(346, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 03:47:09'),
(347, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 03:47:10'),
(348, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 04:00:33'),
(349, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 04:00:33'),
(350, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 04:03:09'),
(351, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 04:03:09'),
(352, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 04:05:28'),
(353, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 04:05:28'),
(354, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 04:54:34'),
(355, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 04:54:34'),
(356, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 04:56:32'),
(357, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 04:56:32'),
(358, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 05:15:48'),
(359, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 05:15:48'),
(360, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 05:44:43'),
(361, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 05:44:43'),
(362, 'System', 'user_join', '', 'user:danghai', '2024-05-28 06:15:02'),
(363, 'System', 'user_join', 'Nguyễn Đặng Hải', 'user:danghai', '2024-05-28 06:15:03'),
(364, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 06:17:09'),
(365, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 06:17:10'),
(366, 'tunganh', 'chat', 'Hehee', 'user:tunganh', '2024-05-28 06:18:47'),
(367, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 06:25:00'),
(368, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 06:25:01'),
(369, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 08:28:21'),
(370, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 08:28:21'),
(371, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 08:28:51'),
(372, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 08:28:52'),
(373, 'System', 'user_join', '', 'user:tunganh', '2024-05-28 10:05:10'),
(374, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-28 10:05:10'),
(375, 'System', 'user_join', '', 'user:sonhoa', '2024-05-29 03:20:14'),
(376, 'System', 'user_join', 'Phạm Bảo Sơn Hoa', 'user:sonhoa', '2024-05-29 03:20:14'),
(377, 'System', 'user_join', '', 'user:thienhuong', '2024-05-29 16:40:50'),
(378, 'System', 'user_join', 'Phạm Thị Thiên Hương', 'user:thienhuong', '2024-05-29 16:40:50'),
(379, 'System', 'user_join', '', 'user:tunganh', '2024-05-30 02:28:44'),
(380, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-30 02:28:44'),
(381, 'System', 'user_join', '', 'user:tunganh', '2024-05-30 02:59:40'),
(382, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-30 02:59:40'),
(383, 'System', 'user_join', '', 'user:buithuhien', '2024-05-30 11:23:27'),
(384, 'System', 'user_join', 'Bùi Thu Hiền', 'user:buithuhien', '2024-05-30 11:23:27'),
(385, 'System', 'user_join', '', 'user:tunganh', '2024-05-30 13:59:21'),
(386, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-30 13:59:22'),
(387, 'System', 'user_join', '', 'user:tunganh', '2024-05-31 03:12:59'),
(388, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-05-31 03:13:04'),
(389, 'System', 'user_join', '', 'user:thienhuong', '2024-05-31 04:56:49'),
(390, 'System', 'user_join', 'Phạm Thị Thiên Hương', 'user:thienhuong', '2024-05-31 04:56:49'),
(391, 'System', 'user_join', '', 'user:thienhuong', '2024-05-31 06:02:56'),
(392, 'System', 'user_join', 'Phạm Thị Thiên Hương', 'user:thienhuong', '2024-05-31 06:02:57'),
(393, 'System', 'user_join', '', 'user:buithuhien', '2024-06-01 08:16:16'),
(394, 'System', 'user_join', 'Bùi Thu Hiền', 'user:buithuhien', '2024-06-01 08:16:16'),
(395, 'System', 'user_join', '', 'user:tunganh', '2024-06-01 08:27:14'),
(396, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-01 08:27:16'),
(397, 'System', 'user_join', '', 'user:tunganh', '2024-06-01 09:00:55'),
(398, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-01 09:01:01'),
(399, 'System', 'user_join', '', 'user:tunganh', '2024-06-01 09:04:16'),
(400, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-01 09:04:37'),
(401, 'System', 'user_join', '', 'user:tunganh', '2024-06-01 11:32:20'),
(402, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-01 11:32:20'),
(403, 'System', 'user_join', '', 'user:phamthuhien', '2024-06-02 03:20:31'),
(404, 'System', 'user_join', 'Phạm Thu Hiền', 'user:phamthuhien', '2024-06-02 03:20:31'),
(405, 'System', 'user_join', '', 'user:tunganh', '2024-06-02 08:25:23'),
(406, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-02 08:25:23'),
(407, 'System', 'user_join', '', 'user:tunganh', '2024-06-03 00:32:31'),
(408, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-03 00:32:32'),
(409, 'System', 'user_join', '', 'user:tunganh', '2024-06-04 15:28:44'),
(410, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-04 15:28:45'),
(411, 'System', 'user_join', '', 'user:tunganh', '2024-06-05 08:30:33'),
(412, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-05 08:30:33'),
(413, 'System', 'user_join', '', 'user:tunganh', '2024-06-08 05:43:20'),
(414, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-08 05:43:20'),
(415, 'System', 'user_join', '', 'user:tunganh', '2024-06-17 03:05:42'),
(416, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-17 03:05:43'),
(417, 'System', 'user_join', '', 'user:tunganh', '2024-06-19 05:45:38'),
(418, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-19 05:45:38'),
(419, 'System', 'user_join', '', 'user:tunganh', '2024-06-20 08:43:57'),
(420, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-20 08:43:58'),
(421, 'System', 'user_join', '', 'user:tunganh', '2024-06-26 12:18:52'),
(422, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-26 12:18:52'),
(423, 'System', 'user_join', '', 'user:tunganh', '2024-06-28 05:18:14'),
(424, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-28 05:18:15'),
(425, 'System', 'user_join', '', 'user:tunganh', '2024-06-30 10:00:32'),
(426, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-30 10:00:32'),
(427, 'System', 'user_join', '', 'user:tunganh', '2024-06-30 10:44:22'),
(428, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-06-30 10:44:23'),
(429, 'System', 'user_join', '', 'user:tunganh', '2024-07-02 07:00:02'),
(430, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-07-02 07:00:03'),
(431, 'System', 'user_join', '', 'user:tunganh', '2024-07-03 00:19:08'),
(432, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-07-03 00:19:08'),
(433, 'System', 'user_join', '', 'user:ducmanh', '2024-07-05 18:44:48'),
(434, 'System', 'user_join', 'Nguyễn Đức Mạnh', 'user:ducmanh', '2024-07-05 18:44:49'),
(435, 'System', 'user_join', '', 'user:tunganh', '2024-07-21 03:34:51'),
(436, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-07-21 03:34:52'),
(437, 'System', 'user_join', '', 'user:tunganh', '2024-07-21 03:35:52'),
(438, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-07-21 03:35:52'),
(439, 'System', 'user_join', '', 'user:tunganh', '2024-07-30 06:01:25'),
(440, 'System', 'user_join', 'Dương Tùng Anh', 'user:tunganh', '2024-07-30 06:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `live_radio_users_requested_playlist`
--

CREATE TABLE `live_radio_users_requested_playlist` (
  `id` int(6) NOT NULL,
  `video_id` varchar(11) NOT NULL,
  `requested_by` varchar(20) NOT NULL,
  `request_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_radio_users_requested_playlist`
--

INSERT INTO `live_radio_users_requested_playlist` (`id`, `video_id`, `requested_by`, `request_time`) VALUES
(1, 'ezL4813EJEE', 'hoangphat', '2022-06-24 04:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  `user_from` varchar(99) NOT NULL,
  `user_to` varchar(99) NOT NULL,
  `date_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `body`, `user_from`, `user_to`, `date_sent`) VALUES
(1, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:10:22'),
(2, 'Hêlôooo!', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:11:37'),
(3, 'Xin chào các bạn đã đến với nhóm chat chính thức của C4K60 trên C4K60 Feed!', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:12:47'),
(4, 'Đây là một tin nhắn mẫu. Bạn có thể xoá bỏ nó trong phpMyAdmin hoặc phớt lờ sự tồn tại của nó.', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:13:36'),
(5, 'Nhìn kĩ lại đi bủh đây là giao diện của C4K60 not Facebook :v', 'hoangphat', 'Ngưng Bích Buildings', '2021-02-27 20:14:16'),
(6, 'lol', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:45:44'),
(7, 'dảk dảk bủh bủh lờ mao', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:46:35'),
(8, 'lmao', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:47:05'),
(9, 'lờ', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:48:09'),
(10, 'mao', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:48:13'),
(11, 'x', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:48:18'),
(12, 'd', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:48:20'),
(13, 'd', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-27 20:48:22'),
(14, 'cc đm m&agrave;y', 'tunganh03', 'Ngưng Bích Buildings', '2021-02-27 21:10:40'),
(15, 'abc', 'tunganh03', 'Ngưng Bích Buildings', '2021-02-27 21:22:11'),
(16, 'fuck you bitch', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 11:27:44'),
(17, 'd', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 11:36:41'),
(18, '.', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 17:08:35'),
(19, 'xyz', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 17:08:46'),
(20, 'h&iacute; anh em!', 'ta03', 'Ngưng Bích Buildings', '2021-02-28 17:11:04'),
(21, 'h&iacute; con mẹ m&agrave;y &agrave;', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 17:12:27'),
(22, 'đcm vcl', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 17:18:57'),
(23, 'fukk', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 17:19:07'),
(81, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 18:10:23'),
(82, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 18:11:45'),
(83, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 18:12:00'),
(84, '(y)', 'ta03', 'Ngưng Bích Buildings', '2021-02-28 18:20:20'),
(85, 'địt cả họ thằng n&agrave;o bấm like tin nhắn n&agrave;y lu&ocirc;n', 'ta03', 'Ngưng Bích Buildings', '2021-02-28 18:20:40'),
(86, '(y)', 'hoangphat', 'Ngưng Bích Buildings', '2021-02-28 18:43:07'),
(87, 'bố m&agrave;y cứ bấm like đấy th&igrave; l&agrave;m sao n&agrave;o', 'hoangphat', 'Ngưng Bích Buildings', '2021-02-28 18:43:17'),
(88, ':))))', 'hoangphat', 'Ngưng Bích Buildings', '2021-02-28 18:43:19'),
(89, 'cười v&atilde;i loz', 'hoangphat', 'Ngưng Bích Buildings', '2021-02-28 18:43:24'),
(90, 'haha same here', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 20:09:01'),
(91, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2021-02-28 20:09:23'),
(92, 'hi', 'tunnaduong', 'Ngưng Bích Buildings', '2021-03-03 18:59:01'),
(93, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2021-03-03 18:59:04'),
(94, 'dit cuj', 'tunnaduong', 'Ngưng Bích Buildings', '2022-11-09 19:08:17'),
(95, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2022-11-09 19:08:41'),
(96, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2022-11-09 19:08:43'),
(97, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2022-11-09 19:08:43'),
(98, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2022-11-09 19:08:43'),
(99, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2022-11-09 19:08:43'),
(100, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2022-11-09 19:08:47'),
(101, '(y)', 'tunnaduong', 'Ngưng Bích Buildings', '2024-03-13 12:58:26'),
(102, 'hhhh', 'tunnaduong', 'Ngưng Bích Buildings', '2024-03-13 12:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `thongbaolop`
--

CREATE TABLE `thongbaolop` (
  `id` int(11) NOT NULL,
  `title` varchar(99) COLLATE utf8mb4_bin DEFAULT NULL,
  `content` text COLLATE utf8mb4_bin DEFAULT NULL,
  `createdBy` varchar(99) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Admin C4K60',
  `image` varchar(999) COLLATE utf8mb4_bin NOT NULL DEFAULT 'no',
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `thongbaolop`
--

INSERT INTO `thongbaolop` (`id`, `title`, `content`, `createdBy`, `image`, `date`) VALUES
(2, 'Đòi tiền trà chanh 23k', 'mọi người ơii hôm đi chơi t có trích 1 số tiền trong lĩnh vực uống trà chanh và đi xe lúc mng đưa t tiền đông quá t ko kiểm soát hết hqua t kiểm lại tiền thì bị âm không biết ngoài TA thì còn ai quên chưa đưa t tiền ko thì bảo lại t nhé :((', 'Ngô Phương Anh', 'no', '2020-09-18 20:05:31'),
(9, 'Concept kỷ yếu', 'Lúc đầu định thuê bên Aloha, nhưng htrc t phân tích thì 480k/ người nhưng mất thêm chi phí phát sinh khá nhiều ( tiền xe, thuê trang phục ) và mng feedback k tốt về bên đó nên rcm mng sang Yolo hôm khai giảng đã về trường mình chụp ấy, 495k/ người đã bao gồm mọi phí, hình bên dưới cũng là bên Yolo luôn nhá', 'Ngô Phương Anh', 'https://c4k60.com/assets/images/1.jpeg,https://c4k60.com/assets/images/2.jpeg,https://c4k60.com/assets/images/3.jpeg,https://c4k60.com/assets/images/4.jpeg,https://c4k60.com/assets/images/5.jpeg,https://c4k60.com/assets/images/6.jpeg', '2021-01-23 13:54:30'),
(10, 'Nộp tiền chụp kỷ yếu', 'Tiền chụp kỉ yếu là 495k/ người lớp sẽ dc trừ 2tr tổng bill nhưng t nghĩ tiền đó cứ để hội phụ huynh cầm vì mình cũng phải bỏ tiền để thuê xe lên Hà Nội chụp và tiền đặt bánh ở Vincom nữa.\r\nMọi người xin phép phụ huynh chụp kỉ yếu và nộp tiền từ tuần sau nhé, có thể chuyển khoản luôn cho cô Thảo thủ quỹ nhá ( bạn nữ nào ko mặc áo dài của bên chụp thì trừ đi 30k )', 'Ngô Phương Anh', 'no', '2021-01-23 13:57:39'),
(11, 'Lịch trình buổi chụp ', '7-10h chụp ở trường\r\n10h-12h mng tự túc ăn trưa và nghỉ ngơi\r\n12h15 lên xe di chuyển đến vườn nhãn Long Biên\r\n14h-16h15 chụp tại vườn nhãn\r\n16h30 lên xe về Phủ Lý\r\n19h chụp party night tại Vinpearl\r\nMng đọc để nắm lịch và xin phép bố mẹ nhé', 'Ngô Phương Anh', 'no', '2021-01-23 13:58:59'),
(12, 'Thu quần áo thuê chụp', 'Ra chơi tiết 1 ngày mai t sẽ thu từng người từng bộ qao cmay thuê để chiều mai ship trả cho studio, ai thiếu đồ gì sẽ phải đền bù cho bên đó nhé', 'Ngô Phương Anh', 'no', '2021-01-23 14:02:51'),
(14, 'Tùng Anh đẹp trai vcl', 'Nhỉ?? :)))) ai cũng phải công nhận', 'Admin C4K60', 'https://c4k60.com/anhvavideo/media/original/%E1%BA%A2nh%20k%E1%BB%B7%20y%E1%BA%BFu/217707980348167410533151108516773PHQ_2379-min.jpg', '2021-12-11 14:24:23'),
(18, 'Nhắc đi họp lớp chiều mùng 3/9', 'Hmm hello anh em :))) để thử nghiệm thử khả năng truyền tải thông báo lớp qua app của tui thì nay tui nhắc luôn mn chiều hôm nay (03/09/2022) lúc 3h anh em tập trung tại cổng trường để đi cafe tại Monolic nkaaaa 😘', 'Dương Tùng Anh', 'https://c4k60.com/assets/images/cafe_hong.jpeg', '2022-09-03 03:46:19'),
(19, 'Thằng Quân bị ngu', 'ạoidháohjđạoạláljáđậo', 'TANH đzzai hihi^^', 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Yen_Bai_-_dogs_-_P1390010.JPG,https://petizen.vn/wp-content/uploads/2019/03/9-giong-cho-canh-duoc-yeu-thich-nhat.jpg', '2022-09-09 10:31:01'),
(20, 'Hội con gái lớp mình giờ bất ổn quá...', 'Đấy là mình đặt tiêu đề câu view vậy thôi chứ mọi người cũng biết mình đang nhắc đến ai rồi nhỉ?\nGì chứ các bạn nữ lớp mình cute xinh xắn học giỏi đa tài nhiều sắc vl\nChỉ mong các bạn học cũ lớp sê bốn, có đọc được dòng này từ chủ server mảng truyền thông của lớp thì hãy cố gắng đi họp lớp vào tết năm sau sau khi thi cử xong hết nha :v\nVà cuối cùng, ai đi được sinh nhật mình năm nay 21/11 thì đi, mình cũng k ép đâu :)))\nTrân trọng,\nDương Tùng AdiuhASdiuqhuq3hr9hasoidhf9uhasl;knv98', 'Admin C4K60', 'no', '2022-11-17 21:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `thuvienanh`
--

CREATE TABLE `thuvienanh` (
  `id` int(11) NOT NULL,
  `image_name` varchar(999) NOT NULL,
  `path` varchar(999) NOT NULL,
  `thumb_path` varchar(999) NOT NULL,
  `album` varchar(99) NOT NULL,
  `imgtype` varchar(11) NOT NULL,
  `imgsize` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thuvienanh`
--

INSERT INTO `thuvienanh` (`id`, `image_name`, `path`, `thumb_path`, `album`, `imgtype`, `imgsize`) VALUES
(406, '08045274850165212882c4k60_cbh_1878831282831955294.jpg', 'media/original/Ảnh tập thể lớp/08045274850165212882c4k60_cbh_1878831282831955294.jpg', 'media/thumbnail/Ảnh tập thể lớp/08045274850165212882c4k60_cbh_1878831282831955294.jpg', '72', 'image/jpeg', 100730),
(407, '17466677181028217652c4k60_cbh_2181381466611841130.jpg', 'media/original/Ảnh tập thể lớp/17466677181028217652c4k60_cbh_2181381466611841130.jpg', 'media/thumbnail/Ảnh tập thể lớp/17466677181028217652c4k60_cbh_2181381466611841130.jpg', '72', 'image/jpeg', 111828),
(408, '214779885381752182549c4k60_cbh_2148603221588217418.jpg', 'media/original/Ảnh tập thể lớp/214779885381752182549c4k60_cbh_2148603221588217418.jpg', 'media/thumbnail/Ảnh tập thể lớp/214779885381752182549c4k60_cbh_2148603221588217418.jpg', '72', 'image/jpeg', 46864),
(409, '39522715172623365538c4k60_cbh_2326226019633377748.jpg', 'media/original/Ảnh tập thể lớp/39522715172623365538c4k60_cbh_2326226019633377748.jpg', 'media/thumbnail/Ảnh tập thể lớp/39522715172623365538c4k60_cbh_2326226019633377748.jpg', '72', 'image/jpeg', 47720),
(410, '41548401783966826123c4k60_cbh_2145074973096960579.jpg', 'media/original/Ảnh tập thể lớp/41548401783966826123c4k60_cbh_2145074973096960579.jpg', 'media/thumbnail/Ảnh tập thể lớp/41548401783966826123c4k60_cbh_2145074973096960579.jpg', '72', 'image/jpeg', 96782),
(411, '55346512895915172415c4k60_cbh_1880581914060286811.jpg', 'media/original/Ảnh tập thể lớp/55346512895915172415c4k60_cbh_1880581914060286811.jpg', 'media/thumbnail/Ảnh tập thể lớp/55346512895915172415c4k60_cbh_1880581914060286811.jpg', '72', 'image/jpeg', 97706),
(412, '67205590166150484768c4k60_cbh_1939255370316937315.jpg', 'media/original/Ảnh tập thể lớp/67205590166150484768c4k60_cbh_1939255370316937315.jpg', 'media/thumbnail/Ảnh tập thể lớp/67205590166150484768c4k60_cbh_1939255370316937315.jpg', '72', 'image/jpeg', 118657),
(413, '72467169147801601268c4k60_cbh_2181382401463443381.jpg', 'media/original/Ảnh tập thể lớp/72467169147801601268c4k60_cbh_2181382401463443381.jpg', 'media/thumbnail/Ảnh tập thể lớp/72467169147801601268c4k60_cbh_2181382401463443381.jpg', '72', 'image/jpeg', 74196),
(414, '87128051278959346834c4k60_cbh_1872636077250377366.jpg', 'media/original/Ảnh tập thể lớp/87128051278959346834c4k60_cbh_1872636077250377366.jpg', 'media/thumbnail/Ảnh tập thể lớp/87128051278959346834c4k60_cbh_1872636077250377366.jpg', '72', 'image/jpeg', 129826),
(415, '93597752249422941167c4k60_cbh_1894376636545485898.jpg', 'media/original/Ảnh tập thể lớp/93597752249422941167c4k60_cbh_1894376636545485898.jpg', 'media/thumbnail/Ảnh tập thể lớp/93597752249422941167c4k60_cbh_1894376636545485898.jpg', '72', 'image/jpeg', 79257),
(416, '10130802563912579386137c4k60_cbh_2181380258333716441.jpg', 'media/original/Ảnh tập thể lớp/10130802563912579386137c4k60_cbh_2181380258333716441.jpg', 'media/thumbnail/Ảnh tập thể lớp/10130802563912579386137c4k60_cbh_2181380258333716441.jpg', '72', 'image/jpeg', 57176),
(417, '1161503592514601143852c4k60_cbh_2181384274648017289.jpg', 'media/original/Ảnh tập thể lớp/1161503592514601143852c4k60_cbh_2181384274648017289.jpg', 'media/thumbnail/Ảnh tập thể lớp/1161503592514601143852c4k60_cbh_2181384274648017289.jpg', '72', 'image/jpeg', 84358),
(418, '1292373171816661007217c4k60_cbh_2442086618895822048.jpg', 'media/original/Ảnh tập thể lớp/1292373171816661007217c4k60_cbh_2442086618895822048.jpg', 'media/thumbnail/Ảnh tập thể lớp/1292373171816661007217c4k60_cbh_2442086618895822048.jpg', '72', 'image/jpeg', 66809),
(419, '1318319361621991319407c4k60_cbh_2442093423441066494.jpg', 'media/original/Ảnh tập thể lớp/1318319361621991319407c4k60_cbh_2442093423441066494.jpg', 'media/thumbnail/Ảnh tập thể lớp/1318319361621991319407c4k60_cbh_2442093423441066494.jpg', '72', 'image/jpeg', 107514),
(420, '1470110191623154052829c4k60_cbh_2497886474234986882.jpg', 'media/original/Ảnh tập thể lớp/1470110191623154052829c4k60_cbh_2497886474234986882.jpg', 'media/thumbnail/Ảnh tập thể lớp/1470110191623154052829c4k60_cbh_2497886474234986882.jpg', '72', 'image/jpeg', 88772),
(421, '15131443378741165392143c4k60_cbh_2181384239743091896.jpg', 'media/original/Ảnh tập thể lớp/15131443378741165392143c4k60_cbh_2181384239743091896.jpg', 'media/thumbnail/Ảnh tập thể lớp/15131443378741165392143c4k60_cbh_2181384239743091896.jpg', '72', 'image/jpeg', 57062),
(422, '161776983102111302159963c4k60_cbh_2181383037747859319.jpg', 'media/original/Ảnh tập thể lớp/161776983102111302159963c4k60_cbh_2181383037747859319.jpg', 'media/thumbnail/Ảnh tập thể lớp/161776983102111302159963c4k60_cbh_2181383037747859319.jpg', '72', 'image/jpeg', 92756),
(423, '172011551503132012070736c4k60_cbh_2181384272853054372.jpg', 'media/original/Ảnh tập thể lớp/172011551503132012070736c4k60_cbh_2181384272853054372.jpg', 'media/thumbnail/Ảnh tập thể lớp/172011551503132012070736c4k60_cbh_2181384272853054372.jpg', '72', 'image/jpeg', 74396),
(424, '181946965765151091447872c4k60_cbh_2363633292043215421.jpg', 'media/original/Ảnh tập thể lớp/181946965765151091447872c4k60_cbh_2363633292043215421.jpg', 'media/thumbnail/Ảnh tập thể lớp/181946965765151091447872c4k60_cbh_2363633292043215421.jpg', '72', 'image/jpeg', 47256),
(425, '191228409712171178545920c4k60_cbh_2442089212393305117.jpg', 'media/original/Ảnh tập thể lớp/191228409712171178545920c4k60_cbh_2442089212393305117.jpg', 'media/thumbnail/Ảnh tập thể lớp/191228409712171178545920c4k60_cbh_2442089212393305117.jpg', '72', 'image/jpeg', 116166),
(426, '20447192213181058050372c4k60_cbh_2442087378417169188.jpg', 'media/original/Ảnh tập thể lớp/20447192213181058050372c4k60_cbh_2442087378417169188.jpg', 'media/thumbnail/Ảnh tập thể lớp/20447192213181058050372c4k60_cbh_2442087378417169188.jpg', '72', 'image/jpeg', 83349),
(427, '21375547767191913422206c4k60_cbh_2476964181992409403.jpg', 'media/original/Ảnh tập thể lớp/21375547767191913422206c4k60_cbh_2476964181992409403.jpg', 'media/thumbnail/Ảnh tập thể lớp/21375547767191913422206c4k60_cbh_2476964181992409403.jpg', '72', 'image/jpeg', 94618),
(428, '22949413946201620257745c4k60_cbh_2442088625140400341.jpg', 'media/original/Ảnh tập thể lớp/22949413946201620257745c4k60_cbh_2442088625140400341.jpg', 'media/thumbnail/Ảnh tập thể lớp/22949413946201620257745c4k60_cbh_2442088625140400341.jpg', '72', 'image/jpeg', 78424),
(429, '23416650439221380860068c4k60_cbh_2348623292766060213.jpg', 'media/original/Ảnh tập thể lớp/23416650439221380860068c4k60_cbh_2348623292766060213.jpg', 'media/thumbnail/Ảnh tập thể lớp/23416650439221380860068c4k60_cbh_2348623292766060213.jpg', '72', 'image/jpeg', 78353),
(430, '241005296163241762730623c4k60_cbh_2348623060728630798.jpg', 'media/original/Ảnh tập thể lớp/241005296163241762730623c4k60_cbh_2348623060728630798.jpg', 'media/thumbnail/Ảnh tập thể lớp/241005296163241762730623c4k60_cbh_2348623060728630798.jpg', '72', 'image/jpeg', 75581),
(431, '2539104067251275931229c4k60_cbh_2363632110088344859.jpg', 'media/original/Ảnh tập thể lớp/2539104067251275931229c4k60_cbh_2363632110088344859.jpg', 'media/thumbnail/Ảnh tập thể lớp/2539104067251275931229c4k60_cbh_2363632110088344859.jpg', '72', 'image/jpeg', 35415),
(432, '261086558139262099548277c4k60_cbh_2497893935289426635.jpg', 'media/original/Ảnh tập thể lớp/261086558139262099548277c4k60_cbh_2497893935289426635.jpg', 'media/thumbnail/Ảnh tập thể lớp/261086558139262099548277c4k60_cbh_2497893935289426635.jpg', '72', 'image/jpeg', 66244),
(433, '2710072928800173762694317793932652anh2.jpg', 'media/original/Ảnh tập thể lớp/2710072928800173762694317793932652anh2.jpg', 'media/thumbnail/Ảnh tập thể lớp/2710072928800173762694317793932652anh2.jpg', '72', 'image/jpeg', 229505),
(434, '2816152619451062018372613519370551815604520119022163_957580378051329_8287703337346650348_o.jpg', 'media/original/Ảnh tập thể lớp/2816152619451062018372613519370551815604520119022163_957580378051329_8287703337346650348_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/2816152619451062018372613519370551815604520119022163_957580378051329_8287703337346650348_o.jpg', '72', 'image/jpeg', 513717),
(435, '291821491707111625946214147779176272807663544118798729_360987831955208_403668198527137403_o.jpg', 'media/original/Ảnh tập thể lớp/291821491707111625946214147779176272807663544118798729_360987831955208_403668198527137403_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/291821491707111625946214147779176272807663544118798729_360987831955208_403668198527137403_o.jpg', '72', 'image/jpeg', 229639),
(436, '3020808658051133418705618917432908IMG_5549.JPG', 'media/original/Ảnh tập thể lớp/3020808658051133418705618917432908IMG_5549.JPG', 'media/thumbnail/Ảnh tập thể lớp/3020808658051133418705618917432908IMG_5549.JPG', '72', 'image/jpeg', 152760),
(437, '3120279984821219846698531515923546493279330481107316869_319506822778195_2501697337343812667_n.jpg', 'media/original/Ảnh tập thể lớp/3120279984821219846698531515923546493279330481107316869_319506822778195_2501697337343812667_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/3120279984821219846698531515923546493279330481107316869_319506822778195_2501697337343812667_n.jpg', '72', 'image/jpeg', 72524),
(438, '32122500312413952757572168367892985135235576272531584_986740524991224_5450479039548489728_o.jpg', 'media/original/Ảnh tập thể lớp/32122500312413952757572168367892985135235576272531584_986740524991224_5450479039548489728_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/32122500312413952757572168367892985135235576272531584_986740524991224_5450479039548489728_o.jpg', '72', 'image/jpeg', 284493),
(439, '331399095299147912700582155750584569606539_1269791653195351_5930817560479006720_n.jpg', 'media/original/Ảnh tập thể lớp/331399095299147912700582155750584569606539_1269791653195351_5930817560479006720_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/331399095299147912700582155750584569606539_1269791653195351_5930817560479006720_n.jpg', '72', 'image/jpeg', 240682),
(440, '3419662374391512224537503180534997169626735_388742038508147_1995829843131891712_n.jpg', 'media/original/Ảnh tập thể lớp/3419662374391512224537503180534997169626735_388742038508147_1995829843131891712_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/3419662374391512224537503180534997169626735_388742038508147_1995829843131891712_n.jpg', '72', 'image/jpeg', 176773),
(441, '3520448139981618141176235158471978469771621_2373343092742987_7579703205320196096_n.jpg', 'media/original/Ảnh tập thể lớp/3520448139981618141176235158471978469771621_2373343092742987_7579703205320196096_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/3520448139981618141176235158471978469771621_2373343092742987_7579703205320196096_n.jpg', '72', 'image/jpeg', 108883),
(442, '36457755348179057835358163293085170372437_717240788737736_4411381207737040896_n.jpg', 'media/original/Ảnh tập thể lớp/36457755348179057835358163293085170372437_717240788737736_4411381207737040896_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/36457755348179057835358163293085170372437_717240788737736_4411381207737040896_n.jpg', '72', 'image/jpeg', 92795),
(443, '3718445545601810049793349811626653010529103202W6A1131.jpg', 'media/original/Ảnh tập thể lớp/3718445545601810049793349811626653010529103202W6A1131.jpg', 'media/thumbnail/Ảnh tập thể lớp/3718445545601810049793349811626653010529103202W6A1131.jpg', '72', 'image/jpeg', 1053737),
(444, '3836168460421353448937021328219670750C6D2-A325-4901-9F46-D035557A4256.jpeg', 'media/original/Ảnh tập thể lớp/3836168460421353448937021328219670750C6D2-A325-4901-9F46-D035557A4256.jpeg', 'media/thumbnail/Ảnh tập thể lớp/3836168460421353448937021328219670750C6D2-A325-4901-9F46-D035557A4256.jpeg', '72', 'image/jpeg', 142309),
(445, '3913979059763510285493149957259469454493_370987120488441_6976030150114672640_n (1).jpg', 'media/original/Ảnh tập thể lớp/3913979059763510285493149957259469454493_370987120488441_6976030150114672640_n (1).jpg', 'media/thumbnail/Ảnh tập thể lớp/3913979059763510285493149957259469454493_370987120488441_6976030150114672640_n (1).jpg', '72', 'image/jpeg', 79703),
(446, '4098803855241884030396419558446669631570_1725272090949918_4367971195887288320_n.jpg', 'media/original/Ảnh tập thể lớp/4098803855241884030396419558446669631570_1725272090949918_4367971195887288320_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/4098803855241884030396419558446669631570_1725272090949918_4367971195887288320_n.jpg', '72', 'image/jpeg', 62916),
(447, '41110467254851894820709671089103969912138_2152269831541938_3934861595632467968_n.jpg', 'media/original/Ảnh tập thể lớp/41110467254851894820709671089103969912138_2152269831541938_3934861595632467968_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/41110467254851894820709671089103969912138_2152269831541938_3934861595632467968_n.jpg', '72', 'image/jpeg', 60168),
(448, '429909532461598763267770737352570153199_3480054395345479_635592792587894784_n.jpg', 'media/original/Ảnh tập thể lớp/429909532461598763267770737352570153199_3480054395345479_635592792587894784_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/429909532461598763267770737352570153199_3480054395345479_635592792587894784_n.jpg', '72', 'image/jpeg', 144662),
(449, '432085524849717018929141026307396901872666222122611087_991809334628433_6963852964256294189_o.jpg', 'media/original/Ảnh tập thể lớp/432085524849717018929141026307396901872666222122611087_991809334628433_6963852964256294189_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/432085524849717018929141026307396901872666222122611087_991809334628433_6963852964256294189_o.jpg', '72', 'image/jpeg', 193742),
(450, '44165797066482122996830111502878355495983818475398383_515895812592428_205755807088771072_n.jpg', 'media/original/Ảnh tập thể lớp/44165797066482122996830111502878355495983818475398383_515895812592428_205755807088771072_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/44165797066482122996830111502878355495983818475398383_515895812592428_205755807088771072_n.jpg', '72', 'image/jpeg', 121366),
(451, '45925292782972382473012522261791688464504772257952_733832943751823_5932493555502153728_o.jpg', 'media/original/Ảnh tập thể lớp/45925292782972382473012522261791688464504772257952_733832943751823_5932493555502153728_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/45925292782972382473012522261791688464504772257952_733832943751823_5932493555502153728_o.jpg', '72', 'image/jpeg', 154008),
(452, '05723760290201396446611161831642JUL_7874-min.jpg', 'media/original/Ảnh kỷ yếu/05723760290201396446611161831642JUL_7874-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/05723760290201396446611161831642JUL_7874-min.jpg', '73', 'image/jpeg', 699891),
(453, '11267413991057774756701018633092FFA74DB0-A279-4FB4-913A-0E5C4CAD4D7B.jpeg', 'media/original/Ảnh kỷ yếu/11267413991057774756701018633092FFA74DB0-A279-4FB4-913A-0E5C4CAD4D7B.jpeg', 'media/thumbnail/Ảnh kỷ yếu/11267413991057774756701018633092FFA74DB0-A279-4FB4-913A-0E5C4CAD4D7B.jpeg', '73', 'image/jpeg', 683626),
(454, '2967742661101950713703027742139111099F06-9B4E-4618-AF6F-F7A2E48E1349.jpeg', 'media/original/Ảnh kỷ yếu/2967742661101950713703027742139111099F06-9B4E-4618-AF6F-F7A2E48E1349.jpeg', 'media/thumbnail/Ảnh kỷ yếu/2967742661101950713703027742139111099F06-9B4E-4618-AF6F-F7A2E48E1349.jpeg', '73', 'image/jpeg', 56568),
(455, '3181784228111141595223701677346481683202994PHQ_2665.jpg', 'media/original/Ảnh kỷ yếu/3181784228111141595223701677346481683202994PHQ_2665.jpg', 'media/thumbnail/Ảnh kỷ yếu/3181784228111141595223701677346481683202994PHQ_2665.jpg', '73', 'image/jpeg', 585089),
(456, '47723917811114409512801317549876JUL_7857-min.jpg', 'media/original/Ảnh kỷ yếu/47723917811114409512801317549876JUL_7857-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/47723917811114409512801317549876JUL_7857-min.jpg', '73', 'image/jpeg', 1057366),
(457, '518550959091214574014151131681963001990863471PHQ_2956.jpg', 'media/original/Ảnh kỷ yếu/518550959091214574014151131681963001990863471PHQ_2956.jpg', 'media/thumbnail/Ảnh kỷ yếu/518550959091214574014151131681963001990863471PHQ_2956.jpg', '73', 'image/jpeg', 2615850),
(458, '6100000956213914102476216927440972730169426PHQ_2663.jpg', 'media/original/Ảnh kỷ yếu/6100000956213914102476216927440972730169426PHQ_2663.jpg', 'media/thumbnail/Ảnh kỷ yếu/6100000956213914102476216927440972730169426PHQ_2663.jpg', '73', 'image/jpeg', 720394),
(459, '71681860292145130862016504339248A4F096C-E143-4C9E-AB13-A7E66A0C4B54.jpeg', 'media/original/Ảnh kỷ yếu/71681860292145130862016504339248A4F096C-E143-4C9E-AB13-A7E66A0C4B54.jpeg', 'media/thumbnail/Ảnh kỷ yếu/71681860292145130862016504339248A4F096C-E143-4C9E-AB13-A7E66A0C4B54.jpeg', '73', 'image/jpeg', 52049),
(460, '8973670138149287239353289505053220728963PHQ_2664.jpg', 'media/original/Ảnh kỷ yếu/8973670138149287239353289505053220728963PHQ_2664.jpg', 'media/thumbnail/Ảnh kỷ yếu/8973670138149287239353289505053220728963PHQ_2664.jpg', '73', 'image/jpeg', 788184),
(461, '94954786952107706942621831366293PHQ_2300-min.jpg', 'media/original/Ảnh kỷ yếu/94954786952107706942621831366293PHQ_2300-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/94954786952107706942621831366293PHQ_2300-min.jpg', '73', 'image/jpeg', 1548319),
(462, '1014383396129803122241685143404PHQ_2371-min.jpg', 'media/original/Ảnh kỷ yếu/1014383396129803122241685143404PHQ_2371-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/1014383396129803122241685143404PHQ_2371-min.jpg', '73', 'image/jpeg', 803198),
(463, '1118360028833148588343622044509943PHQ_2374-min.jpg', 'media/original/Ảnh kỷ yếu/1118360028833148588343622044509943PHQ_2374-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/1118360028833148588343622044509943PHQ_2374-min.jpg', '73', 'image/jpeg', 837729),
(464, '122026922436363695321501965762260PHQ_2369-min.jpg', 'media/original/Ảnh kỷ yếu/122026922436363695321501965762260PHQ_2369-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/122026922436363695321501965762260PHQ_2369-min.jpg', '73', 'image/jpeg', 1162902),
(465, '131610174294124739851631103662894PHQ_2353-min.jpg', 'media/original/Ảnh kỷ yếu/131610174294124739851631103662894PHQ_2353-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/131610174294124739851631103662894PHQ_2353-min.jpg', '73', 'image/jpeg', 2263959),
(466, '1410161158674180409108702075960806IMG_0366.jpg', 'media/original/Ảnh kỷ yếu/1410161158674180409108702075960806IMG_0366.jpg', 'media/thumbnail/Ảnh kỷ yếu/1410161158674180409108702075960806IMG_0366.jpg', '73', 'image/jpeg', 1078081),
(467, '159487026565141060310532119638094PHQ_2375-min.jpg', 'media/original/Ảnh kỷ yếu/159487026565141060310532119638094PHQ_2375-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/159487026565141060310532119638094PHQ_2375-min.jpg', '73', 'image/jpeg', 795599),
(468, '1658916963654340199214572359156IMG_0542-min.jpg', 'media/original/Ảnh kỷ yếu/1658916963654340199214572359156IMG_0542-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/1658916963654340199214572359156IMG_0542-min.jpg', '73', 'image/jpeg', 1647536),
(469, '17697759057616870813055369159658IMG_0553-min.jpg', 'media/original/Ảnh kỷ yếu/17697759057616870813055369159658IMG_0553-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/17697759057616870813055369159658IMG_0553-min.jpg', '73', 'image/jpeg', 1408600),
(470, '18250062245697178465741086378584PHQ_2356-min.jpg', 'media/original/Ảnh kỷ yếu/18250062245697178465741086378584PHQ_2356-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/18250062245697178465741086378584PHQ_2356-min.jpg', '73', 'image/jpeg', 1968876),
(471, '19124570246772458162856856075890JUL_7841-min.jpg', 'media/original/Ảnh kỷ yếu/19124570246772458162856856075890JUL_7841-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/19124570246772458162856856075890JUL_7841-min.jpg', '73', 'image/jpeg', 1078196),
(472, '20753424878738527460141242660244PHQ_2378-min.jpg', 'media/original/Ảnh kỷ yếu/20753424878738527460141242660244PHQ_2378-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/20753424878738527460141242660244PHQ_2378-min.jpg', '73', 'image/jpeg', 768471),
(473, '217707980348167410533151108516773PHQ_2379-min.jpg', 'media/original/Ảnh kỷ yếu/217707980348167410533151108516773PHQ_2379-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/217707980348167410533151108516773PHQ_2379-min.jpg', '73', 'image/jpeg', 759537),
(474, '2229358371184018292587383224672PHQ_2432-min.jpg', 'media/original/Ảnh kỷ yếu/2229358371184018292587383224672PHQ_2432-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/2229358371184018292587383224672PHQ_2432-min.jpg', '73', 'image/jpeg', 1666420),
(475, '23153188861694156440948816276730PHQ_2442-min.jpg', 'media/original/Ảnh kỷ yếu/23153188861694156440948816276730PHQ_2442-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/23153188861694156440948816276730PHQ_2442-min.jpg', '73', 'image/jpeg', 1598633),
(476, '242131230789970151521662116373674PHQ_2410-min.jpg', 'media/original/Ảnh kỷ yếu/242131230789970151521662116373674PHQ_2410-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/242131230789970151521662116373674PHQ_2410-min.jpg', '73', 'image/jpeg', 1613860),
(477, '016020526210145257422305380147727B2A3F4-C194-4EB7-8095-384324C62B8F.jpeg', 'media/original/Ảnh dìm/016020526210145257422305380147727B2A3F4-C194-4EB7-8095-384324C62B8F.jpeg', 'media/thumbnail/Ảnh dìm/016020526210145257422305380147727B2A3F4-C194-4EB7-8095-384324C62B8F.jpeg', '74', 'image/jpeg', 28255),
(478, '1709752792103664173231189649780770163660_2515541238667724_4198841851991556096_n.jpg', 'media/original/Ảnh dìm/1709752792103664173231189649780770163660_2515541238667724_4198841851991556096_n.jpg', 'media/thumbnail/Ảnh dìm/1709752792103664173231189649780770163660_2515541238667724_4198841851991556096_n.jpg', '74', 'image/jpeg', 269816),
(479, '2136574042811103578702912196154397870267827_566212047518090_1053511780711530496_n.jpg', 'media/original/Ảnh dìm/2136574042811103578702912196154397870267827_566212047518090_1053511780711530496_n.jpg', 'media/thumbnail/Ảnh dìm/2136574042811103578702912196154397870267827_566212047518090_1053511780711530496_n.jpg', '74', 'image/jpeg', 40949),
(480, '330623364112043686241013409271881B5DE151-C4AC-47ED-BB9C-44745977F0C0.jpeg', 'media/original/Ảnh dìm/330623364112043686241013409271881B5DE151-C4AC-47ED-BB9C-44745977F0C0.jpeg', 'media/thumbnail/Ảnh dìm/330623364112043686241013409271881B5DE151-C4AC-47ED-BB9C-44745977F0C0.jpeg', '74', 'image/jpeg', 42482),
(481, '45873611891260251815613103782814770412830_514715166014394_4705585917757227008_n.jpg', 'media/original/Ảnh dìm/45873611891260251815613103782814770412830_514715166014394_4705585917757227008_n.jpg', 'media/thumbnail/Ảnh dìm/45873611891260251815613103782814770412830_514715166014394_4705585917757227008_n.jpg', '74', 'image/jpeg', 44700),
(482, '54803942411316516432984120119066269736145_518167775615935_6457183321775407104_n.jpg', 'media/original/Ảnh dìm/54803942411316516432984120119066269736145_518167775615935_6457183321775407104_n.jpg', 'media/thumbnail/Ảnh dìm/54803942411316516432984120119066269736145_518167775615935_6457183321775407104_n.jpg', '74', 'image/jpeg', 164585),
(483, '64436102591419413212106205819256269843028_2366646580268109_7995838725454036992_n.jpg', 'media/original/Ảnh dìm/64436102591419413212106205819256269843028_2366646580268109_7995838725454036992_n.jpg', 'media/thumbnail/Ảnh dìm/64436102591419413212106205819256269843028_2366646580268109_7995838725454036992_n.jpg', '74', 'image/jpeg', 47767),
(484, '712188477011517920807737194021678769905824_2016487671786025_350637522272911360_n.jpg', 'media/original/Ảnh dìm/712188477011517920807737194021678769905824_2016487671786025_350637522272911360_n.jpg', 'media/thumbnail/Ảnh dìm/712188477011517920807737194021678769905824_2016487671786025_350637522272911360_n.jpg', '74', 'image/jpeg', 24170),
(485, '81536221801610605113548193504427969933516_675235599619553_9221333679735832576_n.jpg', 'media/original/Ảnh dìm/81536221801610605113548193504427969933516_675235599619553_9221333679735832576_n.jpg', 'media/thumbnail/Ảnh dìm/81536221801610605113548193504427969933516_675235599619553_9221333679735832576_n.jpg', '74', 'image/jpeg', 68179),
(486, '921261609931713763839529151720499969980918_460922401424505_8568849807269953536_n.jpg', 'media/original/Ảnh dìm/921261609931713763839529151720499969980918_460922401424505_8568849807269953536_n.jpg', 'media/thumbnail/Ảnh dìm/921261609931713763839529151720499969980918_460922401424505_8568849807269953536_n.jpg', '74', 'image/jpeg', 93901),
(487, '10134015459621637071230057831357140AEDEFB-634B-4C1C-9DE4-D3EBB08D0C2A.jpeg', 'media/original/Ảnh dìm/10134015459621637071230057831357140AEDEFB-634B-4C1C-9DE4-D3EBB08D0C2A.jpeg', 'media/thumbnail/Ảnh dìm/10134015459621637071230057831357140AEDEFB-634B-4C1C-9DE4-D3EBB08D0C2A.jpeg', '74', 'image/jpeg', 13393),
(488, '111355751409317736201170209355222092C10942-DCA9-4AD5-9E34-3950DDEE0908.jpeg', 'media/original/Ảnh dìm/111355751409317736201170209355222092C10942-DCA9-4AD5-9E34-3950DDEE0908.jpeg', 'media/thumbnail/Ảnh dìm/111355751409317736201170209355222092C10942-DCA9-4AD5-9E34-3950DDEE0908.jpeg', '74', 'image/jpeg', 61825),
(489, '1215474799474198555255002055793513708DBEF9-7791-4614-B1D5-00B3242CBF4C.jpeg', 'media/original/Ảnh dìm/1215474799474198555255002055793513708DBEF9-7791-4614-B1D5-00B3242CBF4C.jpeg', 'media/thumbnail/Ảnh dìm/1215474799474198555255002055793513708DBEF9-7791-4614-B1D5-00B3242CBF4C.jpeg', '74', 'image/jpeg', 30267),
(490, '1396798538055092217951132490149629687A15-5E14-4545-90F3-5CA33194F0C1.jpeg', 'media/original/Ảnh dìm/1396798538055092217951132490149629687A15-5E14-4545-90F3-5CA33194F0C1.jpeg', 'media/thumbnail/Ảnh dìm/1396798538055092217951132490149629687A15-5E14-4545-90F3-5CA33194F0C1.jpeg', '74', 'image/jpeg', 6466),
(491, '141599615095635680629229428784369530343_356481631894280_6007327437875052544_n.jpg', 'media/original/Ảnh dìm/141599615095635680629229428784369530343_356481631894280_6007327437875052544_n.jpg', 'media/thumbnail/Ảnh dìm/141599615095635680629229428784369530343_356481631894280_6007327437875052544_n.jpg', '74', 'image/jpeg', 516110),
(492, '151016987062788925355336164312469668276_2596588223705383_5670527591560249344_n.jpg', 'media/original/Ảnh dìm/151016987062788925355336164312469668276_2596588223705383_5670527591560249344_n.jpg', 'media/thumbnail/Ảnh dìm/151016987062788925355336164312469668276_2596588223705383_5670527591560249344_n.jpg', '74', 'image/jpeg', 49508),
(493, '16138422288581066409496537132421769813713_554390955299043_5170506558362091520_n.jpg', 'media/original/Ảnh dìm/16138422288581066409496537132421769813713_554390955299043_5170506558362091520_n.jpg', 'media/thumbnail/Ảnh dìm/16138422288581066409496537132421769813713_554390955299043_5170506558362091520_n.jpg', '74', 'image/jpeg', 224129),
(494, '172256839829179675865810142028788270002509_2548600178496264_1028056677779243008_n.jpg', 'media/original/Ảnh dìm/172256839829179675865810142028788270002509_2548600178496264_1028056677779243008_n.jpg', 'media/thumbnail/Ảnh dìm/172256839829179675865810142028788270002509_2548600178496264_1028056677779243008_n.jpg', '74', 'image/jpeg', 93535),
(531, '020638343291.jpg', 'media/original/Ảnh thẻ/020638343291.jpg', 'media/thumbnail/Ảnh thẻ/020638343291.jpg', '77', 'image/jpeg', 209949),
(532, '119921813452.jpg', 'media/original/Ảnh thẻ/119921813452.jpg', 'media/thumbnail/Ảnh thẻ/119921813452.jpg', '77', 'image/jpeg', 226703),
(533, '211725412683.jpg', 'media/original/Ảnh thẻ/211725412683.jpg', 'media/thumbnail/Ảnh thẻ/211725412683.jpg', '77', 'image/jpeg', 211086),
(534, '31856410174.jpg', 'media/original/Ảnh thẻ/31856410174.jpg', 'media/thumbnail/Ảnh thẻ/31856410174.jpg', '77', 'image/jpeg', 171774),
(535, '418322126565.jpg', 'media/original/Ảnh thẻ/418322126565.jpg', 'media/thumbnail/Ảnh thẻ/418322126565.jpg', '77', 'image/jpeg', 180865),
(536, '516289958696.jpg', 'media/original/Ảnh thẻ/516289958696.jpg', 'media/thumbnail/Ảnh thẻ/516289958696.jpg', '77', 'image/jpeg', 268382),
(537, '612165333267..jpg', 'media/original/Ảnh thẻ/612165333267..jpg', 'media/thumbnail/Ảnh thẻ/612165333267..jpg', '77', 'image/jpeg', 233962),
(538, '71571360568..jpg', 'media/original/Ảnh thẻ/71571360568..jpg', 'media/thumbnail/Ảnh thẻ/71571360568..jpg', '77', 'image/jpeg', 258983),
(539, '88902627249..jpg', 'media/original/Ảnh thẻ/88902627249..jpg', 'media/thumbnail/Ảnh thẻ/88902627249..jpg', '77', 'image/jpeg', 204172),
(540, '9165958889110..jpg', 'media/original/Ảnh thẻ/9165958889110..jpg', 'media/thumbnail/Ảnh thẻ/9165958889110..jpg', '77', 'image/jpeg', 229083),
(541, '10136926791611..jpg', 'media/original/Ảnh thẻ/10136926791611..jpg', 'media/thumbnail/Ảnh thẻ/10136926791611..jpg', '77', 'image/jpeg', 258652),
(542, '1159860616112..jpg', 'media/original/Ảnh thẻ/1159860616112..jpg', 'media/thumbnail/Ảnh thẻ/1159860616112..jpg', '77', 'image/jpeg', 200219),
(543, '1256728697513.jpg', 'media/original/Ảnh thẻ/1256728697513.jpg', 'media/thumbnail/Ảnh thẻ/1256728697513.jpg', '77', 'image/jpeg', 236356),
(544, '1357216997914..jpg', 'media/original/Ảnh thẻ/1357216997914..jpg', 'media/thumbnail/Ảnh thẻ/1357216997914..jpg', '77', 'image/jpeg', 185793),
(545, '14135274181415..jpg', 'media/original/Ảnh thẻ/14135274181415..jpg', 'media/thumbnail/Ảnh thẻ/14135274181415..jpg', '77', 'image/jpeg', 193131),
(546, '1583285080516.jpg', 'media/original/Ảnh thẻ/1583285080516.jpg', 'media/thumbnail/Ảnh thẻ/1583285080516.jpg', '77', 'image/jpeg', 302859),
(547, '1675755611317..jpg', 'media/original/Ảnh thẻ/1675755611317..jpg', 'media/thumbnail/Ảnh thẻ/1675755611317..jpg', '77', 'image/jpeg', 184734),
(548, '17173488861518..jpg', 'media/original/Ảnh thẻ/17173488861518..jpg', 'media/thumbnail/Ảnh thẻ/17173488861518..jpg', '77', 'image/jpeg', 233563),
(549, '1895594235119..jpg', 'media/original/Ảnh thẻ/1895594235119..jpg', 'media/thumbnail/Ảnh thẻ/1895594235119..jpg', '77', 'image/jpeg', 252592),
(550, '1934336907120..jpg', 'media/original/Ảnh thẻ/1934336907120..jpg', 'media/thumbnail/Ảnh thẻ/1934336907120..jpg', '77', 'image/jpeg', 258037),
(551, '2043448672921.jpg', 'media/original/Ảnh thẻ/2043448672921.jpg', 'media/thumbnail/Ảnh thẻ/2043448672921.jpg', '77', 'image/jpeg', 239545),
(552, '21199260385022..jpg', 'media/original/Ảnh thẻ/21199260385022..jpg', 'media/thumbnail/Ảnh thẻ/21199260385022..jpg', '77', 'image/jpeg', 200955),
(553, '2287015670923..jpg', 'media/original/Ảnh thẻ/2287015670923..jpg', 'media/thumbnail/Ảnh thẻ/2287015670923..jpg', '77', 'image/jpeg', 223897),
(554, '2343831815224.jpg', 'media/original/Ảnh thẻ/2343831815224.jpg', 'media/thumbnail/Ảnh thẻ/2343831815224.jpg', '77', 'image/jpeg', 262391),
(555, '2453243861425.jpg', 'media/original/Ảnh thẻ/2453243861425.jpg', 'media/thumbnail/Ảnh thẻ/2453243861425.jpg', '77', 'image/jpeg', 188288),
(556, '2599053515426..jpg', 'media/original/Ảnh thẻ/2599053515426..jpg', 'media/thumbnail/Ảnh thẻ/2599053515426..jpg', '77', 'image/jpeg', 247576),
(557, '2648185600927..jpg', 'media/original/Ảnh thẻ/2648185600927..jpg', 'media/thumbnail/Ảnh thẻ/2648185600927..jpg', '77', 'image/jpeg', 212900),
(558, '27176483267928.jpg', 'media/original/Ảnh thẻ/27176483267928.jpg', 'media/thumbnail/Ảnh thẻ/27176483267928.jpg', '77', 'image/jpeg', 207877),
(559, '28144333966029.jpg', 'media/original/Ảnh thẻ/28144333966029.jpg', 'media/thumbnail/Ảnh thẻ/28144333966029.jpg', '77', 'image/jpeg', 252490),
(560, '29142193496130.jpg', 'media/original/Ảnh thẻ/29142193496130.jpg', 'media/thumbnail/Ảnh thẻ/29142193496130.jpg', '77', 'image/jpeg', 191337),
(561, '30156594139031.jpg', 'media/original/Ảnh thẻ/30156594139031.jpg', 'media/thumbnail/Ảnh thẻ/30156594139031.jpg', '77', 'image/jpeg', 266120),
(562, '31135969034132..jpg', 'media/original/Ảnh thẻ/31135969034132..jpg', 'media/thumbnail/Ảnh thẻ/31135969034132..jpg', '77', 'image/jpeg', 220391),
(563, '32126663265833..jpg', 'media/original/Ảnh thẻ/32126663265833..jpg', 'media/thumbnail/Ảnh thẻ/32126663265833..jpg', '77', 'image/jpeg', 190864),
(564, '3359099901034..jpg', 'media/original/Ảnh thẻ/3359099901034..jpg', 'media/thumbnail/Ảnh thẻ/3359099901034..jpg', '77', 'image/jpeg', 220799);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc_posts`
--

CREATE TABLE `tintuc_posts` (
  `id` int(11) NOT NULL,
  `author` varchar(99) NOT NULL,
  `content` text NOT NULL,
  `timeofpost` datetime NOT NULL,
  `style` varchar(20) NOT NULL,
  `has_comment` varchar(3) NOT NULL,
  `avatar` varchar(999) NOT NULL,
  `has_image` varchar(7) NOT NULL,
  `image` varchar(999) NOT NULL,
  `username` varchar(99) NOT NULL,
  `c4id` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tintuc_posts`
--

INSERT INTO `tintuc_posts` (`id`, `author`, `content`, `timeofpost`, `style`, `has_comment`, `avatar`, `has_image`, `image`, `username`, `c4id`) VALUES
(297, 'Dương Tùng Anh', 'okkk', '2024-03-13 13:00:05', '', 'no', '/images/tunna.jpg', 'none', ' /images/', 'tunganh', 0),
(298, 'Ngô Phương Anh', 'lol ưat', '2024-03-13 13:11:05', 'love', 'no', '/images/tunna.jpg', 'none', ' /images/', 'phuonganh', 0),
(299, 'Dương Tùng Anh', 'happy', '2024-03-13 13:12:09', 'blank', 'no', '/images/tunna.jpg', 'block', '/images/balloons.jpeg', 'tunganh', 93840),
(300, 'Dương Tùng Anh', 'haha', '2024-03-14 11:32:45', 'blank', 'no', '/images/tunna.jpg', 'block', '/images/adaptive-icon (1).png', 'tunganh', 88483),
(301, 'Duong Thao Kut3^^', 'LOLHAHAHHAHAA', '2024-03-14 13:33:14', '', '', '', '', '', 'duongphuongthao', 0),
(302, 'Duong Thao Kut3^^', 'LOLHHAHHAHAHA', '2024-03-14 13:34:05', '', '', '', '', '', 'duongphuongthao', 0),
(303, 'PinkyQuannn', 'tao bi dien chung may oi lmao huhuhuhuhuhuhuhhuhuhuhuhuhuhu', '2024-03-14 13:35:27', '', '', '', '', '', 'hongquan', 0),
(304, 'xXx_pussySlayer101_xXx', 'an ba to commm', '2024-03-14 14:19:08', '', '', '', '', '', 'minhquang', 0),
(311, '', '', '2024-05-30 12:14:53', '', 'no', '', 'none', ' /images/', '', 0),
(312, '', '', '2024-05-30 18:10:30', '', 'no', '', 'none', ' /images/', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc_post_likes`
--

CREATE TABLE `tintuc_post_likes` (
  `like_id` int(11) NOT NULL,
  `username_of_post` varchar(99) NOT NULL,
  `username_of_like` varchar(99) NOT NULL,
  `time_of_like` datetime NOT NULL,
  `liked_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tintuc_post_likes`
--

INSERT INTO `tintuc_post_likes` (`like_id`, `username_of_post`, `username_of_like`, `time_of_like`, `liked_post_id`) VALUES
(0, '', 'aloalo', '0000-00-00 00:00:00', 211),
(0, '', 'aloalo', '0000-00-00 00:00:00', 212),
(0, '', 'aloalo', '0000-00-00 00:00:00', 69),
(0, '', 'aloalo', '0000-00-00 00:00:00', 68),
(0, '', 'aloalo', '0000-00-00 00:00:00', 67),
(0, '', 'aloalo', '0000-00-00 00:00:00', 66),
(0, '', 'aloalo', '0000-00-00 00:00:00', 65),
(0, '', 'aloalo', '0000-00-00 00:00:00', 62),
(0, '', 'aloalo', '0000-00-00 00:00:00', 61),
(0, '', 'thonqu', '0000-00-00 00:00:00', 220),
(0, '', 'thonqu', '0000-00-00 00:00:00', 197),
(0, '', 'thonqu', '0000-00-00 00:00:00', 150),
(0, '', 'thonqu', '0000-00-00 00:00:00', 149),
(0, '', 'thonqu', '0000-00-00 00:00:00', 151),
(0, '', 'thonqu', '0000-00-00 00:00:00', 148),
(0, '', 'thonqu', '0000-00-00 00:00:00', 120),
(0, '', 'thonqu', '0000-00-00 00:00:00', 119),
(0, '', 'thonqu', '0000-00-00 00:00:00', 79),
(0, '', 'thonqu', '0000-00-00 00:00:00', 76),
(0, '', 'thonqu', '0000-00-00 00:00:00', 77),
(0, '', 'thonqu', '0000-00-00 00:00:00', 75),
(0, '', 'thonqu', '0000-00-00 00:00:00', 74),
(0, '', 'thonqu', '0000-00-00 00:00:00', 73),
(0, '', 'thonqu', '0000-00-00 00:00:00', 72),
(0, '', 'thonqu', '0000-00-00 00:00:00', 71),
(0, '', 'thonqu', '0000-00-00 00:00:00', 70),
(0, '', 'thonqu', '0000-00-00 00:00:00', 69),
(0, '', 'thonqu', '0000-00-00 00:00:00', 68),
(0, '', 'thonqu', '0000-00-00 00:00:00', 67),
(0, '', 'thonqu', '0000-00-00 00:00:00', 66),
(0, '', 'thonqu', '0000-00-00 00:00:00', 65),
(0, '', 'thonqu', '0000-00-00 00:00:00', 62),
(0, '', 'thonqu', '0000-00-00 00:00:00', 61),
(0, '', 'thonqu', '0000-00-00 00:00:00', 60),
(0, '', 'thonqu', '0000-00-00 00:00:00', 56),
(0, '', 'thonqu', '0000-00-00 00:00:00', 51),
(0, '', 'thonqu', '0000-00-00 00:00:00', 221),
(0, '', 'thonqu', '0000-00-00 00:00:00', 222),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 222),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 220),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 197),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 197),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 196),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 248),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 248),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 25),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 25),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 25),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 25),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 25),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 25),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 69),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 221),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 247),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 247),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 247),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 244),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 244),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 245),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 245),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 245),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 224),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 224),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 224),
(0, '', 'huongptt.21', '0000-00-00 00:00:00', 222),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 249),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 249),
(0, '', 'tunnaduong', '0000-00-00 00:00:00', 299);

-- --------------------------------------------------------

--
-- Table structure for table `tkb`
--

CREATE TABLE `tkb` (
  `id` int(11) NOT NULL,
  `t2t1` varchar(11) NOT NULL,
  `t2t2` varchar(255) DEFAULT NULL,
  `t2t3` varchar(255) DEFAULT NULL,
  `t2t4` varchar(255) DEFAULT NULL,
  `t2t5` varchar(255) DEFAULT NULL,
  `t3t1` varchar(255) DEFAULT NULL,
  `t3t2` varchar(255) DEFAULT NULL,
  `t3t3` varchar(255) DEFAULT NULL,
  `t3t4` varchar(255) DEFAULT NULL,
  `t3t5` varchar(255) DEFAULT NULL,
  `t4t1` varchar(255) DEFAULT NULL,
  `t4t2` varchar(255) DEFAULT NULL,
  `t4t3` varchar(255) DEFAULT NULL,
  `t4t4` varchar(255) DEFAULT NULL,
  `t4t5` varchar(255) DEFAULT NULL,
  `t5t1` varchar(255) DEFAULT NULL,
  `t5t2` varchar(255) DEFAULT NULL,
  `t5t3` varchar(255) DEFAULT NULL,
  `t5t4` varchar(255) DEFAULT NULL,
  `t5t5` varchar(255) DEFAULT NULL,
  `t6t1` varchar(255) DEFAULT NULL,
  `t6t2` varchar(255) DEFAULT NULL,
  `t6t3` varchar(255) DEFAULT NULL,
  `t6t4` varchar(255) DEFAULT NULL,
  `t6t5` varchar(255) DEFAULT NULL,
  `t7t1` varchar(255) DEFAULT NULL,
  `t7t2` varchar(255) DEFAULT NULL,
  `t7t3` varchar(255) DEFAULT NULL,
  `t7t4` varchar(255) DEFAULT NULL,
  `t7t5` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `t2c` varchar(255) DEFAULT NULL,
  `t3c` varchar(255) DEFAULT NULL,
  `t4c` varchar(255) DEFAULT NULL,
  `t5c` varchar(255) DEFAULT NULL,
  `t6c` varchar(255) DEFAULT NULL,
  `t7c` varchar(255) DEFAULT NULL,
  `tuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tkb`
--

INSERT INTO `tkb` (`id`, `t2t1`, `t2t2`, `t2t3`, `t2t4`, `t2t5`, `t3t1`, `t3t2`, `t3t3`, `t3t4`, `t3t5`, `t4t1`, `t4t2`, `t4t3`, `t4t4`, `t4t5`, `t5t1`, `t5t2`, `t5t3`, `t5t4`, `t5t5`, `t6t1`, `t6t2`, `t6t3`, `t6t4`, `t6t5`, `t7t1`, `t7t2`, `t7t3`, `t7t4`, `t7t5`, `date`, `t2c`, `t3c`, `t4c`, `t5c`, `t6c`, `t7c`, `tuan`) VALUES
(1, 'Sống', 'nhé', 'mãi', 'đẹp', 'mày', 'vui', 'tụi', 'về', 'bên', 'thi', 'vẻ', 'bây!', 'những', 'chúng', 'trung', 'và', 'Tao', 'ngày', 'mày.', 'học', 'hạnh', 'sẽ', 'tháng', 'Chúc', 'phổ', 'phúc', 'nhớ', 'tươi', 'tụi', 'thông', '2021-06-24', 'quốc', 'gia', 'đạt', 'kết', 'quả', 'cao!', 999);

-- --------------------------------------------------------

--
-- Table structure for table `tkb_color`
--

CREATE TABLE `tkb_color` (
  `id` int(11) NOT NULL,
  `t2t1` varchar(11) NOT NULL,
  `t2t2` varchar(255) DEFAULT NULL,
  `t2t3` varchar(255) DEFAULT NULL,
  `t2t4` varchar(255) DEFAULT NULL,
  `t2t5` varchar(255) DEFAULT NULL,
  `t3t1` varchar(255) DEFAULT NULL,
  `t3t2` varchar(255) DEFAULT NULL,
  `t3t3` varchar(255) DEFAULT NULL,
  `t3t4` varchar(255) DEFAULT NULL,
  `t3t5` varchar(255) DEFAULT NULL,
  `t4t1` varchar(255) DEFAULT NULL,
  `t4t2` varchar(255) DEFAULT NULL,
  `t4t3` varchar(255) DEFAULT NULL,
  `t4t4` varchar(255) DEFAULT NULL,
  `t4t5` varchar(255) DEFAULT NULL,
  `t5t1` varchar(255) DEFAULT NULL,
  `t5t2` varchar(255) DEFAULT NULL,
  `t5t3` varchar(255) DEFAULT NULL,
  `t5t4` varchar(255) DEFAULT NULL,
  `t5t5` varchar(255) DEFAULT NULL,
  `t6t1` varchar(255) DEFAULT NULL,
  `t6t2` varchar(255) DEFAULT NULL,
  `t6t3` varchar(255) DEFAULT NULL,
  `t6t4` varchar(255) DEFAULT NULL,
  `t6t5` varchar(255) DEFAULT NULL,
  `t7t1` varchar(255) DEFAULT NULL,
  `t7t2` varchar(255) DEFAULT NULL,
  `t7t3` varchar(255) DEFAULT NULL,
  `t7t4` varchar(255) DEFAULT NULL,
  `t7t5` varchar(255) DEFAULT NULL,
  `t2c` varchar(255) DEFAULT NULL,
  `t3c` varchar(255) DEFAULT NULL,
  `t4c` varchar(255) DEFAULT NULL,
  `t5c` varchar(255) DEFAULT NULL,
  `t6c` varchar(255) DEFAULT NULL,
  `t7c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tkb_color`
--

INSERT INTO `tkb_color` (`id`, `t2t1`, `t2t2`, `t2t3`, `t2t4`, `t2t5`, `t3t1`, `t3t2`, `t3t3`, `t3t4`, `t3t5`, `t4t1`, `t4t2`, `t4t3`, `t4t4`, `t4t5`, `t5t1`, `t5t2`, `t5t3`, `t5t4`, `t5t5`, `t6t1`, `t6t2`, `t6t3`, `t6t4`, `t6t5`, `t7t1`, `t7t2`, `t7t3`, `t7t4`, `t7t5`, `t2c`, `t3c`, `t4c`, `t5c`, `t6c`, `t7c`) VALUES
(1, 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(999) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `date`) VALUES
(2, 'tunganh03', '$2y$10$w/JptjMXc/YrpQ/p7oFtB.am2Mj9h9/b8AiuNIjoD3edL/cTxGZ1i', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(99) NOT NULL,
  `caption` varchar(999) NOT NULL,
  `path` varchar(999) NOT NULL,
  `link_youtube` varchar(999) NOT NULL,
  `thumb_path` varchar(999) NOT NULL,
  `type` varchar(11) NOT NULL,
  `album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `caption`, `path`, `link_youtube`, `thumb_path`, `type`, `album`) VALUES
(28, 'Vlog của Ngô Phương Anh và Nguyễn Đặng Hải', 'media/video/c4k60_cbh_2013847647332380402.mp4', '', 'media/thumbnail/Video/Untitled2.jpg', 'html5', 75),
(29, 'C4K60 cover Titanic The Movie', 'media/video/c4k60_cbh_2147153603159602277.mp4', '', 'media/thumbnail/Video/Untitled3.jpg', 'html5', 75),
(30, 'Phỏng vấn các CHNers về ngày 20/10/2018', '', 'https://www.youtube.com/watch?v=HtZXvEpszVE', 'media/thumbnail/Video/maxresdefault (1).jpg', 'youtube', 75),
(31, '20/10 C4K60 2020', '', 'https://www.youtube.com/watch?v=Gr-4VQfpV18', 'media/thumbnail/Video/maxresdefault (2).jpg', 'youtube', 75),
(32, 'Chụp ảnh gia đình tại FLC Thanh Hoá', '', 'https://www.youtube.com/watch?v=dUYjwGmLUqc', 'media/thumbnail/Video/hqdefault.jpg', 'youtube', 75),
(33, 'Boy\'s Day 6/4/2019', '', 'https://www.youtube.com/watch?v=VaNU691aJAM', 'media/thumbnail/Video/boyday.jpg', 'youtube', 75),
(34, 'Hương và Lâm đang nhảy-battle', '', 'https://www.youtube.com/watch?v=GXkSBSnf4hU', 'media/thumbnail/Video/hqdefault (1).jpg', 'youtube', 75),
(35, 'Quảng cáo xe điện PEGA Cap A9', '', 'https://www.youtube.com/watch?v=eGu405cksdQ', 'media/thumbnail/Video/hqdefault (2).jpg', 'youtube', 75),
(36, 'C4K60 Girls react to 20/10/2020', '', 'https://www.youtube.com/watch?v=cZ-R1VWBk4Y', 'media/thumbnail/Video/maxresdefault (3).jpg', 'youtube', 75),
(37, 'Hải dớ đang quẩy Vinahouse', 'media/video/c4k60_cbh_2158541249460657566.mp4', '', 'media/thumbnail/Video/Untitled4.jpg', 'html5', 75),
(38, 'Lâm bị lũ con gái bôi son', 'media/video/c4k60_cbh_2158478184751169888.mp4', '', 'media/thumbnail/Video/xcsdf.jpg', 'html5', 75),
(39, 'Mạnh và Lâm đang đạp xe', 'media/video/c4k60_cbh_2158610605464899988.mp4', '', 'media/thumbnail/Video/dasd.jpg', 'html5', 75),
(40, 'Cả lớp nói tiếng Nga', 'media/video/c4k60_cbh_2442093568413039209.mp4', '', 'media/thumbnail/Video/sdsd.jpg', 'html5', 75);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baitap_gv`
--
ALTER TABLE `baitap_gv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btvn`
--
ALTER TABLE `btvn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c4_user`
--
ALTER TABLE `c4_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changelogs`
--
ALTER TABLE `changelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`);

--
-- Indexes for table `donators`
--
ALTER TABLE `donators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images_upload`
--
ALTER TABLE `images_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_radio_idle_playlist`
--
ALTER TABLE `live_radio_idle_playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_radio_logs`
--
ALTER TABLE `live_radio_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_radio_users_requested_playlist`
--
ALTER TABLE `live_radio_users_requested_playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongbaolop`
--
ALTER TABLE `thongbaolop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuvienanh`
--
ALTER TABLE `thuvienanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc_posts`
--
ALTER TABLE `tintuc_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkb`
--
ALTER TABLE `tkb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkb_color`
--
ALTER TABLE `tkb_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `baitap_gv`
--
ALTER TABLE `baitap_gv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `c4_user`
--
ALTER TABLE `c4_user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `changelogs`
--
ALTER TABLE `changelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `donators`
--
ALTER TABLE `donators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images_upload`
--
ALTER TABLE `images_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `live_radio_idle_playlist`
--
ALTER TABLE `live_radio_idle_playlist`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `live_radio_logs`
--
ALTER TABLE `live_radio_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `live_radio_users_requested_playlist`
--
ALTER TABLE `live_radio_users_requested_playlist`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `thongbaolop`
--
ALTER TABLE `thongbaolop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `thuvienanh`
--
ALTER TABLE `thuvienanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `tintuc_posts`
--
ALTER TABLE `tintuc_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
