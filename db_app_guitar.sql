-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2019 lúc 03:41 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `date_order` datetime NOT NULL DEFAULT current_timestamp(),
  `total` float NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `id_customer`, `date_order`, `total`, `note`, `status`) VALUES
(34, 7, '2017-04-15 07:14:16', 292, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` float DEFAULT 0,
  `price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`) VALUES
(13, 34, 33, 3, 157),
(14, 34, 34, 3, 135);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `link`, `id_product`) VALUES
(1, 'sp1.jpg', 29),
(2, 'sp2.jpg', 30),
(3, 'sp3.jpg', 31),
(4, 'sp4.jpg', 32),
(5, 'sp5.jpg', 33),
(6, 'sp6.jpg', 34),
(7, 'sp7.jpg', 35),
(8, 'sp8.jpg', 37),
(9, 'sp9.jpg', 38),
(10, 'sp10.jpg', 39),
(11, 'sp11.jpg', 41),
(12, 'sp12.jpg', 42),
(13, 'sp13.jpg', 43),
(14, 'sp14.jpg', 44),
(15, 'sp15.jpg', 45),
(16, 'sp16.jpg', 46),
(17, 'sp17.jpg', 47),
(18, 'sp18.jpg', 48),
(19, 'sp19.jpg', 49),
(20, 'sp20.jpg', 50),
(21, '39.jpg', 51),
(22, '40.jpg', 52),
(23, '41.jpg', 53),
(24, '42.jpg', 54),
(25, '43.jpg', 55),
(26, '44.jpg', 56),
(27, '45.jpg', 57),
(28, '46.jpg', 58),
(29, '47.jpg', 59),
(30, '42.jpg', 60),
(31, '43.jpg', 61),
(32, 'sp1.jpg', 62),
(33, 'sp1.jpg', 63),
(34, 'sp1.jpg', 64),
(35, 'sp1.jpg', 65),
(36, 'sp1.jpg', 66),
(37, 'sp1.jpg', 67),
(38, 'sp1.jpg', 69),
(39, '51.jpg', 70),
(40, '52.jpg', 71),
(41, '53.jpg', 72),
(42, '54.jpg', 73);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `price` float DEFAULT 0,
  `brand` varchar(255) DEFAULT NULL,
  `bodyshape` varchar(255) DEFAULT NULL COMMENT 'kiểu dáng',
  `description` text NOT NULL,
  `new` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `id_type`, `price`, `brand`, `bodyshape`, `description`, `new`) VALUES
(29, 'Guitar Ayers ACSRL-N', 4, 13340000, 'Kapok', 'D Đầy', 'Kapok LD-14 nằm trong phân khúc guitar phổ thông có âm cộng hưởng tốt thiết kế chắc chắn với giá bán khá thấp. Sản phẩm nổi bật về thiết kế so với các guitar cùng phân khúc nhờ lớp sơn bóng đẹp, cần đàn làm bằng gỗ mahogany (gỗ gụ) cao cấp, đem đến âm sắc ấn tượng, lưng và hông đàn làm từ gỗ laminated (gỗ ép) chất lượng cao.', 1),
(30, 'Guitar Ayers ASRL', 4, 12650000, 'Kapok', 'D Đầy', 'Kapok LD-14C nằm trong phân khúc guitar phổ thông có âm cộng hưởng tốt thiết kế chắc chắn với giá bán khá thấp. Sản phẩm nổi bật về thiết kế so với các guitar cùng phân khúc nhờ lớp sơn bóng đẹp, cần đàn làm bằng gỗ mahogany (gỗ gụ) cao cấp, đem đến âm sắc ấn tượng, lưng và hông đàn làm từ gỗ laminated (gỗ ép) chất lượng cao.', 0),
(31, 'Guitar Ayers OSOL', 4, 10860000, 'Fender', 'Dreadnought', 'CD-140SCE được cải tiến so với thế hệ trước với  sự nâng cấp hệ thống điện tử  Fishman® Presys,  mặt sau và bên hông bằng gỗ rosewood  và thêm một vỏ hộp. Kiểu single-cutaway dreadnought kết hợp với mặt trước bằng gỗ solid spruce mang đến âm thanh ấm áp. Cổ đàn dễ chơi và cảm giác thoải mái cho tất cả các phong cách chơi. CD-140SCE đã sẵn sàng cho bất cứ bản nhạc nào, cho dù bạn ở nhà hay trên sân khấu.', 0),
(32, 'Guitar Ayers ST-01', 4, 9200000, 'Fender', 'Mid-Sized', 'Đàn guitar CC-60SCE có dáng Concert Cutaway (hay còn gọi là dáng C khuyết) nhỏ gọn, rất dễ chơi, phù hợp với những người mới chơi hoặc có dáng vóc không cao lớn.', 0),
(33, 'Guitar Ayers ST-01CE', 4, 11570000, 'Fender', 'concert', 'Đàn guitar CC-60S có dáng Concert nhỏ gọn, rất dễ chơi, phù hợp với những người mới chơi hoặc có dáng vóc không cao lớn.', 0),
(34, 'Guitar Ba Đờn J-260', 4, 2650000, 'Fender', 'Dreadnought ', 'Đàn guitar CD-60SCE có dáng Cutaway dreadnought (hay còn gọi là dáng D khuyết). Thùng đàn lớn cho tiếng đàn to, ấm và đầy hơn, phù hợp cho các bạn chơi đệm và dùng pick.', 0),
(35, 'Guitar Ba Đờn T-350', 4, 3500000, 'Taylor', 'Grand Auditorium', 'Viền mép màu trắng tạo nên điểm tương phản với phần trên bóng loáng và các vằn màu nâu của gỗ ovangol, trong khi hệ thống Expression cho âm thanh acoustic to rõ, trung thực và cao.', 1),
(37, 'Guitar Custom Ngọc Thức', 4, 29000000, 'Taylor', 'Grand Auditorium', 'Guitar Acoustic Taylor 416ce thùng đàn được làm từ gỗ ovangkol tạo ra các nốt trung và bổng mạnh mẽ cũng như là sự lựa chọn tuyệt vời kiểu chơi flat picking với âm thanh phát ra rõ ràng.', 1),
(38, 'Guitar Custom Silent-T01', 4, 9700000, 'Taylor', 'Grand Auditorium', 'Đàn guitar Taylor 214CE DLX có dáng Grand Auditorium, là dáng đàn phổ biến và linh hoạt nhất của Taylor. Grand Auditorium có kích thước cỡ trung với tỷ lệ tinh tế, nhỏ hơn Dreadnought và lớn hơn Grand Concert, thích hợp với mọi mục đích chơi đàn từ mới tập đến biểu diễn sân khấu. Đàn có tone cân bằng, âm lượng và tiếng pass lớn, đặc biệt thích hợp để chơi thể loại fingerstyle.', 1),
(39, 'Guitar Custom Thuận AT-02C', 4, 4900000, 'Fender', 'Dreadnought', 'Fender dreadnought CD-60S là một trong những mẫu guitar phổ biến nhất của Fender và lý tưởng cho những người chơi đang tìm kiếm một chiếc dreadnought giá cả phải chăng chất lượng cao với giai điệu và khả năng chơi tuyệt vời. Với thân hình đơn giản để dễ dàng chơi, CD-60S hoàn hảo cho những buổi dã ngoại, lửa trại hoặc quán cà phê — bất cứ nơi nào bạn chơi theo phong cách Fender cổ điển.', 0),
(41, 'Guitar Custom Thuận AT-04C', 4, 6500000, 'T-bucket', 'Dreadought Cutaway', 'Đàn guitar T-Bucket 300CE có dáng Dreadought Cutaway với scale 25.3” (hay còn gọi là dáng D khuyết). Thùng đàn lớn cho tiếng đàn to, ấm và đầy hơn, phù hợp cho các bạn chơi đệm và dùng pick. Mặt trước của cây đàn được làm từ gỗ maple, mặt sau và bên hông được làm từ gỗ mahogany.', 0),
(42, 'Guitar Custom Thuận AT-08C', 4, 16000000, 'Takamine', 'Classic', 'Đàn guitar Takamine TC135SC với kiểu dáng Classic: là kiểu dáng đàn đầu tiên của cây đàn guitar trải qua hàng trăm năm không có gì thay đổi và vẫn được ưa chuộng. Dài 49cm, thân trên 29cm, thân dưới 37cm, dày 10cm.', 0),
(43, 'Fender CN-60S ', 5, 5360000, 'Fender', 'Classic', 'Fender CN-60S Classical Natural giúp người trải nghiệm sự thuận tiện của dây Nylon và âm thanh của dây thép', 1),
(44, 'Fender CN-140SCE', 5, 10710000, 'Fender', 'Concert', 'Các mô hình Classic Design CN kết hợp khả năng chơi dễ dàng và tông màu riêng biệt của dây nylon với sự thoải mái của khoảng cách dây thép. Fender đã thay thế cổ rộng thường thấy trên đàn guitar cổ điển bằng cấu hình cổ mỏng dễ chơi mang lại cảm giác thoải mái hơn. CN-140SCE sử dụng gỗ tuyết tùng chắc chắn để chế tạo mặt top, cùng với mặt sau và 2 bên hông bằng gỗ hồng sắc cho tông màu ấm áp và êm dịu.', 1),
(45, 'Cordoba GK Studio', 5, 15650000, 'Cordoba', 'Classic', 'Cordoba GK Studio được tích hợp hệ thống Fishman Presys Blend kết hợp với Cutaway-Electric Style Neck giúp canh chỉnh âm thanh chính xác và nhanh chóng . Đồng thời, cũng giúp âm thanh vang, sáng, giai điệu đa dạng hơn nhờ vào thiết kế mới của sound-board.', 0),
(46, 'Suzuki SCG-6CE', 5, 2390000, 'Suzuki', 'Classic', 'Đàn Guitar Suzuki SCG-6CE là dòng đàn guitar classic chất lượng xuất xứ từ Nhật Bản, được làm từ loại gỗ đặc biệt, được gia công hoàn toàn thủ công bởi các nghệ nhân lâu năm, thiết kế với dáng khuyết, âm thanh bay bổng, chân thực, âm áp và truyền cảm, phù hợp cho các nghệ sĩ chuyên nghiệp.', 0),
(47, 'Kapok LC-18', 5, 1840000, 'Kapok', 'Classic', 'Đàn Guitar Classic Kapok LC-18 4/4 với giá rẻ, kiểu dáng đẹp, âm thanh tốt sẽ là lựa chọn số một của người mới tập chơi guitar classic.', 0),
(48, 'Greg Bennett CNGT-2CE', 5, 4050000, 'Greg Bennett', 'Mahogany', 'Greg Bennet CNGT-2CE thuộc dòng guitar classical nổi tiếng của Greg Bennet được làm hoàn toàn từ gỗ Mahogany với phím đàn được thiết kế quen thuộc đem lại cảm giác thoải mái cho người chơi', 0),
(49, 'Greg Bennett CNG-3 CE', 5, 3980000, 'Greg Bennett', 'Dreadnought Cutaway', 'Đàn guitar Greg Bennet CNG-3CE. Nhắc tới cái tên CNG-3CE ắt hẳn ai cũng sẽ nhớ tới danh tiếng người cha để vĩ đại của nó - Gred Bennet. Đó không chỉ là hãng chế tạo đàn guitar nổi tiếng thế giới mà những sản phẩm nhạc cụ của Gred Bennet sở hữu những chất lượng đáng nể.', 0),
(50, 'Fender MIJ Traditional 60s Telecaster® Custom', 5, 18000000, 'Fender', 'Telecaster®', 'Fender Traditional 60s Telecaster Custom có những đường viền trắng và một thân đàn mỏng hơn bao giờ hết. Chú ý hơn là các chi tiết như Pickup sử dụng nam châm Alnico, Aged Pick Guards, Spiral Saddle Bridges, v.v .... Sử dụng gỗ Alder làm vật liệu cho phần thân và chơi giai điệu tầm trung hấp dẫn, Telecaster làm tốt việc này hơn hết.', 0),
(51, 'Fender Player Strat HSH MN SGM', 6, 18700000, 'Fender', 'Stratocaster®', 'Fender Player Strat HSH MN SGM  được thiết kế để tạo nên phong cách âm thanh Fender đích thực một cách đơn giản phù hợp với nhiều nghệ sỹ khác nhau', 0),
(52, 'Fender Player Strat PLS TOP PF TBS', 6, 18740000, 'Fender', 'Stratocaster®', 'Guitar Fender Player Strat PLS TOP PF TBS  là một trong những cái tên được yêu thích trong dòng sản phẩm Player của Fender. Sở hữu dải tần trung và trầm mạnh mẽ, kết hợp cho ra âm thanh rõ ràng không trộn lẫn. Player Stratocaster được xây dựng với cảm giác, tình yêu và phong cách Fender đích thực.', 0),
(53, 'Fender Player Strat MN', 6, 18070000, 'Fender', 'Stratocaster®', 'Fender Player Strat MN được thiết kế theo phong cách Stratocaster với cần đàn bằng gỗ maple cùng những tính năng hiện đại mang đến âm thanh đẳng cấp cho người dùng', 0),
(54, 'Fender MIJ Traditional 70s Stratocaster', 6, 24100000, 'Fender', 'Stratocaster®', 'Phát triểm theo mô hình sản phẩm năm 71 được trang bị đầu đàn lớn bắt đầu được áp dụng vào cuối những năm 60 và logo chữ F trên các khóa lên dây. Pickup Single-Coil Stratocaster có phần cao cấp lấp lánh trên thân gỗ Ash. Phần cần đàn mỏng kèm theo các vị trí giữa các phím đàn rộng mang đến cảm giác chơi thoải mái và mượt mà.', 0),
(55, 'Fender MIJ Traditional 69 Telecaster® Thinline.', 6, 21000000, 'Fender', 'Stratocaster®', 'Được thiết kế dựa trên dòng sản phẩm 69 Telecaster® , Fender MIJ Traditional 69 Telecaster® Thinline được chế tác tinh tế bằng gỗ Mahogany mang đến âm thanh độc đáo cũng như cái nhìn thân thuộc, kết hợp với hệ thông Pickup Vintage-Style Single-Coil Tele® sẽ mang lại âm thanh tinh tế và sâu lắng.', 0),
(56, 'Fender MIJ Traditional 50s Telecaster®', 6, 20160000, 'Fender', 'Telecaster®', 'Guitar Fender MIJ Tele’50s cho ra âm thanh sâu sắc trên những thao tác rất đơn giản. Sử dụng Pick-up Tele Vintage được gẵn trên thân đàn là gỗ Basswood với các tính chất tương tự như gỗ Ash', 0),
(57, 'Fender MIJ Traditional 60s Precision Bass®', 6, 23000000, 'Fender', 'Basswood', 'Thân đàn sử dụng gỗ Basswood, được lắp đặt hệ thống Pick-up có âm thanh phạm vi rộng và tạo ra âm thanh nguyên bản 62 năm tái tạo sự hấp dẫn một cách chính xác. Mặt phím gỗ Rosewood tạo ra một giai điệu ngọt ngào, dày, phù hợp với tất cả các thể loại nhạc khác nhau.', 0),
(58, 'Fender MIJ Traditional 69 Telecaster®', 6, 22230000, 'Fender', 'Telecaster®', 'Được thiết kế dựa trên mẫu Telecaster năm 69, một sản phẩm rất hiếm trong số các cây đàn guitar cổ điển, Fender Traditional ’69 Telecaster là một dòng gồm hai mẫu với thiết kế pink paisley or blue flower trên thân và lưng.', 0),
(59, 'Squier Affinity Telecaster', 7, 6220000, 'Squiter', 'Telecaster®', 'Squier Affinity Telecaster mang lại giá trị tốt giá thành rẻ, sở hữu các tính năng bao gồm 2 Single-Coil Pickup với thanh chuyển đổi 3 vị trí. Mặt phím gỗ Rosewood cùng với 21 phím đàn cỡ vừa cùng với phần ngựa đàn chắc chắn.', 0),
(60, 'SQUIER VINTAGE MODIFIED JAZZ BASS', 7, 8560000, 'Squiter', 'bass', 'Squiers Vintage Modified Jazz Bass mang đến âm thanh Jazz bass tuyệt vời với nhiều tính năng được cải tiến cần đàn hình C bằng gỗ maple giúp người chơi thoải mái cùng với hệ thống âm thanh snappy-sounding Fender® chuyên nghiệp cho người chơi âm thanh tốt nhất trong thiết kê hoàn hảo.', 0),
(61, 'SQUIER AFFINITY PJ BASS', 7, 9000000, 'Squiter', 'Polyurethane', 'Squier Affinity Series™mang lại cho bạn những giá trị tốt nhất của thế giới guitar. Affinity Series Precision Bass PJ đánh mạnh vào âm sắc và cảm nhận classic rock', 0),
(62, 'SQUIER AFFINITY J BASS', 7, 5650000, 'Squiter', 'Polyurethane', 'Đại diện cho giá trị tốt nhất trong thiết kế guitar bass hiện nay, Affinity Series Jazz Bass mang đến âm thanh mạnh mẽ và cảm nhận nhạy bén. Affinity Series Jazz Bass được biết đến với cảm giác chơi thoải mái, vẻ ngoài bắt mắt và đầy đủ tính năng linh hoạt trong một nhạc cụ.', 0),
(63, 'Squier Vintage Modified Precision Bass PJ', 7, 5500000, 'Squiter', 'Squiter', 'Mang thiết kế mỏng manh của Precision Bass với các tính năng mạnh mẽ và âm sắc tinh tế, kết hợp giữa middle pickup Fender-designed split single-coilPrecision Bass và pickup ngựa đànsingle-coil Jazz Bass hiệu suất cao.', 0),
(64, 'SQUIER VINTAGE MODIFIED JAGUAR BASS', 7, 6000000, 'Squiter', 'Squiter', 'Vintage Modified Jaguar® Bass Special đặt cái nhìn Fender® cổ điển trong một phiên bản Squier® bass đặc trưng của vẻ đẹp, âm thanh tuyệt vời ​​và siêu linh hoạt.', 0),
(65, 'Jackson JS Series Kelly™ Bird JS3Q', 7, 8000000, 'Jackson', 'Concert™ Bass', 'The Jackson JS3 Kelly Bird Bass là một cây guitar bass hiện đại có giá cả phải chăng với một số tính năng tuyệt vời và kết cấu vững chắc.', 0),
(66, 'Jackson JS Series Concert™ Bass JS3Q', 7, 9000000, 'Jackson', 'Concert™ Bass', 'Jackson JS Series Concert™ Bass JS3Q sở hữu âm thanh tuyệt vời, phong cách tuyệt vời trong một mức gía phải chăng', 0),
(67, 'Jackson JS Series Concert™ Bass JS3VQ', 7, 9000000, 'Jackson', 'Concert™ Bass', 'Mẫu đàn Jackson’s JS Series Concert™ Bass có âm thanh rock vang rền, phong cách và giá cả rất phải chăng.', 0),
(69, 'Fender American Elite Jazz Bass Maple 5 Dây', 7, 56800000, 'Fender', 'Alder', 'Đàn guitar Fender American jazz bass® V với những cải tiến mới nhất nhằm mang lại một cây đàn tốt nhất cho người yêu nhạc', 0),
(70, 'Fender Am Pro P Bass RW', 8, 37800000, 'Fender', 'Alder', 'Fender Professional P Bass là một trong những guitar Bass được nhiều nghệ sĩ yêu thích. Sở hữu vẻ ngoài  cổ điển và âm thanh tuyệt vời kết hợp với thiết kế tỉ mỉ tạo sự thoải mái cho gười chơi, giúp P Bass trở thành nhạc cụ quen thuộc của hầu hết các nghệ sĩ Guitar bass', 0),
(71, 'Boss GC1', 8, 7500000, 'Roland', 'Alder', 'Chức năng đầy đủ của Roland GC-1 và rất hoàn hảo cũng như đẹp mắt trong bộ Fender Stratocaster đích thực, cho phép bạn sử dụng với GR-55, VG-99 với 13-gear tương thích. Cũng như chức năng linh hoạt của nó, cây guitar mang lại bạn cho cảm xúc âm thanh Fender Stratocaster cổ điển.', 0),
(72, 'Boss G5', 8, 7500000, 'Roland', 'Alder', 'Ngoài việc tạo ra những tính năng và âm thanh Stratocaster cổ điển thì G-5 còn mang lại một thế giới mới cho giai điệu của guitar điện và guitar thùng được tái tạo bởi COSM', 1),
(73, 'Roland GC-1 GK-Ready Stratocaster', 8, 7500000, 'Roland', 'Alder', 'Chức năng đầy đủ của Roland GK-3 và rất hoàn hảo cũng như đẹp mắt trong bộ Fender Stratocaster đích thực, cho phép bạn sử dụng với GR-55, VG-99 với 13-gear tương thích. Cũng như chức năng linh hoạt của nó, cây guitar mang lại bạn cho cảm xúc âm thanh Fender Stratocaster cổ điển.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `image`) VALUES
(4, 'Guitar Acoustic', 'GuitarAcoustic.jpg'),
(5, 'Guitar Classic', 'GuitarrClassic.jpg'),
(6, 'Guitar Electric', 'GuitarElectric.jpg'),
(7, 'Guitar Bass', 'GUITARBASS.jpg'),
(8, 'Guitar Syntherzie', 'GuitarSyntherzie.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `phone`, `address`) VALUES
(1, 'huong@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, NULL),
(2, '', 'd41d8cd98f00b204e9800998ecf8427e', '', NULL, NULL),
(4, 'huonggg@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'huong', NULL, NULL),
(6, 'huonggssssg@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'huong', NULL, NULL),
(7, 'huossssggag@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Hương siêu nhân', '234567890', '123343 lê thị riêng'),
(8, 'dinhtu123@gmail.com', '202cb962ac59075b964b07152d234b70', 'tran dinh tu', NULL, NULL),
(9, 'tu1234', '202cb962ac59075b964b07152d234b70', 'dinh tu', NULL, NULL),
(18, 'trandinhtu330@gmail.com', '202cb962ac59075b964b07152d234b70', 'tu456', NULL, NULL),
(19, 'fd', 'f0118e9bd2c4fb29c64ee03abce698b8', 'fdf', NULL, NULL),
(21, 'tu@gmail.com', '202cb962ac59075b964b07152d234b70', 'tu3456', NULL, NULL),
(22, 'dsdsd@gmail.com', '4c56ff4ce4aaf9573aa5dff913df997a', 'd', NULL, NULL),
(25, 'rt', 'c20ad4d76fe97759aa27a0c99bff6710', 'ty', NULL, NULL),
(26, 'dinhtu@gmail.com', '202cb962ac59075b964b07152d234b70', 'Đình Tú', '0123', 'uit'),
(31, 'tutu@gmail.com', '202cb962ac59075b964b07152d234b70', 'tutu', NULL, NULL),
(33, 'dinhquoc123@gmail.com', '202cb962ac59075b964b07152d234b70', 'quoc', NULL, NULL),
(34, 'teo', '202cb962ac59075b964b07152d234b70', 'steo', NULL, NULL),
(35, 'tututu', 'b6b4ce6df035dcfaa26f3bc32fb89e6a', 'tu', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f2` (`id_bill`),
  ADD KEY `f3` (`id_product`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f5` (`id_product`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f4` (`id_type`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `f1` FOREIGN KEY (`id_customer`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `f2` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `f3` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `f5` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `f4` FOREIGN KEY (`id_type`) REFERENCES `product_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
