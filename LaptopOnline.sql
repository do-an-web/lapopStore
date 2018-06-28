/*
Navicat MySQL Data Transfer

Source Server         : abc
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : laptoponline

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-06-27 00:16:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `CatID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CatName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CatID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Asus');
INSERT INTO `categories` VALUES ('2', 'HP');
INSERT INTO `categories` VALUES ('3', 'Dell');
INSERT INTO `categories` VALUES ('4', 'Acer');
INSERT INTO `categories` VALUES ('5', 'Macbook');
INSERT INTO `categories` VALUES ('6', 'Lenovo');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` int(11) NOT NULL,
  `ProID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES ('1', '1', '1', '1', '7290000', '7290000');
INSERT INTO `orderdetails` VALUES ('2', '1', '2', '1', '6370000', '6370000');
INSERT INTO `orderdetails` VALUES ('3', '2', '3', '1', '5799000', '5799000');
INSERT INTO `orderdetails` VALUES ('4', '3', '12', '1', '1149000', '1149000');
INSERT INTO `orderdetails` VALUES ('5', '3', '11', '1', '1219000', '1219000');
INSERT INTO `orderdetails` VALUES ('6', '3', '20', '1', '6790000', '6790000');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `OrderID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OrderDate` datetime NOT NULL,
  `UserID` int(11) NOT NULL,
  `Total` bigint(20) NOT NULL,
  `Status` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`OrderID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '2018-06-13 00:05:08', '1', '13660000', 'Processing');
INSERT INTO `orders` VALUES ('2', '2018-06-15 00:06:40', '1', '5799000', 'Delivering');
INSERT INTO `orders` VALUES ('3', '2018-05-29 00:07:27', '1', '9158000', 'Done');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `ProID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ProName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Factory` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Overview` text COLLATE utf8_unicode_ci NOT NULL,
  `Detail` text COLLATE utf8_unicode_ci NOT NULL,
  `CatID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Views` int(11) NOT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Selled` int(11) NOT NULL,
  PRIMARY KEY (`ProID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Asus X541NA-GO012T/Pentium N4200', 'Asus', 'Asus X541NA-GO012T – thuộc một trong các dòng laptop cơ bản của Asus, sở hữu một mức giá rẻ, kèm cấu hình tốt trong tầm giá, đây thực sự là một sự lựa chọn thích hợp cho các bạn học sinh và nhân viên văn phòng khi muốn sở hữu cho mình một chiếc laptop với các nhu cầu cơ bản.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '7290000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('2', 'HP 15-bs644TU/Celeron-N3060', 'HP', 'Do được thừa hưởng nhiều ưu điểm của dòng sản phẩm HP 15, chiếc HP 15-bs644TU/Celeron-N3060 có thiết kế tuyệt đẹp, sang trọng và màn hình hiển thị hình ảnh cực nét. Bên cạnh đó, một lý do nữa khiến bạn không thể bỏ qua thiết bị này chính là cấu hình vô cùng mạnh mẽ, phục vụ cho nhu cầu xử lý các công việc văn phòng hay giải trí sau những giờ làm việc căng thẳng.', '<LI>CPU: Intel Celeron N3060 </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel® HD Graphics 400, Tích hợp</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 4-cell</LI>', '2', '6370000', '45', '0', 'null', '0');
INSERT INTO `products` VALUES ('3', 'Acer AS A315-31-C8GB', 'Acer', 'Acer AS A315-31-C8GB – thuộc một trong các dòng laptop cơ bản của Acer, sở hữu một mức giá rẻ, kèm cấu hình tốt trong tầm giá, đây thực sự là một sự lựa chọn thích hợp cho các bạn học sinh và nhân viên văn phòng khi muốn sở hữu cho mình một chiếc laptop với các nhu cầu cơ bản.', '<LI>CPU: 	Celeron, Pentium N3350 Processor (2 x 1.10 GHz), Burst Frequency: 2.40 GHz </LI>\r\n    <LI>RAM: 8G, DDR3L</LI>\r\n    <LI>Hard Driver: SATA3, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Linux</LI>\r\n    <LI>Weight: 2.5kg</LI>\r\n    <LI>Pin: 2 Cell ( 7.7V-37Wh,4810mAh)</LI>', '4', '5799000', '97', '0', 'null', '0');
INSERT INTO `products` VALUES ('4', 'Asus Vivobook S14 S410UA-EB003T', 'Asus', 'Là thành viên tiếp theo trong dòng series Vivobook của Asus - Asus Vivobook S14 S410UA sở hữu cấu hình siêu mạnh cùng thiết kế gọn nhẹ và nhiều tính năng vượt trội. Đây sẽ là sự lựa chọn hoàn hảo nếu bạn đang có mong muốn sở hữu một chiếc laptop đáp ứng đầy đủ các nhu cầu làm việc cũng như giải trí.', '<LI>CPU: Intel, Core i5 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 1TB</LI>\r\n    <LI>Graphic Card: Intel HD Graphics</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.42kg</LI>\r\n    <LI>Pin: 3-cell Li-ion</LI>', '1', '15990000', '82', '0', 'null', '0');
INSERT INTO `products` VALUES ('5', 'Lenovo ThinkPad E570', 'Lenovo', 'Tiếp nối thành công từ dòng sản phẩm ThinkPad truyền thống, Lenovo tiếp tục tung ra thị trường laptop ThinkPad E570 với nhiều cải tiến đáng kể. Sản phẩm có thiết kế mạnh mẽ, trọng lượng đủ nhẹ để di chuyển cùng với một cấu hình mạnh mẽ, thời lượng pin dài và nhiều tính năng cao cấp, thuận tiện cho người dùng trong cả công việc và giải trí.', '<LI>CPU: Intel, Core i5 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: NVIDIA Geforce 940M (2G)</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.3kg</LI>\r\n    <LI>Pin: 4-cell</LI>', '6', '16190000', '80', '0', 'null', '0');
INSERT INTO `products` VALUES ('6', 'Macbook Air 13 128GB MQD32SA/A', 'Apple', 'Macbook Air 13 128 GB MQD32SA/A (2017) với thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ, hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình.', '<LI>CPU: Intel, Core i5 </LI>\r\n    <LI>RAM: 8GB, LPDDR3</LI>\r\n    <LI>Hard Driver: SSD, 128GB</LI>\r\n    <LI>Graphic Card: Intel HD Graphics 6000</LI>\r\n    <LI>Operating System: Mac Os</LI>\r\n    <LI>Weight: 1.35kg</LI>\r\n    <LI>Pin: Lithium-polymer</LI>', '5', '23999000', '30', '0', 'null', '0');
INSERT INTO `products` VALUES ('7', 'Acer A315-51-37B9/Core i3-7100U ', 'Acer', 'Bạn muốn tìm muộn chiếc laptop đủ mạnh cho nhu cầu công việc, học tập và giải trí với mức giá “sinh viên” thì chắc chắn bạn không thể bỏ qua Acer A315 với cấu hình core i3-7100U, 2.4GHz cùng màn hình lớn 15.6 inch sẽ mang đến cho bạn những trải nghiệm vượt ngoài mong đợi.', '<LI>CPU: Intel, Core i3 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel HD Graphics, Card on</LI>\r\n    <LI>Operating System: DOS</LI>\r\n    <LI>Weight: 2.1kg</LI>\r\n    <LI>Pin: Li-ion 2-cell</LI>', '4', '8999000', '56', '0', 'null', '0');
INSERT INTO `products` VALUES ('8', 'Asus X441UA-WX027 ', 'Asus', 'Các dòng sản phẩm máy tính xách tay thường xuyên được thương hiệu Asus cải tiến và hoàn thiện từ thiết kế bên ngoài đến hiệu suất hoạt động bên trong. Chính vì thế, laptop Asus ngày càng được người tiêu dùng Việt đón nhận và ưa chuộng. Đặc biệt là Asus X441UA WX027 mới được nhà sản xuất ra mắt gần đây, hứa hẹn trở thành thiết bị hỗ trợ tối đa cho nhu cầu học tập, làm việc và giải trí của người dùng.', '<LI>CPU: Intel, Core i3 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 1TB</LI>\r\n    <LI>Graphic Card: Intel HD Graphics, Card on</LI>\r\n    <LI>Operating System: Free DOS</LI>\r\n    <LI>Weight: 2.09kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '9490000', '23', '0', 'null', '0');
INSERT INTO `products` VALUES ('9', 'Acer A315-51-3932/Core i3-6006U', 'Acer', 'Nằm trong phân khúc laptop giá rẻ nhưng có vẻ ngoài cứng cáp cùng một cấu hình hoạt động ổn định, Laptop Acer A315-51-3932/Core i3-6006U là sự lựa chọn lý tưởng cho người dùng văn phòng và sinh viên có nhu cầu sử dụng phổ thông. ', '<LI>CPU: Intel, Core i3 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 1TB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Linux</LI>\r\n    <LI>Weight: 1.89kg</LI>\r\n    <LI>Pin: 2-cell</LI>', '4', '8790000', '70', '0', 'null', '0');
INSERT INTO `products` VALUES ('10', 'HP 15-bs555TU/Core i3-6006U', 'HP', 'HP 15-bs555TU - thuộc một trong các dòng laptop phổ thông của HP, sở hữu mức giá dưới 10 triệu, với cấu hình tốt trong tầm giá, đây là một sự lựa chọn thích hợp cho các bạn học sinh và nhân viên văn phòng khi muốn sở hữu cho mình một chiếc laptop hoạt động mạnh mẽ với mức giá vừa phải.', '<LI>CPU: Intel, Core i3 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics 520, Card on</LI>\r\n    <LI>Operating System: DOS</LI>\r\n    <LI>Weight: 1.9kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '9490000', '67', '0', 'null', '0');
INSERT INTO `products` VALUES ('11', 'HP Pavilion 14-bf014TU', 'HP', 'HP Pavilion 14-bf014TU vốn thuộc phân khúc khách hàng trung cấp nhưng  Pavilion 14 đã cho người dùng thấy mức độ đầu tư kỹ lưỡng mà HP dành cho sản phẩm này về ngoại hình và các thông số kỹ thuật khá tốt từ bộ xử lý Core i3 Kaby Lake, HP Pavilion 14 đáp ứng dễ dàng mọi nhu cầu sử dụng và giải trí cơ bản.', '<LI>CPU: Intel, Core i3 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 1TB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: DOS</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '1219000', '59', '0', 'null', '0');
INSERT INTO `products` VALUES ('12', 'Lenovo Yoga 520-14IKB i3-7130U', 'Lenovo', 'Máy tính xách tay Lenovo IdeaPad Yoga 520 là mẫu máy tính thuộc dòng phân khúc mỏng nhẹ của Lenovo. Máy có thiết kế hiện đại cùng một cấu hình thế hệ mới và với giá thành khá hợp lý, phù hợp với nhu cầu giải trí hay làm việc.', '<LI>CPU: Intel, Core i3 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 1TB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1,78kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '6', '1149000', '75', '0', 'null', '0');
INSERT INTO `products` VALUES ('13', 'Acer Aspire E5-575G-39QW', 'Acer', 'Acer Aspire E5-575G-39QW sở hữu một thiết kế khá hiện đại, màn hình 15. Inch Full HD, hiệu năng mạnh mẽ, ấn tượng với bộ vi xử lý thế hệ thứ 7 của Intel, cùng với giá thành hấp dẫn, sản phẩm là sự lựa chọn hợp lý dành cho các bạn sinh viên, học sinh.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.6kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '4', '10690000', '43', '0', 'null', '0');
INSERT INTO `products` VALUES ('14', 'Lenovo Yoga 310-11IAP', 'Lenovo', 'Lenovo Yoga 310 sở hữu màn hình chỉ 11 inch cảm ứng, xoay 360 độ cùng trọng lượng siêu nhẹ linh động tối đa, phù hợp nhu cầu văn phòng cần sự tiện lợi.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.3kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '6', '7990000', '33', '0', 'null', '0');
INSERT INTO `products` VALUES ('15', 'Asus Vivobook S14 S410UA-EB633T', 'Asus', 'Asus Vivobook S14 S410UA-EB633T có khung nhôm bắt mắt, với độ mỏng là 19.2 mm và trọng lượng tổng thể là 1.6 kg. Điểm \"tùy cơ ứng biến\" ở đây là để nói đến sự tiện lợi mà khả năng gập xoay 360 độ của máy mang lại. Máy có thiết kế phù hợp với tất cả đa số người dùng ở nhiều nhu cầu khác nhau.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 1TB</LI>\r\n    <LI>Graphic Card: 	Intel® UHD Graphics 620, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.3kg</LI>\r\n    <LI>Pin: 4-cell</LI>', '1', '12990000', '53', '0', 'null', '0');
INSERT INTO `products` VALUES ('16', 'Acer Nitro 5 AN515-51-79WJ', 'Acer', 'Mặc dù dòng sản phẩm gaming laptop của Acer vào Việt Nam chậm hơn các thương hiệu lớn chuyên game khác, nhưng Acer đã nhanh chóng có được chỗ đứng trên thị trường nhờ chiến lược sản phẩm rõ ràng. Hướng đi của Acer là tạo ra những chiếc laptop chơi game hiệu năng cao, giá thành phải chăng và có chất lượng hoàn thiện tốt, dễ chiếm được cảm tình của game thủ. Một trong số những sản phẩm nổi bật của Acer thời điểm này là chiếc laptop chơi game tầm trung Acer Nitro 5 AN515-51-79WJ, lựa chọn hàng đầu cho game thủ có túi tiền hạn hẹp.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 8G, DDR4</LI>\r\n    <LI>Hard Driver: 	SSD + HDD, 128 GB + 1 TB</LI>\r\n    <LI>Graphic Card: NVIDIA GeForce GTX 1050Ti</LI>\r\n    <LI>Operating System: Linux</LI>\r\n    <LI>Weight: 2.42kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '4', '24990000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('17', 'HP 15-bs637TX', 'HP', 'HP 15-bs637TX thiết kế đơn giản, bắt mắt giá thành hết sức hợp lý, vừa túi tiền của phần đông người dùng phù hợp với nhiều nhu cầu khác nhau hứa hẹn sẽ là một đối thủ nặng kí của những chiếc laptop phân khúc tầm trung.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: DOS</LI>\r\n    <LI>Weight: 1.86kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '9990000', '76', '0', 'null', '0');
INSERT INTO `products` VALUES ('18', 'Lenovo Ideapad 320-14ISK', 'Lenovo', 'Với thiết kế tính tế và đầy chắc chắn, hiệu năng ấn tượng trong tầm giá cùng thời lượng pin ấn tượng, có thể nói Lenovo IdeaPad 320-14ISK là một lựa chọn tuyệt vời nếu bạn đang tìm kiếm một chiếc laptop cấu hình tốt, giá mềm để phục vụ cho công việc lẫn nhu cầu giải trí.', '<LI>CPU: Intel, Core i5 </LI>\r\n    <LI>RAM: 8G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.9kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '6', '9690000', '82', '0', 'null', '0');
INSERT INTO `products` VALUES ('19', 'Asus TP410UA-EC250T', 'Asus', 'Asus TP410UA là một kiểu máy tính lai có thiết kế đẹp, thuộc phân khúc tầm trung dành cho học sinh, sinh viên hay nhân viên văn phòng. Đây sẽ là sự lựa chọn rất tuyệt vời cho người dùng cần nhiều thao tác tích hợp trong một thiết bị nhỏ gọn.', '<LI>CPU: Intel, Core i3 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.6kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '12690000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('20', 'HP 15-bs553TU', 'HP', 'Do được thừa hưởng nhiều ưu điểm của dòng sản phẩm HP 15, chiếc Laptop HP 15-bs553TU có thiết kế tuyệt đẹp, sang trọng và màn hình hiển thị hình ảnh cực nét. Bên cạnh đó, một lý do nữa khiến bạn không thể bỏ qua thiết bị này chính là cấu hình vô cùng mạnh mẽ, phục vụ cho nhu cầu xử lý các công việc văn phòng hay giải trí sau những giờ làm việc căng thẳng. Hơn thế nữa, sản phẩm này được thương hiệu HP trình làng với giá thành hết sức hợp lý, vừa túi tiền của phần đông người dùng.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.86kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '6790000', '57', '0', 'null', '0');
INSERT INTO `products` VALUES ('21', 'Dell Inspiron N3567', 'Dell', 'Dell Inspiron N3567/i5-7200U sở hữu một vẻ ngoài đơn giản và cứng cáp, cùng với độ bền cao là đặt trưng trong thiết kế của Dell. Máy được trang bị bộ vi xử lý thế hệ thứ 7 của Intel mang lại một hiệu năng mạnh mẽ, vượt trội, màn hình sắc nét cùng nhiều tính năng khác chắc chắn sẽ đem lại cho người dùng những trải nghiệm hoàn toàn mới.', '<LI>CPU: 	Intel, Core i5 </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: 	Ubuntu Linux 16.04</LI>\r\n    <LI>Weight: 2.3kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '3', '14290000', '60', '0', 'null', '0');
INSERT INTO `products` VALUES ('22', 'Dell V3468', 'Dell', 'Dell V3468 là một sản phẩm laptop thuộc phân khúc tầm trung của Dell. Sản phẩm sở hữu thiết kế đơn giản, chắc chắn, cấu hình mạnh mẽ, màn hình 14 inch nhỏ gọn và cùng nhiều tính năng khác. Dell V3468 là một sự lựa chọn hợp lý cho người dùng là nhân viên văn phòng, học sinh hay sinh viên.', '<LI>CPU: 	Intel, Core i3</LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel HD Graphics</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '3', '11190000', '87', '0', 'null', '0');
INSERT INTO `products` VALUES ('23', 'Asus S510UA-BQ308', 'Asus', 'Asus S510UA BQ308 – thuộc dòng Vivobook S15 của Asus với mức giá tầm trung, sở hữu một cấu hình mạnh mẽ với thiết kế hiện đại, cùng công nghệ Ice Cool làm mát hiệu quả. Nếu bạn đang có nhu cầu sở hữu một chiếc laptop với thiết kế tinh tế kèm cấu hình mạnh mẽ trong phân khúc tầm trung thì đây thực sự là một lựa chọn không thể bỏ qua.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '14790000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('24', 'Dell Inspiron N7570', 'Dell', 'Dell Inspiron N7570 với thiết kế sang trọng hướng đến người dùng cần sự gọn nhẹ, tính di động linh hoạt cả trong công việc lẫn học tập, bên trong được trang bị bộ vi xử lí Intel Core i5 cho người dùng trải nghiệm tuyệt vời cũng như đáp ứng các nhu cầu giải trí, chơi game có đồ họa cao một cách mượt mà trên nền Windows 10.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: 	SSD + HDD, 128GB + 1000GB</LI>\r\n    <LI>Graphic Card: NVIDIA GeForce 940MX</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.33kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '3', '21990000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('25', 'Asus Zephyrus M GM501GS-EI004T', 'Asus', 'Asus Zephyrus M GM501GS-EI004T có thiết kế tuyệt đẹp, sang trọng và màn hình hiển thị hình ảnh cực nét. Bên cạnh đó, một lý do nữa khiến bạn không thể bỏ qua thiết bị này chính là cấu hình vô cùng mạnh mẽ, phục vụ cho nhu cầu xử lý các công việc văn phòng hay giải trí sau những giờ làm việc căng thẳng.', '<LI>CPU: Intel, core i7 </LI>\r\n    <LI>RAM: 16G, DDR3L</LI>\r\n    <LI>Hard Driver: 	SSH8G + SSD PCIE G3 X2, 1TB 5400rpm + 512G PCIE G3X4</LI>\r\n    <LI>Graphic Card: NVIDIA Geforce GTX 1070</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '64990000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('26', 'Asus Vivobook A510UF-EJ182T', 'Asus', 'Với độ mỏng chỉ 18.8 mm và tổng trọng lượng chỉ 1.43 kg, thiết kế siêu mỏng nhẹ của Vivobook S14 S410UA giúp bạn làm việc hiệu quả, giải trí đỉnh cao ở mọi lúc mọi nơi. Vỏ ngoài bằng chất liệu nhôm bền bỉ, vẫn giữ phong cách sang trọng không kém phần tinh tế.', '<LI>CPU: Intel, Core i7 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 1TB</LI>\r\n    <LI>Graphic Card: 	NVIDIA GeForce MX130</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.66kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '7890000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('27', 'Lenovo Y520 15IKBN', 'Lenovo', 'Lenovo Y520 15IKBN i7 7700HQ là dòng máy laptop chuyên chơi game di động có thiết kế mỏng nhẹ cấu hình vượt trội như: Card rời NVIDIA GeForce GTX 1050, màn hình Full HD, ổ cứng HDD 1 TB và SSD 128 GB.', '<LI>CPU: Intel, Core i7 Kabylake </LI>\r\n    <LI>RAM: 8G, DDR4</LI>\r\n    <LI>Hard Driver: HDD+ SSD, 1000 GB + 128 GB</LI>\r\n    <LI>Graphic Card: NVIDIA GeForce GTX 1050, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.4kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '6', '2599000', '68', '0', 'null', '0');
INSERT INTO `products` VALUES ('28', 'HP Envy 13-ah0025TU', 'HP', 'HP Envy 13-ah0025TU có thiết kế đẹp và chắc chắn với kích thước toàn thân máy là 324 x 227.6 x 19.9 mm và trọng lượng 1.54 kg, khá mỏng nhẹ đối với một chiếc laptop 14 inch. Máy sử dụng khung kim loại cho cảm giác cầm máy trên tay tương đối mát mẻ và thoải mái.', '<LI>CPU: Intel, Core i5 </LI>\r\n    <LI>RAM: 	8GB, LPDDR3</LI>\r\n    <LI>Hard Driver: SSD, 128 GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.22kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '20990000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('29', 'Acer Nitro 5 AN515-51-5531/i5-7300HQ', 'Acer', 'Mặc dù dòng sản phẩm gaming laptop của Acer vào Việt Nam chậm hơn các thương hiệu lớn chuyên game khác, nhưng Acer đã nhanh chóng có được chỗ đứng trên thị trường nhờ chiến lược sản phẩm rõ ràng. Hướng đi của Acer là tạo ra những chiếc laptop chơi game hiệu năng cao, giá thành phải chăng và có chất lượng hoàn thiện tốt, dễ chiếm được cảm tình của game thủ. Một trong số những sản phẩm nổi bật của Acer thời điểm này là chiếc laptop chơi game tầm trung Acer Nitro 5 AN515-51-5531, lựa chọn hàng đầu cho game thủ có túi tiền hạn hẹp.', '<LI>CPU: Intel, Core i5 </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: NVIDIA GEFORCE 1050</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '4', '1990000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('30', 'Macbook Air 13 128GB MQD32SA/A', 'Apple', 'Macbook Air 13 128 GB MQD32SA/A (2017) với thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ, hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình.', '<LI>CPU: Intel, Core i5 </LI>\r\n    <LI>RAM: 8GB, LPDDR3</LI>\r\n    <LI>Hard Driver: SSD, 128 GB</LI>\r\n    <LI>Graphic Card: Intel HD Graphics 6000</LI>\r\n    <LI>Operating System: Mac OS</LI>\r\n    <LI>Weight: 1.35kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '5', '23999000', '79', '0', 'null', '0');
INSERT INTO `products` VALUES ('31', 'Macbook 12 256GB', 'Apple', 'MacBook 12 inch 256 GB 2017 với đường nét thiết kế không có thay đổi so với phiên bản 2016 nhưng Apple đã nâng cấp thêm bộ nhớ và giới thiệu bộ vi xử lý Intel thế hệ thứ 7 (Kaby Lake).', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 	8GB, LPDDR3L</LI>\r\n    <LI>Hard Driver: SSD, 256GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Mac OS</LI>\r\n    <LI>Weight: 0.92kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '5', '33999000', '56', '0', 'null', '0');
INSERT INTO `products` VALUES ('32', 'Macbook 12 512GB', 'Apple', 'MacBook 12 2017 với đường nét thiết kế không có thay đổi so với phiên bản 2016 nhưng Apple đã nâng cấp thêm bộ nhớ và giới thiệu bộ vi xử lý Intel thế hệ thứ 7 (Kaby Lake).', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: 	Intel HD Graphics 615</LI>\r\n    <LI>Operating System: Mac OS</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '5', '39999000', '59', '0', 'null', '0');
INSERT INTO `products` VALUES ('33', 'Macbook Pro 13 inch 128GB', 'Apple', 'Thế hệ MacBook Pro 13 inch 2017 ngoài việc cập nhật bộ vi xử lý Intel thế hệ thứ 7 (Kaby Lake) thì còn được nâng cấp gấp đôi dung lượng bộ nhớ. Ngoài ra thiết kế cũng như một số tính năng nổi bật vẫn không có thay đổi so với dòng MacBook 2016.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 8GB, LPDDR3L</LI>\r\n    <LI>Hard Driver: SSD, 256GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Mac OS</LI>\r\n    <LI>Weight: 0.92kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '5', '25890000', '88', '0', 'null', '0');
INSERT INTO `products` VALUES ('34', 'Macbook Pro 13 inch 256GB', 'Apple', 'Thế hệ MacBook Pro 13 inch 2017 ngoài việc cập nhật bộ vi xử lý Intel thế hệ thứ 7 (Kaby Lake) thì còn được nâng cấp gấp đôi dung lượng bộ nhớ. Ngoài ra thiết kế cũng như một số tính năng nổi bật vẫn không có thay đổi so với dòng MacBook 2016.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 8GB, LPDDR3L</LI>\r\n    <LI>Hard Driver: SSD, 256GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Mac OS</LI>\r\n    <LI>Weight: 1.2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '5', '20990000', '45', '0', 'null', '0');
INSERT INTO `products` VALUES ('35', 'Macbook Pro 15 inch Touch Bar 256GB', 'Apple', 'MacBook Pro 15 inch Touch Bar 256GB (2017) ra mắt với nhiều cải thiện về hiệu suất cũng như cấu hình: nhanh hơn, mạnh mẽ hơn với sự xuất hiện của thanh Touch Bar – công cụ \"thần thánh\" đánh dấu bước tiến mới của dòng sản phẩm cao cấp này.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 8GB, LPDDR3L</LI>\r\n    <LI>Hard Driver: SSD, 256GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Mac OS</LI>\r\n    <LI>Weight: 0.85kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '5', '59090000', '98', '0', 'null', '0');
INSERT INTO `products` VALUES ('36', 'Macbook Air 13 256GB MQD42SA/A', 'Apple', 'MacBook Air 13 256 GB MQD42SA/A (2017) với thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ, hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 8GB, LPDDR3L</LI>\r\n    <LI>Hard Driver: SSD, 256GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Mac OS</LI>\r\n    <LI>Weight: 0.9kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '5', '19999000', '33', '0', 'null', '0');
INSERT INTO `products` VALUES ('37', 'Macbook Pro 15 inch Touch Bar 512GB', 'Apple', 'Macbook Pro 15 inch Touch Bar 512GB (2017) – được Apple cho ra mắt tại WWDC 2017 với thiết kế mỏng, nhẹ, có dải màn hình OLED hiển thị nút bấm, đặc biệt ở phần cứng được nâng cấp mạnh hơn so với các phiên bản trước. Đây thực sự là một chiếc laptop có thể làm hài lòng các tín đồ công nghệ ở phân khúc cao cấp, về cấu hình, công nghệ và cả thiết kế.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 8GB, LPDDR3L</LI>\r\n    <LI>Hard Driver: SSD, 256GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Mac OS</LI>\r\n    <LI>Weight: 0.97kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '5', '69999000', '65', '0', 'null', '0');
INSERT INTO `products` VALUES ('38', 'Acer A315-51-398W', 'Acer', 'Sở hữu một mức giá rẻ, kèm cấu hình tốt trong tầm giá, đây thực sự là một sự lựa chọn thích hợp cho các bạn học sinh và nhân viên văn phòng khi muốn sở hữu cho mình một chiếc laptop với các nhu cầu cơ bản.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.1kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '4', '7299000', '23', '0', 'null', '0');
INSERT INTO `products` VALUES ('39', 'HP Pavilion 15-cc157TX', 'HP', 'HP Pavilion 15 được trang bị 3 Cell pin cho thời gian sử dụng của máy chỉ đạt mức trung bình khá, bạn có thể sử dụng máy xuyên suốt cường độ cao hơn 2 giờ đồng hồ.  Lợi thế về cấu hình và thiết kế nhỏ gọn phần nào sẽ giúp HP Pavilion 15 dễ lọt vào tầm ngắm của khách hàng đang tìm kiếm một chiếc laptop vừa dùng cho công việc lẫn giải trí.', '<LI>CPU: Intel, Core i5 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.16kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '15590000', '47', '0', 'null', '0');
INSERT INTO `products` VALUES ('40', 'Acer Aspire E7-566G-39QW', 'Acer', 'Thiết kế khá hiện đại và tinh tế. Màn hình 15.6 inch với độ phân giải Full HD. Hiệu năng mạnh mẽ, ấn tượng với bộ vi xử lý thế hệ thứ 7 của Intel', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: 	NVIDIA GEFORCE 940MX</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.9kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '4', '12290000', '66', '0', 'null', '0');
INSERT INTO `products` VALUES ('41', 'HP Envy 13-ah0027TU', 'HP', 'Màn hình gương 13,3 inch với công nghệ FHD IPS BrightView micro-edge WLED-backlit cho khả năng hiển thị tốt', '<LI>CPU: Intel, Core i7 </LI>\r\n    <LI>RAM:	8GB, LPDDR3</LI>\r\n    <LI>Hard Driver: SSD, 256 GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '26790000', '90', '0', 'null', '0');
INSERT INTO `products` VALUES ('42', 'Asus Vivobook X407MA-BV043T', 'Asus', 'Laptop Asus Vivobook X407MA-BV043T mặc dù mỏng nhẹ, nhưng hiệu năng lại cực kì mạnh mẽ. Chạy trên nền bộ vi xử lý Intel® Core™ i5 tối tân nhất, tốc độ CPU 1.6 GHz, RAM 4 GB DDR4. Ổ cứng lên đến 1 TB cho dung lượng lưu trữ lớn.', '<LI>CPU: Intel, Core i7 </LI>\r\n    <LI>RAM: 4G, DDR4</LI>\r\n    <LI>Hard Driver: HDD, 1TB</LI>\r\n    <LI>Graphic Card: 	NVIDIA GeForce MX130</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.66kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '12000000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('43', 'Asus X542UQ-GO242T', 'Asus', 'Sở hữu màn hình 14 inch có độ phân giải full HD, được phủ một lớp chống lóa và viền màn hình chỉ mỏng 7.8 mm tạo góc nhìn rộng nhưng vẫn đảm bảo màu sắc và độ tương phản thật sự sống động và đậm nét kể cả khi nhìn từ các góc hẹp.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '7280000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('44', 'Acer Predator Helios 300', 'Acer', 'Với Acer Predator Helios 300 việc giải trí, học tập và làm việc của bạn sẽ thú vị hơn với màn hình LED kích thước lớn 15.6 inches cộng thêm trang bị công nghệ HD LED-backlit cho chất lượng hình ảnh hiển thị sắc nét và tươi sáng để bạn nhìn rõ được cả những chi tiết nhỏ, bạn không phải lo ngại về tình trạng mỏi mắt hay bị chói khi làm việc dưới những điều kiện ánh sáng khác nhau.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '4', '22000000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('45', 'Asus UX430UA-GV261T ', 'Asus', 'Laptop đã được trang bị cổng kết nối USB 3.1 Kiểu C với thiết kế đồng đẳng có thể đảo chiều đem lại khả năng kết nốt dễ dàng với tốc độ truyền tải dữ liệu siêu nhanh gấp 10 lần so với USB 2.0 tiêu chuẩn. Khả năng tương tác với các thiết bị ngoại vi, màn hình, máy chiếu… lại vô cùng tiện lợi nhờ các cổng kết nối USB 3.1, HDMI và khe cắm thẻ SD.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '7290000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('46', 'Asus X541UA-GO1384', 'Asus', 'Trang bị bàn phím được thiết kế công thái học có hành trình phím 1.4 mm tiêu chuẩn, đem lại cảm giác thoải mái và không bị mỏi sau nhiều giờ làm việc và giải trí. Và hệ thống đèn nền hỗ trợ cho bàn phím sẽ giúp bạn làm việc tốt hơn trong môi trường có điều kiện ánh sáng thấp.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '1', '16990000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('47', 'Dell Vostro V5468A', 'Dell', 'Kế thừa thành công của phiên bản trước, Dell Vostro V5468A vẫn lớp vỏ được làm từ hợp kim nhôm nguyên khối nhưng máy được thiết kế mỏng hơn, nhẹ hơn và chắc chắn hơn, cùng tông màu sang trọng, bắt mắt hơn. Ngoài những nâng cấp về ngoại hình, Dell Vostro V5468A còn được nâng cấp nhiều hơn về phần cứng với việc sở hữu bộ vi xử lý mới nhất của Intel, hứa hẹn sẽ đem đến cho người dùng những trải nghiệm hoàn toàn mới.', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.7kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '3', '18190000', '56', '0', 'null', '0');
INSERT INTO `products` VALUES ('48', 'Dell XPS 15 9560', 'Dell', 'Dell XPS 15 9560 là thiết kế mới nhất trong dòng XPS chuyên về giải trí, kiểu dáng hiện đại, màn hình phân giải UHD cùng tính năng cảm ứng đa điểm đem đến trải nghiệm rất tuyệt vời. Phần vỏ của XPS 15 9560 được chế tạo từ kim loại nhưng vẫn đảm bảo máy có trọng lượng nhẹ, chắc chắn và chịu được va chạm rất tốt, mặt dưới được phủ lớp cao su có khả năng chống trượt và rung lắc.', '<LI>CPU: Intel, Core i7 </LI>\r\n    <LI>RAM: 16GB, DDR4</LI>\r\n    <LI>Hard Driver: 	SSD, 512GB</LI>\r\n    <LI>Graphic Card: NVIDIA GeForce GTX 1050</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2.06kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '3', '53990000', '42', '0', 'null', '0');
INSERT INTO `products` VALUES ('49', 'HP ENVY 13-ad075TU', 'HP', 'Tiếp nối truyền thống thành công của những chiếc đàn anh tiền nhiệm, HP tiếp tục giới thiệu chiếc HP ENVY 13-ad075TU thế hệ mới của dòng sản phẩm ENVY 13 với nhiều nâng cấp nhằm định hình thương hiệu như một khẳng định chất lượng Laptop sáng giá của hãng ở phân khúc cận cao', '<LI>CPU: Intel, Pentium </LI>\r\n    <LI>RAM: 4G, DDR3L</LI>\r\n    <LI>Hard Driver: HDD, 500GB</LI>\r\n    <LI>Graphic Card: Intel Graphics, Card on</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 2kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '19990000', '83', '0', 'null', '0');
INSERT INTO `products` VALUES ('50', 'HP Envy 13-ad140TU', 'HP', 'HP Envy 13 ad140TU là mẫu laptop thời trang sở hữu thiết kế kế sang trọng mỏng nhẹ cùng cấu hình tốt nhằm cân bằng hài hòa giữa công việc và nhu cầu giải trí của người dùng. ', '<LI>CPU: 	Intel, Core i7 </LI>\r\n    <LI>RAM: 8GB, LPDDR3</LI>\r\n    <LI>Hard Driver: 	SSD, 256GB</LI>\r\n    <LI>Graphic Card: 	Intel® UHD Graphics</LI>\r\n    <LI>Operating System: Window 10</LI>\r\n    <LI>Weight: 1.23kg</LI>\r\n    <LI>Pin: 3-cell</LI>', '2', '25990000', '83', '0', 'null', '0');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('qTkgaEWP4S28uDi04FX3xVNze9LsKZfd', '1530119007', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C2269734C6F67676564223A66616C73657D);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `f_ID` int(11) NOT NULL AUTO_INCREMENT,
  `f_Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `f_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_DOB` date NOT NULL,
  `f_Permission` int(11) NOT NULL,
  PRIMARY KEY (`f_ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'user1', '0a041b9462caa4a31bac3567e0b6e6fd9100787db2ab433d96f6d178cabfce90', 'abc', 'zhaoyun932@gmail.com', '1996-08-26', '0');
