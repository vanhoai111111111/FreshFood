-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 21, 2023 lúc 03:41 PM
-- Phiên bản máy phục vụ: 5.7.17-log
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freshfoodstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'admin', 'truongquochung204@gmail.com', 'admin', '25d55ad283aa400af464c76d713c07ad', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(3, 'Việt san'),
(4, 'FreshFood Store'),
(5, 'VINAMIT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(6, 13, 'hubk4110l5ks298tumf3qqkrc3', 'Đậu Gà 500g', '35000', 1, 'e2ee3add5b,png'),
(12, 14, '4brhj28e5tou4ia1mktqb6lo3u', 'Hạt Dưa 300g', '16000', 3, 'b89db4ac7c,png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(22, 'Các loại hạt'),
(23, 'Rau củ quả'),
(24, 'Thức uống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `phone`, `email`, `password`) VALUES
(5, 'Trương Quốc Hưng', 'Bình Dương', '0975103431', 'truongquochung204@gmail.com', '07511f23adc0c1b40b74a3e9e6d02e78');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_momo`
--

CREATE TABLE `tbl_momo` (
  `id_momo` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_momo`
--

INSERT INTO `tbl_momo` (`id_momo`, `partner_code`, `order_id`, `amount`, `order_info`, `order_type`, `trans_id`, `pay_type`, `code_cart`) VALUES
(36, 'MOMOBKUN20180529', 1657788098, '110000', 'Thanh toán qua QR MoMo', 'momo_wallet', 2147483647, 'napas', '3443'),
(37, 'MOMOBKUN20180529', 1658463746, '154000', 'Thanh toán qua QR MoMo', 'momo_wallet', 2147483647, 'napas', '2199'),
(38, 'MOMOBKUN20180529', 1658762998, '115500', 'Thanh toán qua QR MoMo', 'momo_wallet', 2147483647, 'napas', '3185'),
(39, 'MOMOBKUN20180529', 1658762998, '115500', 'Thanh toán qua QR MoMo', 'momo_wallet', 2147483647, 'napas', '7156'),
(40, 'MOMOBKUN20180529', 1658763169, '83600', 'Thanh toán qua QR MoMo', 'momo_wallet', 2147483647, 'napas', '564'),
(41, 'MOMOBKUN20180529', 1658763169, '83600', 'Thanh toán qua QR MoMo', 'momo_wallet', 2147483647, 'napas', '968');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_orderid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`, `trans_orderid`) VALUES
(15, 13, 'Đậu Gà 500g', 5, 4, '35000', 'e2ee3add5b,png', 1, '2022-07-18 03:05:54', NULL),
(16, 13, 'Đậu Gà 500g', 5, 4, '35000', 'e2ee3add5b,png', 0, '2022-07-22 04:23:39', 1658463746),
(17, 13, 'Đậu Gà 500g', 5, 3, '35000', 'e2ee3add5b,png', 0, '2022-07-25 15:30:50', 1658762998),
(18, 13, 'Đậu Gà 500g', 5, 1, '35000', 'e2ee3add5b,png', 0, '2022-07-25 15:31:19', NULL),
(19, 28, 'Nước Ép Thơm 1L', 5, 1, '60000', '155072a2e5,png', 0, '2022-07-25 15:34:32', 1658763169);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `description`, `type`, `price`, `image`) VALUES
(13, 'Đậu Gà 500g', 22, 4, '<p><strong>- Nơi cung cấp : FreshFood Store</strong></p>\r\n<p><strong>-Xuất xứ: Việt Nam</strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p>Được mệnh danh là \"\"Ông vua dòng họ đậu\"\", đậu gà cung cấp nhiều vitamin và các khoáng chất như: chất xơ, protein, acid folic, sắt, đồng, kẽm và magiê. Thành phần dinh dưỡng:</p>\r\n<p>• Đậu gà cung cấp nhiều vitamin và các khoáng chất như: chất xơ, protein, acid folic, sắt, đồng, kẽm và magiê.</p>\r\n<p>• Chứa nhiều chất xơ và đạm</p>\r\n<p>• 100 g đậu gà nấu chín có chứa 269 calo, 15 gam protein, 13 gam chất xơ, 4 gam chất béo và 0 gam cholesterol.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/56a042d701d14be8bcdb00fd9214000a.png\" alt=\"/FileUploads/Commons/56a042d701d14be8bcdb00fd9214000a.png\" width=\"329\" height=\"329\" hspace=\"5px\" /></p>\r\n<p><strong>-  Công dụng :</strong></p>\r\n<p>• Giúp xương khỏe mạnh: Sắt, phốt pho, canxi, magiê, mangan, kẽm và vitamin K đều có trong đậu gà đóng góp để xây dựng và duy trì cấu trúc xương và sức mạnh.</p>\r\n<p>• Giúp tim khỏe mạnh: Đậu gà có chứa một lượng đáng kể các chất xơ, giúp giảm tổng lượng cholesterol trong máu, qua đó làm giảm nguy cơ bệnh tim.</p>\r\n<p>• Hỗ trợ hệ tiêu hóa: Vì chất xơ đem lại, đậu gà giúp ngăn ngừa táo bón và thúc đẩy sự đều đặn cho một đường tiêu hóa khỏe mạnh.</p>\r\n<p>• Giảm cân: Chất xơ trong đậu gà làm tăng cảm giác no và giảm sự thèm ăn</p>\r\n<p>• Trắng da: Bột đậu gà có tác dụng tẩy tế bào chết, kiểm soát dầu thừa và cung cấp các chất dinh dưỡng cần thiết cho da, giúp cải thiện và làm trắng da một cách tự nhiên.</p>\r\n<p><strong>- HDSD:</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/7ea21981e04d459abac700c74743b1ce.png\" alt=\"/FileUploads/Commons/7ea21981e04d459abac700c74743b1ce.png\" width=\"368\" height=\"368\" hspace=\"5px\" /></strong></p>\r\n<p>• Trắng da: 1 muỗng bột đậu gà, ½ muỗng mật ong, 1 muỗng kem sữa, 2-5 giọt nước chanh, khấy đều thành 1 hỗn hợp đặc sánh, đắp lên mặt, cổ và lưng, duy trì trong 15-20p cho đến khi hỗn hợp khô hoàn toàn. Rửa sạch bằng nước ấm. làm liên tục mỗi ngày tròng 4 tuần, sau đó giảm xuống 1 lần/tuần.</p>\r\n<p>• Đậu gà cứng và lâu chín hơn các loại đậu khác. Ngâm ít nhất 2 tiếng hoặc qua đêm. Nấu chín với nước.</p>\r\n<p>• Dùng trong các món ăn hâm, kho, có thể xay lọc bỏ bã để làm sữa đậu gà,.... Bảo quản: Nơi khô ráo, thoáng mát, tránh tiếp xúc trực tiếp với ánh nắng mặt trời và nhiệt độ cao</p>', 1, '35000', 'e2ee3add5b,png'),
(14, 'Hạt Dưa 300g', 22, 3, '<p><strong>- Nơi cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>-Xuất xứ: Việt Nam</strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/384eb56ba8a44962b8a213152c987cdc.png\" alt=\"/FileUploads/Commons/384eb56ba8a44962b8a213152c987cdc.png\" width=\"390\" height=\"390\" hspace=\"5px\" /></strong></p>\r\n<p><strong>Hạt dưa </strong>được làm từ 100% là hạt dưa thơm ngon, béo ngậy và không chứa phẩm màu độc hại. Sản phẩm đạt chứng nhận hàng Việt Nam chất lượng cao và là sản phẩm uy tín trên thị trường.<br />Ruột hạt dưa to, chắc, vỏ có độ giòn vừa phải, dễ cắn và khó gây vỡ nát khi cắn.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/b84c80dfae404f7ab54aff61d4b70d01.png\" alt=\"/FileUploads/Commons/b84c80dfae404f7ab54aff61d4b70d01.png\" width=\"357\" height=\"357\" hspace=\"5px\" /><br /><strong>Hướng dẫn sử dụng: </strong>Sản phẩm dạng ăn liền, sử dụng sau khi mở bao bì, bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.</p>', 1, '16000', 'b89db4ac7c,png'),
(15, 'Gạo Thơm Túi 2kg', 22, 4, '<p><strong>- Nơi cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>- Xuất xứ: Việt Nam</strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p><strong>+ Gạo Nàng Xuân</strong> là loại gạo được sản xuất ra bởi sự lai tạo của hai giống lúa Tám Xoan và KhaoDawk Mali (Thái Lan) cho ra hạt cơm mềm dẻo ngọt cơm và có mùi thơm đặc trưng.<br />Gạo Nàng Xuân có hạt thon dài và được coi là loại gạo có hạt dài nhất trong số các loại gạo hiện có tại Việt Nam. Ngoài chất lượng thơm ngon hảo hạng, trong gạo Nàng Xuân còn chứa một hàm lượng protein cao gấp 1,5 lần so với các loại gạo đặc sản thông thường.<br />+ Gạo Nàng Xuân được sản xuất theo qui trình sản xuất gạo sạch của VNF1 đảm bảo: không có dư chất bảo vệ thực vật, không có chất bảo quản độc hại và không bị nấm mốc.<br />Với <strong>gạo Nàng Xuân</strong>, người tiêu dùng được thưởng thức một loại gạo không chỉ có chất lượng tuyệt hảo và giàu dinh dưỡng mà còn thực sự An Toàn cho sức khỏe.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/f4e98bb5335242be97169d39a9bb8996.png\" alt=\"/FileUploads/Commons/f4e98bb5335242be97169d39a9bb8996.png\" width=\"351\" height=\"351\" hspace=\"5px\" /></p>\r\n<ul>\r\n<li><strong>Quy trình sản xuất gạo :</strong> </li>\r\n</ul>\r\n<p><strong>+ </strong>Gạo trắng là thóc đã được xay để tách bỏ trấu và xát để loại lớp cám và mầm. Sau khi xay xát, có thể đánh bóng để hạt gạo trắng và sáng hơn.</p>\r\n<p>+ Quá trình xát và đánh bóng làm mất đi nhiều chất dinh dưỡng trong hạt gạo (chất béo trong cám, các vi chất như vitamin, muối khoáng) nên gạo trắng hạn chế được sự xâm nhập của vi sinh vật và côn trùng gây hại, do đó có thời gian bảo quản dài hơn gạo lức và thóc.</p>\r\n<p>+ Chế độ ăn sử dụng chủ yếu gạo trắng có thể gây bệnh beriberi do thiếu vitamin B1 nếu không bổ sung các nguồn thức ăn chứa loại vitamin này. Gạo trắng thường được bổ sung một số chất dinh dưỡng trong quá trình chế biến Tại Hoa Kỳ, vitamin B1, niaxin(vitamin B3) và sắt là các vi chất bắt buộc phải bổ sung vào gạo trắng.</p>\r\n<p>+ Từ thế kỉ 19, gạo lứt đã được nhiều người sử dụng thay thế gạo trắng do có lợi cho sức khỏe Cám trong gạo lứt chứa một lượng xơ tiêu hóa đáng kể và mầm gạo thì chứa nhiều vitamin và chất khoáng.</p>\r\n<p>+ Thành phần của gạo trắng phụ thuộc vào giống, đất đai, khí hậu, phân bón, quá trình chế biến và thời gian bảo quản.</p>\r\n<p>+ Thông thường 100 g gạo trắng sẽ nấu được 240 đến 260 g cơm. Lượng cơm thay đổi do các loại gạo hấp thụ lượng nước khác nhau. Độ nở của gạo phụ thuộc vào giống lúa và thời gian bảo quản. </p>\r\n<ul>\r\n<li><strong>Quy trình sản xuất gạo :</strong></li>\r\n</ul>\r\n<p>+ Lúa được thu mua tại những cánh đồng mẫu lớn của những hộ nông dân và hợp tác xã, nhưng với sự chăm sóc. Sau thời gian đầu tư tại những cánh đồng mẫu lớn thì chúng tôi cho kỹ thuật kiểm duyệt chất lượng hạt lúa và chọn ngày để thu hoạch trên những cánh đồng đã đầu tư.</p>\r\n<p>+Sau khi thu hoạch lúa tại cánh đồng mẫu lớn, chúng tôi vận chuyển lúa về nhà máy sấy khô đạt độ ẩm theo quy cách kỹ thuật của nhà máy. Lưu trữ bảo quản lúa mới sấy ở nơi khô thoáng để tiến hành xay xát theo quy trình từ đó loại bỏ sạn đá và phân loại các phụ phẩm như tấm, trấu, cám để tiến hành sản xuất khác như củi trấu, trấu viên hay cám nguyên liệu.</p>\r\n<p>+Gạo đã xây xát được băng tải chuyển về nhà máy tách màu theo từng loại giống để xử lý cho ra chất lượng hạt gạo màu đẹp và đồng đều theo yêu cầu phần trăm tấm lẫn của khách hàng rồi tiến hành chuyển gạo về nhà máy lau bóng để tăng cường độ bảo quản và làm cho hạt gạo sáng bóng hơn.</p>\r\n<p>+ Sau đó gạo được chuyển lên các silo tồn trữ đạt tiêu chuẩn tốt hoặc theo yêu cầu của khách hàng đóng gói khối lượng 01kg, 5kg, 10kg, 15kg và bao 25kg, 50kg, 75kg, 100kg, vào bao lớn từ 500kg trở lên. Rồi chất thành cây bảo quản khô thoáng trong kho chứa gạo chuyên dụng</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/066b262488a64513b133d6b71a2b2908.png\" alt=\"/FileUploads/Commons/066b262488a64513b133d6b71a2b2908.png\" width=\"381\" height=\"381\" hspace=\"5px\" /></p>\r\n<p><strong>-  Công dụng :</strong></p>\r\n<p>+ Có chứa các thành phần cần thiết cho cơ thể như tinh bột gạo, protein, chất béo, vitamin B1, niacin, vitamin C, canxi, sắt… do đó nó có thể cung cấp dinh dưỡng, calo cần thiết cho cơ thể.<br /><br />+ Phổ biến nhất khi được dùng để nấu cơm ăn hàng ngày.</p>\r\n<p>+ Gạo có vị ngọt, tính mát, giúp điều hòa tì vị, lợi tiểu, trị được chứng đi phân lỏng hoặc tả lỵ. Đặc biệt, khi dùng gạo nấu cháo trắng sẽ giúp giải cảm và giải tỏa cơn khát, tránh mất nước.</p>', 1, '59000', 'd0b9c85ddd,png'),
(16, 'Gạo Nếp Dẻo', 22, 4, '<p><strong>- Nơi cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>- Xuất xứ: Việt Nam</strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/9ae9f683e5384adea27eb4585794c4e0.png\" alt=\"/FileUploads/Commons/9ae9f683e5384adea27eb4585794c4e0.png\" width=\"357\" height=\"357\" hspace=\"5px\" /></strong></p>\r\n<p>+ Gạo nếp (hay gạo sáp) là loại gạo hạt ngắn phổ biến ở các nước châu Á, có độ kết dính đặc biệt khi nấu, đem lại sự dẻo thơm cho món ăn.<strong> </strong></p>\r\n<p>Lúa nếp – loại lúa sản xuất ra gạo nếp được trồng ở Bangladesh, Trung Quốc, Nhật Bản, bán đảo Triều Tiên, Philippines, Thái Lan, Lào, Indonesia và Việt Nam. Gạo nếp đã có mặt tại Lào từ hơn 1000 năm trước.</p>\r\n<p>+ Tại Việt Nam có gạo nếp cẩm dùng để nấu xôi hoặc nấu rượu nếp cẩm. Nếp cái hoa vàng được xem là một đặc sản của người Việt. Ngoài ra, từ gạo nếp có thể chế biến các món như cơm nếp, xôi, bánh chưng, các món chè, hoặc cất rượu nếp, rượu đế và ngâm rượu cần. Bột gạo nếp được dùng để làm nhiều món bánh truyền thống như bánh nếp, bánh giầy, bánh rán, bánh trôi, bánh gai, bánh cốm…</p>\r\n<p>+ Gạo nếp có chứa nhiều vitamin, dưỡng chất hơn so với những loại gạo khác, nhất là gạo nếp cẩm. Theo nghiên cứu khoa học, gạo nếp cẩm là một loại “siêu thực phẩm”, trong thành phần có nhiều chất sắt, chất xơ, chất chống oxi hóa, vitamin E. Chất xơ không hoà tan, các chất chống oxi hóa trong gạo nếp có tác dụng phòng ngừa các bệnh ung thư hiệu quả. Theo Đông Y, gạo nếp có tính nóng, vị ngọt, rất dễ tiêu hoá, ăn vào ấm bụng.</p>\r\n<ul>\r\n<li><strong>Quy trình sản xuất gạo :</strong></li>\r\n</ul>\r\n<p>+  Chọn giống: Các giống lúa ĐS1, DT68, T10…do Viện di truyền – Bộ NN &amp; PTNT, Viện cây lương thực và cây thực phẩm nghiên cứu, lai tạo</p>\r\n<p>+ Vùng nguyên liệu được đặt tại các huyện của tỉnh Thái Bình – một tỉnh có truyền thống thâm canh lúa nước với đặc tính thổ nhưỡng và nước tưới phù hợp đảm bảo chất lượng lúa gạo cao, Xây dựng các cánh đồng mẫu lớn tiện lợi trong việc chăm sóc và áp dụng cơ giới hóa trong sản xuất nông nghiệp.<strong> </strong></p>\r\n<p>+  Làm ruộng: Ruộng được cày, bừa, xử lý kỹ trước khi gieo sạ hoặc cấy</p>\r\n<p>+ Sử dụng thuốc bảo vệ thực vật theo đúng tiêu chuẩn cho phép</p>\r\n<p>+ Áp dụng cơ giới hóa trong sản xuất lúa</p>\r\n<p>+ Tiêu chuẩn chất lượng sản phẩm Gạo Hưng Cúc: ISO 22000:2005</p>\r\n<p>+  Sản phẩm chất lượng ổn định, có mùi đặc trưng của địa phương</p>\r\n<p>+ Kho bảo quản nguyên liệu sạch sẽ, thoáng mát đảm bảo đạt tiêu chuẩn</p>\r\n<p>+  Chế biến: Sản xuất trên dây chuyền công nghệ hiện đại, khép kín với hệ thống máy bóc vỏ trấu, máy lọc sạn, máy xát trắng, máy đánh bóng gạo, Cân điện tử tự động…đặc biệt là máy Bắn màu hạt gạo tự động, được nhập khẩu từ Đài Loan có tác dụng loại bỏ những hạt gạo kém chất lượng, đảm bảo sản phẩm đạt tiêu chuẩn xuất khẩu</p>\r\n<p>+  Đóng gói: Sản phẩm được đóng gói theo đúng tiêu chuẩn quy định</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/072a785ea07b4040b52f85195ede8909.png\" alt=\"/FileUploads/Commons/072a785ea07b4040b52f85195ede8909.png\" width=\"343\" height=\"343\" hspace=\"5px\" /></p>\r\n<p><strong>-  Công dụng :</strong></p>\r\n<p>+Trong gạo nếp có nhiều chất dinh dưỡng như protein, chất béo, carbonhydrate, canxi, phốt pho, sắt, vitamin B2, một lượng lớn tinh bột… Đây là loại gạo dẻo và có giá trị dinh dưỡng cao. Người ta thường dùng để chế biến những món ngon như xôi, chè, bánh… Gạo nếp có vị ngọt, mùi thơm, nhiều nhựa và có tính âm. Có tác dụng làm khỏe tì, mạnh phổi, chữa chứng đi phân lỏng, tiểu tiện khó, chứng đổ mồ hôi trộm và giải được một vài độc tính.</p>\r\n<p>+Gạo nếp còn giúp ấm bụng, có tác dụng tốt với những người bị viêm loét dạ dày. Tuy nhiên, không nên ăn quá nhiều gạo nếp vì nó sẽ khiến nóng trong người, nhất là những người đang bị mụn nhọt, vết thương sưng tấy.</p>', 1, '57000', 'a8cccad58d,png'),
(17, 'Nếp Than', 22, 4, '<p><strong>- Nơi cung cấp : </strong><strong>FreshFood Strore</strong></p>\r\n<p><strong>-Xuất xứ: Việt Nam</strong></p>\r\n<p><strong> <img src=\"http://localhost:62699/FileUploads/Commons/a5a16afc5d5e455fb05bba45966bafb8.png\" alt=\"/FileUploads/Commons/a5a16afc5d5e455fb05bba45966bafb8.png\" width=\"331\" height=\"331\" hspace=\"5px\" /></strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p><strong>Gạo nếp than</strong> hay gạo nếp cẩm, là một loại gạo có màu tím đen, chứa hàm lượng anthocyamin rất cao (khoảng 0.4%), đây là chất chống oxy hoá tự nhiên, hiệu quả. Ngoài ra, trong nếp than còn chứa khoảng 10% chất đạm, 6.4 pmm chất GABA, các loại vitamin B1, B6, B12, canxi, magiê cùng nhiều vi chất khác, tốt cho sức khoẻ.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/83bb1ed95d4e4e86bf5b8a6214f09a94.png\" alt=\"/FileUploads/Commons/83bb1ed95d4e4e86bf5b8a6214f09a94.png\" width=\"408\" height=\"408\" hspace=\"5px\" /></p>\r\n<p><strong>-  Công dụng :</strong></p>\r\n<ul>\r\n<li>Chất Anthocyanin: giúp chống oxy hoá, ngăn ngừa bệnh ung thư, hỗ trợ rất nhiều trong việc phòng tránh biến chứng của bệnh tiểu đường.</li>\r\n<li>Chất GABA: tốt cho hệ thần kinh, hỗ trợ phục hồi các tổn thương ở gan, thận.</li>\r\n<li>Vitamin B1, B6, B12: kháng viêm, an thần, tốt cho hệ miễn dịch.</li>\r\n</ul>', 1, '44000', '7a78f3b55e,png'),
(18, 'Cà Phê Hạt 200g', 22, 4, '<p><strong>- Nơi cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>-Xuất xứ: Việt Nam</strong></p>\r\n<p><strong> <img src=\"http://localhost:62699/FileUploads/Commons/aa9e58da47b7498a8228c3c1cc10e874.png\" alt=\"/FileUploads/Commons/aa9e58da47b7498a8228c3c1cc10e874.png\" width=\"428\" height=\"428\" hspace=\"5px\" /></strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p>Đây là những <a href=\"https://vi.wikipedia.org/wiki/Qu%E1%BA%A3_h%E1%BA%A1ch\">quả hạch</a> bên trong trái cây màu đỏ hoặc màu tím thường được gọi là một <a href=\"https://vi.wikipedia.org/wiki/Qu%E1%BA%A3_m%E1%BB%8Dng\">quả mọng</a>. Cũng giống như những quả mọng bình thường. Mặc dù có hình thức là các hạt cà phê, trong tiếng Anh, chúng được gọi là \"<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BA%ADu\">đậu</a>\" (bean) vì sự giống nhau của họ đậu thật sự. Hai giống quan trọng nhất về <a href=\"https://vi.wikipedia.org/wiki/Kinh_t%E1%BA%BF\">kinh tế</a> của cây cà phê là hạt cà phê <a href=\"https://vi.wikipedia.org/w/index.php?title=Arabica&amp;action=edit&amp;redlink=1\">Arabica</a> và <a href=\"https://vi.wikipedia.org/w/index.php?title=Robusta&amp;action=edit&amp;redlink=1\">Robusta</a>, chiếm 65-70% lượng cà phê được sản xuất trên toàn thế giới là Arabica và 30% là cà phê Robusta, hạt Arabica gồm 0,8-1,4% caffeine và hạt Robusta bao gồm 1,7-4% caffeine.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/ed45568e61fc46f29b086acb6282c4e0.png\" alt=\"/FileUploads/Commons/ed45568e61fc46f29b086acb6282c4e0.png\" width=\"428\" height=\"428\" hspace=\"5px\" /></p>\r\n<p><strong>-  Công dụng :</strong></p>\r\n<h2>+ <strong>Cà phê chứa nhiều chất chống ôxy hóa</strong></h2>\r\n<h2><strong>+ Giúp giảm cân</strong></h2>\r\n<h2><strong>+ Cà phê đối với hệ tim mạch</strong></h2>\r\n<h2><strong>+  Cà phê ngừa ung thư</strong></h2>\r\n<h2><strong>+ Giảm thiểu bệnh Parkinson</strong></h2>\r\n<h2><strong>+ Ngừa bệnh xơ gan</strong></h2>\r\n<h2><strong>+ Giảm bệnh hen suyễn</strong></h2>\r\n<h2><strong>+  Lợi tiểu</strong></h2>\r\n<h2><strong>+ Giảm nguy cơ mắc bệnh sỏi mật</strong></h2>\r\n<h2><strong>+ Cà phê tốt cho luyện tập thể dục</strong></h2>\r\n<h2><strong>+ Tăng cường trí não</strong></h2>\r\n<h2><strong>+ Giảm nguy cơ bị trầm cảm</strong></h2>\r\n<h2><strong>+  Giảm nguy cơ tai biến và đột quỵ</strong></h2>', 1, '35000', '43ec31c314,png'),
(19, 'Rau Má 100gram', 23, 4, '<div class=\"description-box\">\r\n<div class=\"description\">\r\n<div id=\"p1\" class=\"input-login-register\">\r\n<p><strong>- Nhà cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>-</strong><strong>Xuất xứ: Việt Nam</strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/32f385cb31c148e18bf46375d8995aae.png\" alt=\"/FileUploads/Commons/32f385cb31c148e18bf46375d8995aae.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p>+ Cây thảo nhỏ, cao 7-10 cm. Thân mảnh, mọc bò, có lông khi còn non, bén rẽ ở các mấu. Lá mọc so le, nhưng thường tụ họp 2 – 5 cái ở một mấu, phiến lá nhẵn, hình thận hoặc gần tròn, mép khía tai bèo; cuống lá mảnh, dài 3 – 5 cm, có khi đến 7 – 8 cm.</p>\r\n<p>+ Cụm hoa gồm những tán đơn mọc riêng lẻ hoặc 2 – 5 cái ở kẽ lá, mỗi tán mang 1 – 5 hoa (thường là 3) màu trắng hoặc phớt đỏ, hoa giữa không có cuống; tổng bao có 2 – 3 mảnh hình trái xoan, lõm, dạng màng; cánh hoa hình tam giác hoặc trái xoan; nhị có chỉ nhị ngắn, bao phấn hình mắt chim; bầu hình cầu.</p>\r\n<p>+ Quả màu nâu đen, đỉnh lõm, có 7 – 9 cạnh lồi, nhẵn hoặc có lông nhỏ, có vân mạng.</p>\r\n<p>+ Mùa hoa quả : tháng 4-6.</p>\r\n<ul>\r\n<li><strong>Công dụng : </strong></li>\r\n</ul>\r\n<h3><em>+ Giải nhiệt</em></h3>\r\n<p>Rau má giúp giải quyết chứng nóng nảy bứt rứt trong người. Bên cạnh đó, rau má còn có tác dụng chữa rôm sảy, mẩn ngứa, mụn nhọt,…<strong> </strong></p>\r\n<p>Bạn có thể dùng rau má tươi 30 – 100g giã hoặc xay lấy nước uống hàng ngày (nếu cẩn thận hãy chần qua nước sôi). Ngoài ra, bạn cũng có thể kết hợp rau má với rau sam và kinh giới.</p>\r\n<h3><em>+ Giải độc</em></h3>\r\n<p>Theo sách<em> Cây rau làm thuốc</em> của <em>Tiến sĩ Võ Văn Chi</em>, nếu ăn nhầm lá ngón, nấm độc hay bị say sắn thì hãy dùng 250g rau má và 250g rễ rau muống để giã nát, hòa với nước sôi uống để giải độc. Tuy nhiên, bạn chỉ nên dùng cách này để sơ cứu, sau đó hãy đến ngay bệnh viện để điều trị kịp thời.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/3615253154be483d96c238cd9f011cd2.png\" alt=\"/FileUploads/Commons/3615253154be483d96c238cd9f011cd2.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<h3><em>+ Trị ho</em></h3>\r\n<p>Dùng rau má tươi giã lấy nước uống hoặc sắc nước để uống.</p>\r\n<h3><em>+ Trị tiểu buốt, tiểu rắt</em></h3>\r\n<p>Dùng rau má tươi giã nhuyễn, lấy nước cốt uống.</p>\r\n<h3>+  <em>Chữa cảm nắng, nhức đầu, chóng mặt, buồn nôn</em></h3>\r\n<p>Lấy 1 nắm rau má tươi rửa sạch, giã nhuyễn lấy nước cốt pha loãng, thêm vài hạt muối và uống. Bã rau má còn lại lấy đắp lên trán và thái dương.</p>\r\n<h3><em>+ Làm lành vết thương</em></h3>\r\n<p>Một vài báo cáo khoa học cho thấy công dụng của rau má trong việc hỗ trợ làm lành vết thương. Tinh chất chiết xuất từ rau má giúp kích thích việc tuần hoàn máu, tái tạo tế bào, giảm viêm nhiễm và hỗ trợ làm liền sẹo.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/273e336fa9584c8792d94977a0a3bbe0.png\" alt=\"/FileUploads/Commons/273e336fa9584c8792d94977a0a3bbe0.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<h3><em>+ Cải thiện các vấn đề về tuần hoàn và da</em></h3>\r\n<p>Các nhà thảo mộc học cho rằng rau má chứa nhân tố trường thọ gọi là “Vitamin X trẻ trung” có tác dụng bổ dưỡng cho não và các tuyến nội tiết và xác nhận rằng nước chiết từ rau má giúp cải thiện các vấn đề về hệ tuần hoàn và da.</p>\r\n<p> </p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"the-title\"> </div>', 1, '5000', '7054f7d97f,png'),
(20, 'Cải Xà Lách 100gram', 23, 4, '<p><strong>- Nhà cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>-</strong><strong>Xuất Xứ: Việt Nam</strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/d500d69a5bbe4f61a6c7dce9ffcbc68c.png\" alt=\"/FileUploads/Commons/d500d69a5bbe4f61a6c7dce9ffcbc68c.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p>+ Lớp lá bên ngoài xanh hơn và lớp lá bên trong trắng hơn. Loại này phổ biến nhất vì có kết cấu lá giòn, mùi vị nhẹ nhàng và có nhiều nước. Nó là một nguồn chứa nhiều chất choline (Một chất amin tự nhiên, C5H15NO2, thường được xếp vào loại vitamin B complex, và là thành phần của nhiều phân tử sinh học quan trọng khác, chẳng hạn như acetylcholine và lecithin).</p>\r\n<p>+ Xà lách là một trong những loại rau quan trọng nhất ở các nước ôn đới. Ở những nước ôn đới xà lách được trồng trong nhà có mái che bằng kính hoặc bằng nhựa, tùy theo thời tiết, xà lách cũng được trồng ở ngoài đồng.<strong> </strong></p>\r\n<p>+ Xà lách chiếm diện tích lớn trong các loại rau ăn sống.</p>\r\n<p>+ Xà lách là loại rau giàu chất khoáng: Canxi, sắt, giàu protein, vitamin C.</p>\r\n<p>+ Xà lách có tác dụng như thuốc an thần, làm lợi tiểu.</p>\r\n<p>Cây rau xà lách là một cây ôn đới thuộc họ Cúc. Nó thường được trồng làm rau ăn lá đặc biệt trong món xa lát, bánh mì kẹp, hăm-bơ-gơ và nhiều món ăn khác.</p>\r\n<p><strong>-  Công dụng :</strong></p>\r\n<h3>+ <em>Năng lượng</em></h3>\r\n<p>Lá xà lách là một trong những loại rau xanh cung cấp ít năng lượng nhất. Với 100g rau chỉ cung cấp 15 calo cho cơ thể. Bên cạnh đó, xà lách còn chứa nhiều dưỡng chất thực vật giúp tăng cường sức khỏe và phòng tránh bệnh tật.</p>\r\n<h3><em>+ Rau diếp có rất nhiều vitamin</em></h3>\r\n<p>Lá rau diếp là nguồn cung cấp vitamin A và chất beta carotene dồi dào. Chỉ 100g rau diếp có thể cung cấp tới 247% nhu cầu vitamin A và 4.443 µg nhu cầu beta carotene hàng ngày của cơ thể. Trong thành phần của rau diếp cũng có các chất chống oxy hóa. Vitamin A cần thiết để duy trì các cơ và da khỏe mạnh cũng như hỗ trợ thị lực. Ăn nhiều rau củ quả thiên nhiên giàu chất flavonoid giúp bảo vệ cơ thể khỏi ung thư phổi và ung thư vòm họng.</p>\r\n<h3><em>+ Xà lách cũng là nguồn cung cấp vitamin K</em></h3>\r\n<p>Vitamin K có vai trò quan trọng trong quá trình trao đổi chất của xương, làm tăng mật độ xương bằng cách thúc đẩy hoạt động của tế bào tạo xương. Xà lách còn hỗ trợ bệnh nhân bị Alzheimer bằng cách bảo vệ các nơ-ron thần kinh khỏi bị tổn thương.</p>\r\n<h3><em>+ Rau diếp sạch chứa nhiều chất folate và vitamin C</em></h3>\r\n<p>Chất folate là một thành phần của các chất co-factor trong quá trình chuyển hóa enzyme để tổng hợp DNA, có vai trò thiết yếu trong việc phòng tránh các khiếm khuyết ống thần kinh cho thai nhi trong quá trình người mẹ mang thai. Vitamin C là một chất chống oxy hóa cực mạnh; nếu bạn ăn nhiều thực phẩm giàu vitamin C sẽ giúp cơ thể tăng cường sức đề kháng chống lại các tác nhân gây bệnh và loại bỏ các gốc tự do độc hại gây viêm.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/a7bdf11d1a6e49029fe9f62b150ef64c.png\" alt=\"/FileUploads/Commons/a7bdf11d1a6e49029fe9f62b150ef64c.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<h3><em>+ Tốt cho võng mạc</em></h3>\r\n<p>Chất zeaxanthin (1.730 µg trong 100g rau xà lách), một loại carotenoid (một dạng sắc tố hữu cơ tự nhiên trong thực vật và các loài sinh vật quang hợp khác) quan trọng trong bữa ăn hàng ngày, được cơ thể chọn lọc và thẩm thấu vào các điểm vàng của võng mạc. Tại đây, chất này sẽ cung cấp các chất chống oxy hóa và lọc các tia UV gây tổn hại võng mạc.</p>\r\n<h3><em>+ Chứa nhiều khoáng chất, protein và vitamin</em></h3>\r\n<p>Rau xà lách cũng chứa nhiều chất khoáng có lợi cho sức khỏe như sắt, canxi, magiê và kali cần thiết cho quá trình trao đổi chất của cơ thể. Kali là một thành tố quan trọng của tế bào và dịch cơ thể, giúp điều hòa nhịp tim và huyết áp. Cơ thể sử dụng magiê như một loại co-factor cho enzyme chống oxy hóa superoxide dismutase (SOD).</p>\r\n<p>Ngoài ra, chất đồng cũng cần thiết trong quá trình sản xuất hồng cầu và chất sắt không thể thiếu trong việc hình thành hồng cầu.</p>\r\n<p>Xà lách giàu các loại vitamin B như vitamin B1, B6 và B2. Trong rau diếp cũng có protein. 75g rau diếp tươi chứa gần 1g protein.</p>\r\n<h3><em>+ Chất xơ trong xà lách</em></h3>\r\n<p>Trường Đại học Sức khỏe Công cộng Harvard khuyến cáo phụ nữ trưởng thành nên hấp thụ hơn 20g chất xơ mỗi ngày; còn nam giới là 30g. Với 75g xà lách tươi, gồm cả hai loại xanh và đỏ, có chứa 1,3g chất xơ “biến” xà lách trở thành nguồn cung cấp chất xơ lý tưởng mỗi ngày.</p>\r\n<h3><em>+ Phòng tránh một số bệnh nguy hiểm</em></h3>\r\n<p>Thêm rau diếp vào món rau trộn hàng ngày sẽ giúp phòng tránh loãng xương, thiếu máu do thiếu sắt, các bệnh tim mạch, thoái hóa võng mạc (ARMD), Alzheimer và ung thư.</p>\r\n<p>Rau củ quả là một phần không thể thiếu trong chế độ ăn uống hàng ngày của con người để bổ sung các khoáng chất và chất xơ, đặc biệt là rau xà lách. Sau bài viết, Hello Bacsi hy vọng bạn biết rõ hơn về công dụng của xà lách và thêm yêu thích thực phẩm bổ dưỡng này.</p>', 1, '7000', 'a2e367c9d3,png'),
(21, 'Chuối Sấy VINAMIT 100g', 23, 5, '<p><strong>Nhà cung cấp</strong> <strong>: </strong>Vinamit<strong>.</strong></p>\r\n<p><strong>Xuất xứ: </strong>Việt Nam</p>\r\n<p><strong>Quy trình sản xuất chuối sấy:</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/66eac7814b6c4ddaa2af66d6b313cbf4.png\" alt=\"/FileUploads/Commons/66eac7814b6c4ddaa2af66d6b313cbf4.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p>+ Chọn chuối nguyên trái vừa chính không bị sâu bệnh</p>\r\n<p>+ Tếch bỏ vỏ</p>\r\n<p>+ Cắt lắt mỏng</p>\r\n<p>+ Sấy thăng hoa hiện đại giữ được màu sắc tự nhiên của sản phẩm</p>\r\n<p>+ Tiêu chuẩn độ ẩm 10-12%</p>\r\n<p>+ Không lẫn tập chất , không chất phụ gia</p>\r\n<p>+ Không So2 Không Co2</p>\r\n<p>+ Thời gian sử dụng : 12 tháng kể từ ngày sản xuất</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/ce50cc37ec2540f8a045f6c33231f3b4.png\" alt=\"/FileUploads/Commons/ce50cc37ec2540f8a045f6c33231f3b4.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<p><strong>Công dụng :</strong></p>\r\n<p>+  Nguồn cung cấp calo dồi dào</p>\r\n<p>+ Cung cấp một lượng lớn chất xơ cho cơ thể</p>\r\n<p>+ Cung cấp khoáng chất cho cơ thể </p>\r\n<p>+ Tăng cường cơ bắp, giảm đau cơ do vận động nặng</p>\r\n<p>+ Tốt cho hệ thần kinh và hệ tim mạch</p>', 1, '18000', 'c5ee9356d1,png'),
(22, 'Bưởi Da Xanh', 23, 4, '<p><strong>- Nhà cung cấp : FreshFood Store</strong></p>\r\n<p><strong>-Xuất xứ: Việt Nam</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/76c0561198e64f26bf46a61ee032cc7f.png\" alt=\"/FileUploads/Commons/76c0561198e64f26bf46a61ee032cc7f.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p>Bưởi là loại trái cây mang lại nhiều lợi ích cho sức khỏe. Bưởi thường mọc thành chùm, được phát hiện lần đầu tiên ở Nam Mỹ. Bưởi có kích thước lớn và có hương thơm, đến nay tại Việt Nam bưởi là một món ăn được nhiều người yêu thích và lựa chọn bởi vì nó có rất nhiều tác dụng.Bưởi rất giàu vitamin C. Vitamic C có tác dụng thúc đẩy hệ miễn dịch và chữa khỏi các bệnh cảm cúm. Bạn hãy bỏ lớp bỏ dày bên ngoài, giữ lại lớp vỏ mỏng màu trắng bên trong vì lớp vỏ này chứa nhiều dưỡng chất.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/421feac31cf2495b843b004278523025.png\" alt=\"/FileUploads/Commons/421feac31cf2495b843b004278523025.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<p>Sau đây sẽ là những lợi ích ít người biết tới của quả bưởi.Nguồn vitamin C dồi dào có trong bưởi giúp bạn tăng cường hệ miễn dịch đồng thời giúp bạn có thể đề kháng được nhiều loại bệnh như cảm cún hay sốt. Vitamin C còn ngăn ngừa bệnh ung thư miệng và ung thư dạ dày, đột quỵ và đau tim.</p>', 1, '25000', 'cded723234,png'),
(23, 'Bắp Cải 1kg', 23, 4, '<p><strong>- Nhà cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>-Xuất xứ: </strong><strong>Việt Nam</strong></p>\r\n<p><strong> <img src=\"http://localhost:62699/FileUploads/Commons/0ac195ae97eb4994965c414a942517aa.png\" alt=\"/FileUploads/Commons/0ac195ae97eb4994965c414a942517aa.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p><strong>- Giới thiệu sản phẩm :</strong></p>\r\n<p>Bắp cải trái tim là một giống rau mới được trồng nhiều tại Đà Lạt. Bắp cải trái tim có kích cỡ nhỏ hơn so với bắp cải thông thường, khi cắt làm đôi có dạng hình trái tim rất đẹp mắt và dễ bảo quản.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/9d6a791e9fbb4ae2b1b01e6d62c181e9.png\" alt=\"/FileUploads/Commons/9d6a791e9fbb4ae2b1b01e6d62c181e9.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<p><strong>-  Công dụng :</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/8b6c6a932ddb49e9a67fdb14ef87b054.png\" alt=\"/FileUploads/Commons/8b6c6a932ddb49e9a67fdb14ef87b054.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p><em>Kháng viêm, hỗ trợ tiêu hóa.</em></p>\r\n<p><em>Điều trị loét dạ dày</em></p>\r\n<p><em>Duy trì sức khỏe xương khớp.</em></p>\r\n<p><em>Giảm nguy cơ mắc bệnh tim mạch.</em></p>\r\n<p><em>Hỗ trợ giảm cân.</em></p>\r\n<p><em>Cải thiện thị lực.</em></p>\r\n<p><em>Bảo vệ tế bào thần kinh, điều trị bệnh Alzheimer.</em></p>\r\n<p><em>Làm đẹp da và điều trị các bệnh rối loạn về da.</em></p>', 1, '28000', '34a8697f54,png'),
(24, 'Dưa Hấu', 23, 4, '<p><strong>- Nhà cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>-Xuất xứ: </strong><strong>Việt Nam</strong></p>\r\n<p><strong>Lợi ích của dưa hấu đối với sức khỏe</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/89261b205ea74365b7a60800e2052d84.png\" alt=\"/FileUploads/Commons/89261b205ea74365b7a60800e2052d84.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p>Cung cấp nước cho cơ thể</p>\r\n<p>Nước là thành phần chiếm tới 95% quả dưa hấu. Chính vì vậy, bổ sung dưa hấu sẽ giúp giữ nước cho cơ thể và duy trì nồng độ điện giải.</p>\r\n<p>Ăn dưa hấu thường xuyên có thể giảm các triệu chứng mất nước sau khi vận động mạnh, luyện tập thể thao như chuột rút, mệt mỏi, choáng…</p>\r\n<p>Chống oxy hóa và bảo vệ cơ thể</p>\r\n<p>Dưa hấu có chứa rất nhiều chất chống oxy hóa, có khả năng ngăn ngừa mức độ ảnh hưởng của gốc tự do, làm chậm quá trình thoái hóa và bảo vệ các cơ quan trong cơ thể.</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/411d1e08b17947a68606a56aa7116ddc.png\" alt=\"/FileUploads/Commons/411d1e08b17947a68606a56aa7116ddc.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<p>Có thể kể đến một số chất chống oxy hóa có trong dưa hấu, như:</p>\r\n<p>– Vitamin C: Giúp tăng cường miễn dịch và ngăn ngừa tổn thương tế bào do gốc tự do gây ra.</p>\r\n<p>– Lycopene: Giúp bảo vệ tế bào võng mạc và thần kinh khỏi tác động của gốc tự do.</p>\r\n<p>– Carotenoit: Là hợp chất thực vật bao gồm beta-carotene và alpha-carotene, khi được dung nạp vào cơ thể sẽ chuyển đổi thành vitamin A.</p>\r\n<p>– Cucurbitacin E: Có tác dụng kiểm soát phản ứng viêm trong cơ thể.</p>', 1, '32000', 'f36b6652ea,png'),
(25, 'Dâu Tây 1kg', 23, 4, '<p><strong>- Nhà cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>-Xuất xứ: </strong><strong>Việt Nam</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/b961766e9d1d42dfa6fe3ff82d77c4e4.png\" alt=\"/FileUploads/Commons/b961766e9d1d42dfa6fe3ff82d77c4e4.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/1b470e32fd29467bb78d12466a69c86f.png\" alt=\"/FileUploads/Commons/1b470e32fd29467bb78d12466a69c86f.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p>Dâu tây giàu canxi. Đây là một chất rất cần thiết cho sự phát triển của trẻ em cũng như giúp cho hoạt động của tim được khỏe mạnh hơn. Ngoài ra, canxi còn giúp tham gia vào quá trình tạo cơ bắp để bé phát triển vận động tốt.Bên cạnh đó, hàm lượng photpho trong quả dâu tây lại có tác dụng cải thiện hệ tiêu hóa, giúp sửa chữa các tế bào, phá vỡ protein và chịu trách nhiệm điều chỉnh các phản ứng hóa học xảy ra trong cơ thể bé.</p>', 1, '60000', '64132f15f4,png'),
(26, 'Hồng Sấy Dẻo Hộp 450gr', 23, 4, '<p><strong>Nơi cung cấp</strong> <strong>: FreshFood Store.</strong></p>\r\n<p><strong>Xuất xứ: Hàn Quốc.</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/b4a9d1dbe4fa47309ec49bc8acf0fab2.png\" alt=\"/FileUploads/Commons/b4a9d1dbe4fa47309ec49bc8acf0fab2.png\" width=\"429\" height=\"323\" hspace=\"5px\" /></strong></p>\r\n<p><strong>Quy trình sản xuất hồng sấy khô :</strong></p>\r\n<p>+ chọn hồng giòn đã chín, còn độ giòn ngọt để giúp định hình trái hồng khô được tốt hơn thay vì hồng mềm sẽ dễ bị vỡ khi phơi.</p>\r\n<p>+ Rửa sạch hồng rồi để ráo sau đó gọt nhẹ nhàng tránh làm trái hồng bị dập rồi gọt vỏ hồng .</p>\r\n<p>+ Cột dây vào cuống hồng và nhúng qua nước pha rượu</p>\r\n<p>+ Phơi hồng (sau khoảng 7 – 10 ngày) quả hơi quắt lại thì đeo bao tay và xoa bóp nhẹ nhàng</p>\r\n<p>+ Sau khoảng 5 – 7 tuần, khi hồng khô cứng lại không thể xoa bóp thêm được nữa là đã ổn.</p>\r\n<p>+ Thời hạn sử dụng : 12 tháng kể từ ngày sản xuất</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/426f6b3b1b7645189e15fa69ffad865c.png\" alt=\"/FileUploads/Commons/426f6b3b1b7645189e15fa69ffad865c.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<p> </p>\r\n<p><strong>Công dụng : </strong></p>\r\n<p>+ Chống viêm</p>\r\n<p>+ Tăng cường hệ tiêu hóa</p>\r\n<p>+ Ngăn ngừa các bệnh tim mạch</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/6f3a9529d6bb40d988a283a232da183b.png\" alt=\"/FileUploads/Commons/6f3a9529d6bb40d988a283a232da183b.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<p>+ Trị thiếu máu</p>\r\n<p>+ Cải thiện thị lực</p>\r\n<p>+ Có tác dụng lợi tiểu</p>\r\n<p>+ Chống lão hóa</p>', 1, '435000', '24cef25807,png'),
(27, 'Sữa Bò Vị Chuối 2ml', 24, 4, '<p><strong>- Nhà cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>- </strong><strong>Xuất xứ: Anh</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/23aa4854782a49c89263e559f0416535.png\" alt=\"/FileUploads/Commons/23aa4854782a49c89263e559f0416535.png\" width=\"335\" height=\"335\" hspace=\"5px\" /></strong></p>\r\n<p><strong>Thành phần:</strong></p>\r\n<p>Sữa bò tươi tách kem 95,3%, đường, tinh bột gạo, hương chuối, carrageenan.</p>\r\n<p>Sữa bò hữu cơ Daioni tách kem có hàm lượng chất béo và đường thấp, chỉ chứa màu sắc và hương vị tự nhiên, không có chất phụ gia hoặc chất bảo quản nhân tạo. Nó hoàn toàn tuân thủ các hướng dẫn dinh dưỡng được giới thiệu cho các trường học ở Vương quốc Anh với ít hơn 5% đường và là thức uống sữa hữu cơ duy nhất thuộc loại này trên thị trường trong nước.</p>\r\n<p>Nó đã giành được nhiều giải thưởng bao gồm Giải thưởng Hương vị Tuyệt vời, Giải thưởng Thực phẩm và Đồ uống Xuất sắc Quốc gia và lọt vào vòng chung kết trong giải thưởng BOOM yêu thích của Quốc gia năm 2016 tại Vương quốc Anh.Cách dùng: dùng trực tiếp</p>\r\n<p><img src=\"http://localhost:62699/FileUploads/Commons/a5e7a394368b4ce28e388c98f458e37f.png\" alt=\"/FileUploads/Commons/a5e7a394368b4ce28e388c98f458e37f.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></p>\r\n<p><strong>Bảo quản:</strong> trong ngăn mát tủ lạnh và dùng hết trong 3 ngày</p>', 1, '38000', 'f82bf1f9ae,png'),
(28, 'Nước Ép Thơm 1L', 24, 4, '<p><strong>- Nhà cung cấp : </strong><strong>FreshFood Store</strong></p>\r\n<p><strong>-</strong><strong>Xuất xứ: Việt Nam</strong></p>\r\n<p><strong>- Giới thiệu sản phẩm nước ép :</strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/3fd3fe5d5949433b8033c72621dab170.png\" alt=\"/FileUploads/Commons/3fd3fe5d5949433b8033c72621dab170.png\" width=\"233\" height=\"332\" hspace=\"5px\" /></strong></p>\r\n<p>Nước ép thơm nguyên chất (còn gọi là nước ép quả dứa) được biết đến như một loại nước trái cây giàu chất dinh dưỡng và rất tốt cho sức khỏe. Chỉ cần uống 1 ly nước ép thơm nguyên chất mỗi ngày bạn sẽ có thể cảm nhận được những tác động tích cực của nó. Và thơm còn giúp bạn giảm cân, đẹp da nhờ vào các vitamin dồi dào trong đó.<strong> </strong></p>\r\n<p><strong>-  Thành phần  : </strong></p>\r\n<p>+ Những trái thơm được lựa chọn kĩ lưỡng </p>\r\n<p>+ Trái to </p>\r\n<p>+ Thêm phần đường tự nhiên tạo độ ngọt cho nước ép</p>\r\n<p>+ khi chế biến cần qua các quá trình sơ chế để đảm bảo an toàn và vị ngọt nguyên tự nhiên.</p>\r\n<p>+ Hạn sử dụng 12 tháng</p>\r\n<p><strong>- Công dụng  : </strong></p>\r\n<p><strong><img src=\"http://localhost:62699/FileUploads/Commons/a5935c540dbb4b5190cfac0f8c4e1c5e.png\" alt=\"/FileUploads/Commons/a5935c540dbb4b5190cfac0f8c4e1c5e.png\" width=\"333\" height=\"333\" hspace=\"5px\" /></strong></p>\r\n<p>+ Giúp chắc khỏe xương</p>\r\n<p>+ Cho bạn đôi mắt khỏe đẹp</p>\r\n<p>+ Giảm triệu chứng viêm khớp</p>\r\n<p>+ Tốt cho răng miệng</p>\r\n<p>+ Tốt cho tim mạch</p>\r\n<p>+ Tốt cho tiêu hóa</p>\r\n<p>+ Làn da trẻ đẹp</p>\r\n<p>+ Hỗ trợ hệ thống miễn dịch</p>\r\n<p>+ Hỗ trợ giảm cân hiệu quả</p>\r\n<p>+ Làm sạch ruột</p>\r\n<p>+ Điều chỉnh tuyến giáp</p>\r\n<p>+ Cân bằng điện giải</p>\r\n<p>+ Hỗ trợ rối loạn kinh nguyệt</p>', 1, '60000', '155072a2e5,png'),
(29, 'Sản phẩm 1', 24, 4, '<p>BCC</p>', 1, '20000', '8f79f414f3,png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
