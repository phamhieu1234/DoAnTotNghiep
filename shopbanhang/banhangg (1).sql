-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2023 lúc 06:00 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhangg`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `tennguoidung` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chude` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_lh` datetime DEFAULT NULL,
  `status_lh` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `tennguoidung`, `email`, `dienthoai`, `diachi`, `chude`, `noidung`, `time_lh`, `status_lh`) VALUES
(22, 'Hiếu Thành', 'stackskill0@gmail.com', '0365746456', 'thanhhieu123@gmail.com', 'dsfds', 'cxzcz', '2022-07-22 11:02:39', 0),
(23, 'văn A', 'hieuadmin@gmail.com', '0365746456', 'Hà nội', 'Lỗi hàng', 'doi hang', '2023-10-06 04:39:57', 1),
(24, 'hieu', 'stackskill10@gmail.com', '5345435345', 'hà nội', 'doi tra', 'doi camera', '2023-10-06 04:41:27', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(6, 'Chính sách bảo mật thông tin khách hàng', 'Bảo mật thông tin khách hàng', '<p>CHÍNH SÁCH BẢO MẬT THÔNG TIN KHÁCH HÀNG</p><p>Bạn hoàn toàn có thể yên tâm về các thông tin của mình trên TrungHieuComputer bởi chúng tôi ưu tiên hàng đầu trong việc bán hàng và cung cấp dịch vụ.</p><p>Bạn vui lòng đọc bản Chính sách bảo mật dưới đây để hiểu hơn những cam kết mà chúng tôi thực hiện, nhằm tôn trọng và bảo vệ quyền lợi của khách hàng.</p><p>1. THU THẬP THÔNG TIN CÁ NHÂN</p><p>Để truy cập và sử dụng dịch vụ tại TrungHieuComputer, bạn sẽ được yêu cầu đăng ký với chúng tôi thông tin cá nhân(Email, Họ tên,...) Mọi thông tin khai báo phải được đảm bảo chính xác và hợp pháp. THC không chịu trách nhiệm liên quan đến pháp luật của thông tin khai báo.</p><p>2. CAM KẾT BẢO VỆ CÁC THÔNG TIN RIÊNG TƯ</p><p>Thông tin của khách hàng thông qua hệ thống báo mật của website không sử dụng nó vì mục đích thương mại hay bất kỳ mục đích nào khác. Chúng tôi sử dụng các biện pháp an ninh bảo mật thông tin để chống mất mát, nhầm lẫn hoặc thay đổi dữ liệu trong hệ thống.</p><p>3. CAM KẾT CHỈ SỬ DỤNG THÔNG TIN ĐỂ NHẰM TẠO MÔI TRƯỜNG MUA SẮM AN TOÀN</p><p>Chúng tôi sử dụng những thông tin thu thập qua website để tạo môi trường mua sắm, an toàn, tiện lợi, chuyên nghiệp và nâng cao chất lượng dịch vụ chăm sóc khác hàng. Ngoài ra, những thông tin cũng chỉ được chúng tôi dùng trong việc giải quyết các vấn đề liên quan tới tranh chấp phát sinh trong quá trình mua sắm.</p><p>4. CAM KẾT KHÔNG CHIA SẺ BÁN HOẶC CHO THUÊ THÔNG TIN CÁ NHÂN CỦA KHÁCH HÀNG</p><p>Thông tin của quý khách gửi cho chúng tôi chỉ do nhân viên chúng tôi quản lý và sử dụng cho mục đích liên hệ</p><p>Chúng tôi sẽ gửi thông tin cá nhân về quý khách hàng&nbsp;</p><p>5. THÔNG TIN LIÊN HỆ</p><p>Chúng tôi luôn hoan nghênh các ý kiến đóng góp, liên hệ và phản hòi thông tin từ bạn về \"Chính sách bảo mật\" này. Nếu bạn có thắng mắc có liên quan xin vui lòng liên hệ địa chỉ Email: hieupham01082001@gmail.com</p><p class=\"MsoNormal\" style=\"margin: 13.55pt 0cm 0cm; line-height: 31.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p>', 17, 1, '1638858395_su-tro-lai-cua-ke-khong-lo-adidas-voi-giay-yeezy-350.2.jpg'),
(7, 'Chính sách vẩn chuyển', 'Chính sách giao hàng', '<p><font style=\"\" color=\"#ff0000\"><b style=\"background-color: rgb(255, 255, 255);\">1. LƯU Ý:</b></font></p><p>- Sau khi bạn đặt hàng, trong vòng 12h làm việc chúng tôi sẽ liên lạc để xác nhận và kiểm tra thông tin.</p><p>- Những rủ ro phát sinh trong quá trình vận chuyển( va đập, ẩm ướt, tai nạn,...) có thể ảnh hưởng tới hàng hóa, vì thế Xin Qúy khách vui lòng kiểm tra hàng hóa trước khi ký nhận. TrungHieuComputer sẽ không chịu trách nhiệm với những sai lệch hình thức của hàng hóa sau khi Qúy khách hàng đã nhận hàng.</p><p><b><font color=\"#ff0000\">2. BẢNG GIÁ DỊCH VỤ VẬN CHUYỂN HÀNG HÓA</font></b></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><b>Theo giá trị đơn hàng</b></td><td><b>Số km được miễn phí</b></td><td><b>Thời gian đáp ứng</b></td><td><b>Thu phí</b></td></tr><tr><td>Từ 200.000đ đến 500.000đ</td><td><br></td><td>Giao hàng trong vòng 2h</td><td>20.000đ/1 lần giao( trong vòng 15km)</td></tr><tr><td>Trên 500.000đ</td><td>20km</td><td>Giao hàng trong vòng 2h</td><td>Từ km thứ 16 thu phí 6.000đ/km(chở hnagf bằng ô tô thu phí 15.000đ/km)</td></tr><tr><td>Trên 50 triệu đồng</td><td>50km&nbsp;</td><td>Giao hàng trong vòng 24h</td><td>Từ km thứ 51 thu phí 10.000/km hoặc theo tư vấn các nhân khách hàng</td></tr></tbody></table><p><br></p>', 19, 1, '1638895220_bongda.jpg'),
(9, 'Chính sách bảo hành và  đổi trả hàng bảo hành', 'Nhằm hiểu rõ chính sách chế độ bảo hành và trả lại hàng bảo hành', '<div class=\"container\" style=\"margin-top: auto; margin-bottom: auto; width: 1200px; text-align: justify; position: relative;\"><div class=\"divtin\" style=\"\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; transition: all 0.5s ease 0s;\">I. BẢO HÀNH:<br>Bảo hành sản phẩm là: khắc phục những lỗi hỏng hóc, sự cố kỹ thuật xảy ra do lỗi của nhà sản xuất.<br><font face=\"arial, Helvetica, sans-serif\"><span style=\"letter-spacing: 0.1px;\"><b>1. Quy định chung về bảo hành :</b></span></font><br>- Sản phẩm được bảo hành miễn phí nếu sản phẩm đó còn thời hạn bảo hành được tính kể từ ngày giao hàng, sản phẩm được bảo hành trong thời hạn bảo hành ghi trên Sổ bảo hành, Tem bảo hành và theo quy định của từng hãng sản xuất liên quan đến tất cả các sự cố về mặt kỹ thuật.<br>- Có Phiếu bảo hành và Tem bảo hành của công ty hoặc nhà phân phối, hãng trên sản phẩm. Trường hợp sản phẩm không có số serial ghi trên Phiếu bảo hành thì phải có Tem bảo hành của Công ty An Phát (kể cả Tem bảo hành gốc).<br><font face=\"arial, Helvetica, sans-serif\"><span style=\"letter-spacing: 0.1px;\"><b>2. Những trường hợp không được bảo hành :</b></span></font></p><ul style=\"margin-right: 0px; margin-bottom: 11.5px; margin-left: 0px; padding: 0px; transition: all 0.5s ease 0s;\"><li style=\"list-style: none;\">Sản phẩm đã hết thời hạn bảo hành hoặc mất Phiếu bảo hành.</li><li style=\"list-style: none;\">Số mã vạch, số serial trên sản phẩm không xác định được hoặc sai so với Phiếu bảo hành.</li><li style=\"list-style: none;\">Các loại thiết bị như pin Cmos, cable, nắn dòng, công tắc nguồn, đèn tín hiệu, tai nghe theo thiết bị, điều khiển từ xa, quạt trên thiết bị hoặc thiết bị do quạt bị hỏng gây ra cháy nổ.</li><li style=\"list-style: none;\">Các dữ liệu, tài liệu, văn bản và phần mềm cung cấp miễn phí, lưu trữ kèm theo sản phẩm (kể cả trong thời gian gửi bảo hành).</li><li style=\"list-style: none;\">Tự ý tháo dỡ, sửa chữa bởi các cá nhân hoặc kỹ thuật viên không phải là nhân viên Công ty Minh Hạnh.</li><li style=\"list-style: none;\">Sản phẩm bị cháy nổ hay hỏng hóc do tác động cơ học, biến dạng, rơi, vỡ, va đập, bị xước, bị hỏng do ẩm ướt, hoen rỉ, chảy nước, động vật xâm nhập vào, thiên tai, hỏa hoạn, sử dụng sai điện áp quy định.</li><li style=\"list-style: none;\">Hư hỏng đối các trường hợp riêng như CPU cong hoặc gãy chân, ổ cứng nứt, vỡ IDE và sata, cháy nổ, rơi móp méo, mờ chữ trên lưng ổ, bong tem bạc, mạch hoen rỉ, oxy hóa.</li><li style=\"list-style: none;\">Phiếu bảo hành, Tem bảo hành bị rách, không còn Tem bảo hành, Tem bảo hành dán đè, hoặc Tem bảo hành bị sửa đổi (kể cả Tem bảo hành gốc).</li><li style=\"list-style: none;\">Bảo hành không bao gồm vận chuyển hàng và giao hàng.</li><li style=\"list-style: none;\">Một số trường hợp đặc biệt của từng nhà sản xuất như các loại máy in kim, in phun, in laser của các hãng Epson, HP, Canon, moden... không bảo hành: băng mực, hộp mực, lô sấy, đầu kim, adater... và không bảo hành khi có dấu hiệu côn trùng vào trong máy.</li><li style=\"list-style: none;\">Không sử dụng được do quên hoặc mất mật khẩu bảo mật.</li><li style=\"list-style: none;\">Trường hợp sản phẩm của quý khách dán tem bảo hành của công ty Minh Hạnh hay nhầm lẫn thông tin trên phiếu bảo hành. Trong trường hợp này bộ phận bảo hành sẽ đối chiếu với phiếu gốc lưu tai công ty. Hóa đơn phẩn mền của công ty hay thông tin&nbsp; của nhà phân phối, hãng, các khách hàng khác mua cùng sản phẩm cùng thời điểm, nếu có sự sai lệch thì sản phẩm của quý khách không được bảo hành (có thể tem bảo hành của công ty bị thất thoát và bị lợi dụng dán lên thiết bị hay nhầm lẫn nhỏ khi nhập, in ra). Mong quý khách thông cảm.</li></ul></div></div><div class=\"container\" style=\"margin-top: auto; margin-bottom: auto; width: 1200px; position: relative;\">Nếu quý khách chưa thấy hài lòng hoặc có thắc mắc khiếu nại gì về vấn đề bảo hành, xin quý khách vui lòng liên hệ với:<br>&nbsp;<br><font face=\"arial, Helvetica, sans-serif\"><span style=\"font-size: 12px; letter-spacing: 0.1px;\"><b>TRUNG TÂM DỊCH VỤ CHĂM SÓC KHÁCH HÀNG</b></span></font><br>Địa chỉ : Khu 5 Xuân Áng - Hạ Hòa - Phú Thọ<br>Hotline bộ phận bảo hành: 0975748201</div>', 20, 1, '1639060166_logos.png'),
(10, 'Chính sách hoàn trả', 'Tôi phải trả lại trong bao lâu? Tôi có cần phải trả phí vận chuyển không?\r\nLàm cách nào để tôi trả lại?\r\nTôi vẫn có thể trả lại các mặt hàng nếu chúng bị mòn, bị hỏng hoặc đã không mác?\r\nThông báo quan trọng:\r\nTôi sẽ nhận được tiền hoàn lại như thế nào？', '<div class=\"item-p\" style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">Chúng tôi hy vọng bạn thích những gì bạn đặt ! Tuy nhiên, trong trường hợp bạn không hài lòng 100%, chúng tôi đã thực hiện quy trình đổi trả rất đơn giản.</div><div class=\"paragraph\" style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"></div><div class=\"item-p\" style=\"margin: 10px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Tôi phải trả lại trong bao lâu? Tôi có cần phải trả phí vận chuyển không?</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">1. chúng tôi sẵn sàng chấp nhận trả lại trong vòng 15 ngày kể từ ngày nhận được cho hầu hết các mặt hàng trong tình trạng mới.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">2.Nếu bạn chọn dịch vụ lấy hàng qua Ninja Van, khoản phí 80000đ sẽ được trừ vào số tiền hoàn lại của bạn cho mỗi lần trả hàng. (Xem phần \"Làm cách nào để hoàn trả?\" Để biết chi tiết)</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">3.Nếu bạn chọn Tự gửi để trả lại bưu kiện của mình, bạn phải chịu phí vận chuyển trả lại.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Làm cách nào để tôi trả lại?</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">（1）Nếu bạn chọn Ninja Van để trả lại bưu kiện của mình:</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><img src=\"https://img.ltwebstatic.com/images3_acp/2021/01/25/1611558846fabefe08689a3c39d83f662701afc20d.png\" style=\"width: 100%;\"></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><div class=\"item-p\" style=\"margin: 0px; padding: 0px;\">1. Đăng nhập vào tài khoản SHEIN của bạn.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">2. Tìm đơn hàng trong&nbsp;<a href=\"https://www.shein.com.vn/user/orders/list\" target=\"_blank\" class=\"link-text\" style=\"color: rgb(9, 60, 100); cursor: pointer;\"><span class=\"colour\" style=\"color: rgb(0, 0, 0);\"><span class=\"colour\" style=\"font-weight: bolder;\">Đơn đặt hàng của tôi&nbsp;</span></span></a>, nhấp vào nút “Trả lại hàng”.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">3. Chọn (các) mặt hàng bạn muốn trả lại, nêu lý do và gửi.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">4. Xin vui lòng chuẩn bị các mặt hàng trả lại và đóng gói chúng cẩn thận. Viết số vận chuyển trả lại trên bưu kiện trả lại, sau đó đợi dịch vụ chuyển phát đến lấy bưu kiện.</div><div class=\"item-p\" style=\"margin: 20px 0px 0px; padding: 0px;\">（2）Nếu bạn chọn Tự gửi để trả lại bưu kiện của mình:</div><div class=\"item-p\" style=\"margin: 20px 0px 0px; padding: 0px;\"><img src=\"https://img.ltwebstatic.com/images3_acp/2021/01/25/161155886233b2807d6c32d9bc6e039fa65554a2ea.png\" style=\"width: 100%;\"></div><div class=\"item-p\" style=\"margin: 20px 0px 0px; padding: 0px;\"><div class=\"article-con-item-second\" style=\"margin: 0px 0px 40px; padding: 0px;\"><div class=\"item-p\" style=\"margin: 0px; padding: 0px;\">1.Đăng nhập vào tài khoản SHEIN của bạn.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">2.Tìm đơn đặt hàng trong&nbsp;<a href=\"https://www.shein.com.vn/user/orders/list\" target=\"_blank\" class=\"link-text\" style=\"color: rgb(9, 60, 100); cursor: pointer;\"><span class=\"colour\" style=\"color: rgb(0, 0, 0);\"><span class=\"colour\" style=\"font-weight: bolder;\">Đơn đặt hàng của tôi&nbsp;</span></span></a>, nhấp vào nút \"Trả hàng\".</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">3. Chọn (các) mặt hàng bạn muốn trả lại, nêu rõ lý do, sau đó gửi.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">4. chọn phương thức trả lại và phương thức hoàn lại tiền, sau đó vui lòng đóng gói (các) mặt hàng sẽ được trả lại với bao bì ban đầu.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">5. xin vui lòng chọn công ty hậu cần của riêng bạn với chi phí của bạn và gửi gói hàng.</div><div class=\"paragraph\" style=\"margin: 0px; padding: 0px;\"></div><div class=\"item-p\" style=\"margin: 20px 0px 0px; padding: 0px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Tôi vẫn có thể trả lại các mặt hàng nếu chúng bị mòn, bị hỏng hoặc đã không mác?</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">1. Các mặt hàng phải được trả lại khi chưa đeo, chưa giặt, không bị hư hại và với tất cả các mác ban đầu được đính kèm.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">2. Các mặt hàng sau đây không được trả lại hoặc đổi: áo liền quần, nội y, đồ bơi, đồ trang sức, đồ lót, đồ dùng cho sự kiện &amp; tiệc tùng, đồ DIY, đồ dùng cho thú cưng, đồ làm đẹp và phụ kiện (ngoại trừ khăn quàng cổ, túi xách và chăn nàng tiên cá).</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">3. Các mặt hàng có nhãn hiệu không đổi trả và quà tặng miễn phí không được trả lại.</div><div class=\"paragraph\" style=\"margin: 0px; padding: 0px;\"></div></div><div class=\"article-con-item-second\" style=\"margin: 0px 0px 40px; padding: 0px;\"><div class=\"item-p\" style=\"margin: 0px; padding: 0px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Thông báo quan trọng:</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">1. Vui lòng không gửi trả lại của bạn đến địa chỉ trên gói hàng của bạn. Đây không phải là địa chỉ trả hàng và sẽ ảnh hưởng đến quá trình trả hàng của bạn.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">2. Hãy chắc chắn để kiểm tra lại hàng trả lại của bạn trước khi vận chuyển chúng đi. Chúng tôi sẽ không chịu trách nhiệm về việc trả lại các sản phẩm không phải của SHEIN.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">3. Nếu bạn nhận được một mặt hàng bị hư hỏng / lỗi, vui lòng liên hệ với Bộ phận Dịch vụ Khách hàng của SHEIN trong vòng 24 giờ kể từ khi nhận được.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Tôi sẽ nhận được tiền hoàn lại như thế nào？</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">Yêu cầu của bạn sẽ được xử lý trong vòng 5 ngày làm việc sau khi chúng tôi nhận được yêu cầu của bạn. Khoản tiền hoàn lại sẽ được chuyển vào Ví SHEIN của bạn hoặc tài khoản thanh toán ban đầu theo yêu cầu của bạn.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Lưu ý: Phí vận chuyển ban đầu và đảm bảo vận chuyển không được hoàn lại.</span></span></div></div></div></div>', 21, 1, '1639060499_logo.png'),
(11, 'Chính sách hàng  chính hãng', 'Đúng nguồn gốc\r\nĐúng chất lượng\r\nCam kết hoàn tiền 100%', '<blockquote><p style=\"text-align: center; \"><b>Chính sách hàng&nbsp; chính hãng&nbsp; &nbsp; &nbsp; &nbsp;</b></p></blockquote><p><br></p><blockquote><p>Chính sách hàng hóa là mối quan tâm số một của khách hàng ki quyết định mua sản phẩm, thấu hiểu sự trăn trở này, TrungHieuComputer luôn luôn đảm bảo những sản phẩm do công ty chúng tôi kinh doanh, cung cấp, phân phối đều là hàng chính hãng với chất lượng được đảm bảo 100%.<br>Một trong những yếu tố để TrungHieuComputer có thể cung cấp xuyên suất các sản phẩm có chất lượng chính hãng chính là vì chúng tôi chỉ hợp tác với các đối tác uy tín, chất lượng, đáng tin cậy.<br>&nbsp; &nbsp; &nbsp; &nbsp;Chúng tôi cam kết, nếu sản phẩm có thông số kỹ thuật, mẫu mã, chất lượng không đúng với thông số của hãng, của nhà sản xuất, chúng tôi sẽ hoàn trả lại 100% số tiền đã thanh toán cho quý khách hàng và còn giữ đầy đủi vỏ hộp, không trầy xước.<br>&nbsp; &nbsp; &nbsp; Cam kết này được đưa ra nhằm thực hiện sứ mệnh mang đến các sản phẩm chất lượng chính hangxcungf sự hài lòng cao nhất cho khách hàng.</p></blockquote>', 18, 1, '1640437171_đồng2.png'),
(12, 'Chính sách đổi trả hàng', 'Chính sách đổi hàng hóa ', '<p><b><span style=\"text-align: justify;\">&nbsp;</span><span style=\"text-align: justify;\">II.&nbsp;NHỮNG CHÍNH SÁCH CAM KẾT BẢO HÀNH, BẢO TRÌ, ĐỔI TRẢ HÀNG:</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">1.Điều kiện đổi:</span></b><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">+ Không vi phạm các điều kiện bảo hành hay lỗi hình thức như trầy, xước,móp &nbsp;méo, ố vàng, mờ chữ, nứt, vỡ, vết chữ không tây được….</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">+ Đầy đủ bao bì, hộp xốp, catalogue, linh phụ kiện, tặng phẩm kèm theo, chứng từ, hóa đơn mua hàng, phiếu bảo hành … (nếu có).</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">+ Trường hợp không đủ các điều kiện trên thì quyền quyết định đổi thuộc về công ty An Phát.</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\"><font color=\"#ff0000\">Lưu ý</font></span><span style=\"text-align: justify;\"><font color=\"#ff0000\">:</font> Sau thời gian trên hoặc những trường hợp không đủ điều kiện đổi hàng thì tất cả các sản phẩm máy tính xách tay, PC nguyên chiếc sẽ được bảo hành theo quy định, chính sách chung của các hãng, nhà phân phối. Trường hợp lý do nào đó mà hãng trả hàng lâu thì công ty An Phát có trách nhiệm cập nhật thông tin, tình trạng, thúc giục, đàm phán với hãng, nhà phân phối cùng khách hàng và có thể xuất</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">Các lưu ý đối với các cam kết:</span></p><ul style=\"margin-right: 0px; margin-bottom: 11.5px; margin-left: 0px; text-align: justify; padding: 0px; transition: all 0.5s ease 0s;\"><li style=\"list-style: none;\">Tất cả các cam kết chỉ áp dụng với các thiết bị đủ điều kiện bảo hành.</li><li style=\"list-style: none;\">Các sản phẩm sau khi trả bảo hành có thể được trả sang một sản phẩm cùng loại tương đương &nbsp;chứ không&nbsp; phải chính xác sản phẩm ban đầu khách hàng gửi.</li><li style=\"list-style: none;\">Đối với nhưng sản phẩm quý khách không thuộc diện đổi mới 100% thì trả hàng bảo hành có thể là mới 100% có thể không nhưng tất cả đều ở trạng thái hoạt động tốt.</li><li style=\"list-style: none;\">Trường hợp sản phẩm hỏng của quý khách không thể sửa chữa được mà không còn trên thị trường thì chúng tôi sẽ đổi cho quý khách sản phẩm khác hoàn toàn tương đương với sản phẩm cũ nhưng ở tình trạng hoạt động tốt. Trường hợp quý khách chưa ưng ý với sản phẩm thay thế tương đương thì chúng tôi sẽ nhập lại theo giá quy đinh của công ty đã trừ khấu hao, hoặc thỏa thuận của cả hai bên hoặc theo giá trị trường của thiết bị tương đương.</li></ul><p><span style=\"text-align: justify;\"><b>III. Đổi, trả hàng không lỗi:</b></span></p><ul style=\"margin-right: 0px; margin-bottom: 11.5px; margin-left: 0px; text-align: justify; padding: 0px; transition: all 0.5s ease 0s;\"><li style=\"list-style: none;\">Trong vòng 3 ngày nếu khách hàng không hài lòng với sản phẩm sẽ được đổi sang sản phẩm khác hoặc được trả lại sản phẩm giá tính tại thời điểm mua hàng theo thỏa thuận. (Các sản phẩm phải giữ nguyên hộp và phụ kiện, không áp dung đối với laptop, máy in, CPU và các sản phẩm tiêu hao).</li><li style=\"list-style: none;\">Trong vòng 15 ngày đầu tiên khi trả lại hàng sẽ trừ 10% trên giá mua hoặc theo thỏa thuận &nbsp;do TT bảo hành quyết định với điều kiện sản phẩm phải đầy đủ nguyên đai, nguyên kiện, nguyên hình dạng, không xước, biến dạng, cháy nổ ( không áp dụng đối với laptop, máy in, CPU và các sản phẩm tiêu hao).</li></ul>', 28, 1, '1696001047_');
INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(100, 'Giới thiệu', 'Giới thiệu ', '<section class=\"elementor-section elementor-top-section elementor-element elementor-element-56b8a2b elementor-section-height-min-height elementor-section-boxed elementor-section-height-default elementor-section-items-middle\" data-id=\"56b8a2b\" data-element_type=\"section\" style=\"margin: 0px; padding: 0px; border-width: 0px 0px 1px; border-style: solid; border-color: rgb(233, 233, 233); border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; position: relative; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s; background-color: rgb(255, 255, 255);\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1330px; -webkit-box-align: center; align-items: center; min-height: 200px;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-bed1b9b\" data-id=\"bed1b9b\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; position: relative; display: flex; width: 1330px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 0px; padding: 15px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1330px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-96bb16a elementor-widget elementor-widget-heading\" data-id=\"96bb16a\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1300px; text-align: center;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h1 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: 1; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(23, 110, 186); text-rendering: optimizelegibility; letter-spacing: -0.02em; text-transform: uppercase;\"><span id=\"Gioi_thieu_cong_ty\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline; align-items: center;\">GIỚI THIỆU CÔNG TY</span></h1></div></div></div></div></div></section><section class=\"elementor-section elementor-top-section elementor-element elementor-element-375aae6 elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"375aae6\" data-element_type=\"section\" style=\"margin: 20px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; position: relative; background-color: rgb(255, 255, 255);\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1330px;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-595a3fd\" data-id=\"595a3fd\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; position: relative; display: flex; width: 1330px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 0px; padding: 15px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1330px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-29b784c elementor-widget elementor-widget-heading\" data-id=\"29b784c\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px 0px 25px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1300px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px 0px 0px 10px; border-width: 0px 0px 0px 10px; border-style: solid; border-color: rgb(3, 98, 180); border-image: initial; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h2 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 22px; line-height: 0.8em; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(3, 98, 180); text-rendering: optimizelegibility; letter-spacing: 1px;\"><span id=\"LICH_SU_HINH_THANH_PHAT_TRIEN\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline; align-items: center;\">LỊCH SỬ HÌNH THÀNH &amp; PHÁT TRIỂN</span></h2></div></div><div class=\"elementor-element elementor-element-8630e50 elementor-widget elementor-widget-text-editor\" data-id=\"8630e50\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; position: relative; color: var( --e-global-color-text ); width: 1300px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Công ty Cổ Phần Bền ( Ben Computer ) được thành lập năm 2001 với sở hữu thương hiệu Ben được Bộ khoa học công nghệ cấp giấy chứng nhận số 42378 ngày 25 tháng 07 năm 2002.</div><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Ben Computer là một Công ty hoạt động trong lĩnh vực kinh doanh Notebook, PC nguyên chiếc, lắp ráp máy tính thương hiệu Ben và phân phối các sản phẩm CNTT. Sau 20 năm nỗ lực xây dựng và phát triển, Ben Computer đã thu được nhiều thành công, xây dựng được hệ thống khách hàng và đối tác trên toàn quốc, được khách hàng và đối tác biết đến như một Công ty máy tính chuyên nghiệp, uy tín hàng đầu tại Việt Nam.</div><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Hiện nay, Ben Computer đã là đối tác của các hãng công nghệ toàn cầu và các nhà phân phối lớn như: Dell, Intel, IBM, HP, Lenovo, Sony, Samsung, LG, Toshiba, Acer, AMP, Apple,…</div></div></div></div></div></div></section><section class=\"elementor-section elementor-top-section elementor-element elementor-element-d5c2038 elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"d5c2038\" data-element_type=\"section\" style=\"margin: 20px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; position: relative; background-color: rgb(255, 255, 255);\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1330px;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-4392950\" data-id=\"4392950\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; position: relative; display: flex; width: 1330px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 0px; padding: 15px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1330px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-5971479 elementor-widget elementor-widget-heading\" data-id=\"5971479\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px 0px 25px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1300px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px 0px 0px 10px; border-width: 0px 0px 0px 10px; border-style: solid; border-color: rgb(3, 98, 180); border-image: initial; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h2 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 22px; line-height: 0.8em; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(3, 98, 180); text-rendering: optimizelegibility; letter-spacing: 1px;\"><span id=\"GIA_TRI_COT_LOI\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline; align-items: center;\">GIÁ TRỊ CỐT LÕI</span></h2></div></div><section class=\"elementor-section elementor-inner-section elementor-element elementor-element-fe91e75 elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"fe91e75\" data-element_type=\"section\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1300px;\"><div class=\"elementor-container elementor-column-gap-extended\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1330px;\"><div class=\"elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-ee48ae3\" data-id=\"ee48ae3\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; position: relative; display: flex; width: 325px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 10px; padding: 15px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 305px; flex-wrap: wrap; align-content: flex-start; display: flex; border-radius: 5px; box-shadow: rgba(123, 123, 123, 0.5) 0px 0px 10px 0px;\"><div class=\"elementor-element elementor-element-f5e027c elementor-view-stacked elementor-shape-circle elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-icon-box\" data-id=\"f5e027c\" data-element_type=\"widget\" data-widget_type=\"icon-box.default\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 275px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px 20px; border: 0px; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-icon-box-wrapper\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; -webkit-box-align: start; align-items: flex-start;\"><div class=\"elementor-icon-box-icon\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span class=\"elementor-icon elementor-animation-\" style=\"margin: 0px; padding: 0.5em; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 50px; line-height: 1; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; display: inline-block; align-items: center; transition: all 0.3s ease 0s; color: rgb(255, 255, 255); background-color: rgb(3, 98, 180); fill: rgb(255, 255, 255); border-radius: 50%;\"><span aria-hidden=\"true\" class=\"far fa-heart\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-stretch: inherit; font-size: inherit; line-height: 1; font-family: &quot;Font Awesome 5 Free&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; display: block; text-rendering: auto; width: 1em; height: 1em; position: relative; transform: rotate(0deg);\"></span></span></div><div class=\"elementor-icon-box-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; -webkit-box-flex: 1; flex-grow: 1;\"><h3 class=\"elementor-icon-box-title\" style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 18px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(3, 98, 180); text-rendering: optimizelegibility; text-transform: uppercase; letter-spacing: 0.5px;\"><span id=\"Duc_tinh_trung_thuc\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline; align-items: center;\">ĐỨC TÍNH<br>TRUNG THỰC</span></h3><p class=\"elementor-icon-box-description\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: var( --e-global-color-text );\">Giúp chúng tôi có kỷ luật cá nhân và kỷ luật tổ chức.</p></div></div></div></div></div></div><div class=\"elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-240d040\" data-id=\"240d040\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; position: relative; display: flex; width: 325px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 10px; padding: 15px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 305px; flex-wrap: wrap; align-content: flex-start; display: flex; border-radius: 5px; box-shadow: rgba(123, 123, 123, 0.5) 0px 0px 10px 0px;\"><div class=\"elementor-element elementor-element-93beef3 elementor-view-stacked elementor-shape-circle elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-icon-box\" data-id=\"93beef3\" data-element_type=\"widget\" data-widget_type=\"icon-box.default\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 275px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px 20px; border: 0px; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-icon-box-wrapper\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; -webkit-box-align: start; align-items: flex-start;\"><div class=\"elementor-icon-box-icon\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span class=\"elementor-icon elementor-animation-\" style=\"margin: 0px; padding: 0.5em; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 50px; line-height: 1; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; display: inline-block; align-items: center; transition: all 0.3s ease 0s; color: rgb(255, 255, 255); background-color: rgb(255, 23, 23); fill: rgb(255, 255, 255); border-radius: 50%;\"><span aria-hidden=\"true\" class=\"fas fa-users\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-weight: 900; font-stretch: inherit; font-size: 1em; line-height: 1; font-family: &quot;Font Awesome 5 Free&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; display: block; text-rendering: auto; width: 1em; height: 1em; position: relative; transform: rotate(0deg);\"></span></span></div><div class=\"elementor-icon-box-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; -webkit-box-flex: 1; flex-grow: 1;\"><h3 class=\"elementor-icon-box-title\" style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 18px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(3, 98, 180); text-rendering: optimizelegibility; text-transform: uppercase; letter-spacing: 0.5px;\"><span id=\"Duc_tinh_Kien_tri\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline; align-items: center;\">ĐỨC TÍNH<br>KIÊN TRÌ</span></h3><p class=\"elementor-icon-box-description\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: var( --e-global-color-text );\">Giúp chúng tôi thực hiện đến cùng cam kết công việc.</p></div></div></div></div></div></div><div class=\"elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-57e5af9\" data-id=\"57e5af9\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; position: relative; display: flex; width: 325px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 10px; padding: 15px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 305px; flex-wrap: wrap; align-content: flex-start; display: flex; border-radius: 5px; box-shadow: rgba(123, 123, 123, 0.5) 0px 0px 10px 0px;\"><div class=\"elementor-element elementor-element-097e140 elementor-view-stacked elementor-shape-circle elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-icon-box\" data-id=\"097e140\" data-element_type=\"widget\" data-widget_type=\"icon-box.default\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 275px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px 20px; border: 0px; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-icon-box-wrapper\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; -webkit-box-align: start; align-items: flex-start;\"><div class=\"elementor-icon-box-icon\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span class=\"elementor-icon elementor-animation-\" style=\"margin: 0px; padding: 0.5em; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 50px; line-height: 1; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; display: inline-block; align-items: center; transition: all 0.3s ease 0s; color: rgb(255, 255, 255); background-color: rgb(3, 98, 180); fill: rgb(255, 255, 255); border-radius: 50%;\"><span aria-hidden=\"true\" class=\"far fa-lightbulb\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-stretch: inherit; font-size: inherit; line-height: 1; font-family: &quot;Font Awesome 5 Free&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; display: block; text-rendering: auto; width: 1em; height: 1em; position: relative; transform: rotate(0deg);\"></span></span></div><div class=\"elementor-icon-box-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; -webkit-box-flex: 1; flex-grow: 1;\"><h3 class=\"elementor-icon-box-title\" style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 18px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(3, 98, 180); text-rendering: optimizelegibility; text-transform: uppercase; letter-spacing: 0.5px;\"><span id=\"Tien_hoa_khong_ngung\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline; align-items: center;\">TIẾN HÓA<br>KHÔNG NGỪNG</span></h3><p class=\"elementor-icon-box-description\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: var( --e-global-color-text );\">Giúp chúng tôi linh hoạt để thích nghi.</p></div></div></div></div></div></div><div class=\"elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-707ce0c\" data-id=\"707ce0c\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; position: relative; display: flex; width: 325px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 10px; padding: 15px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 305px; flex-wrap: wrap; align-content: flex-start; display: flex; border-radius: 5px; box-shadow: rgba(123, 123, 123, 0.5) 0px 0px 10px 0px;\"><div class=\"elementor-element elementor-element-33a13c1 elementor-view-stacked elementor-shape-circle elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-icon-box\" data-id=\"33a13c1\" data-element_type=\"widget\" data-widget_type=\"icon-box.default\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 275px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px 20px; border: 0px; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-icon-box-wrapper\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; -webkit-box-align: start; align-items: flex-start;\"><div class=\"elementor-icon-box-icon\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span class=\"elementor-icon elementor-animation-\" style=\"margin: 0px; padding: 0.5em; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 50px; line-height: 1; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; display: inline-block; align-items: center; transition: all 0.3s ease 0s; color: rgb(255, 255, 255); background-color: rgb(255, 23, 23); fill: rgb(255, 255, 255); border-radius: 50%;\"><span aria-hidden=\"true\" class=\"fas fa-check\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-weight: 900; font-stretch: inherit; font-size: 1em; line-height: 1; font-family: &quot;Font Awesome 5 Free&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; display: block; text-rendering: auto; width: 1em; height: 1em; position: relative; transform: rotate(0deg);\"></span></span></div><div class=\"elementor-icon-box-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; -webkit-box-flex: 1; flex-grow: 1;\"><h3 class=\"elementor-icon-box-title\" style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 18px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(3, 98, 180); text-rendering: optimizelegibility; text-transform: uppercase; letter-spacing: 0.5px;\"><span id=\"Say_me_Sang_tao\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline; align-items: center;\">SAY MÊ<br>SÁNG TẠO</span></h3><p class=\"elementor-icon-box-description\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: var( --e-global-color-text );\">Giúp chúng tôi chủ động vượt qua các thách thức.</p></div></div></div></div></div></div></div></section></div></div></div></section><section class=\"elementor-section elementor-top-section elementor-element elementor-element-58981db elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"58981db\" data-element_type=\"section\" style=\"margin: 20px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; position: relative; background-color: rgb(255, 255, 255);\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative; max-width: 1330px;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-26d883c\" data-id=\"26d883c\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; position: relative; display: flex; width: 1330px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 0px; padding: 15px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1330px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-683ce22 elementor-widget elementor-widget-heading\" data-id=\"683ce22\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px 0px 25px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative; width: 1300px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px 0px 0px 10px; border-width: 0px 0px 0px 10px; border-style: solid; border-color: rgb(3, 98, 180); border-image: initial; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h2 class=\"elementor-heading-title elementor-size-default\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 22px; line-height: 0.8em; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(3, 98, 180); text-rendering: optimizelegibility; letter-spacing: 1px;\"><span id=\"THANH_TUU\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline; align-items: center;\">THÀNH TỰU</span></h2></div></div><div class=\"elementor-element elementor-element-5cffa4e elementor-widget elementor-widget-text-editor\" data-id=\"5cffa4e\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; position: relative; color: var( --e-global-color-text ); width: 1300px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-rendering: optimizelegibility;\">Bằng những nỗ lực không mệt mỏi, Ben Computer tự hào là nhà bán lẻ thiết bị công nghệ cao được khách hàng và các đối tác tin tưởng và yêu mến. Đó là giải thưởng và niềm tự hào vô giá của chúng tôi.</p></div></div></div></div></div></section>', 28, 1, '1696733225_');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int(11) NOT NULL,
  `updata_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `updata_time`) VALUES
(96, 91, '7828', 1, '2021-12-27 08:52:51'),
(97, 91, '6030', 1, '2021-12-27 08:56:38'),
(98, 91, '4188', 1, '2021-12-27 10:51:13'),
(109, 86, '1040', 0, '2023-09-14 01:32:29'),
(110, 86, '8126', 0, '2023-09-14 01:33:30'),
(111, 86, '1829', 1, '2023-09-28 22:38:42'),
(112, 86, '442', 0, '2023-09-29 22:06:10'),
(113, 86, '4524', 1, '2023-09-29 22:43:30'),
(114, 86, '3055', 1, '2023-10-02 14:28:04'),
(115, 86, '1232', 0, '2023-10-02 19:10:51'),
(116, 89, '935', 0, '2023-10-02 19:24:08'),
(118, 86, '5015', 0, '2023-10-02 19:29:52'),
(119, 86, '9238', 0, '2023-10-04 10:39:52'),
(120, 86, '9525', 0, '2023-10-04 10:51:21'),
(122, 86, '584', 2, '2023-10-05 22:32:02'),
(123, 86, '6613', 2, '2023-10-05 23:13:30'),
(125, 24, '5125', 1, '2023-10-06 10:06:12'),
(126, 86, '8709', 1, '2023-10-06 10:07:06'),
(127, 86, '5280', 0, '2023-10-06 10:07:08'),
(128, 86, '7176', 0, '2023-10-08 09:28:43'),
(129, 86, '8498', 2, '2023-10-08 10:55:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(292, '469', 103, 1),
(293, '4227', 104, 1),
(294, '347', 97, 1),
(295, '1506', 66, 2),
(296, '1679', 104, 1),
(337, '7999', 69, 1),
(357, '336', 94, 3),
(358, '7828', 69, 1),
(359, '6030', 103, 1),
(360, '4188', 111, 1),
(361, '8080', 111, 1),
(362, '187', 95, 1),
(363, '3152', 111, 1),
(364, '6639', 111, 1),
(365, '1906', 110, 1),
(366, '1906', 109, 1),
(367, '1906', 108, 1),
(368, '2211', 110, 1),
(369, '2211', 109, 1),
(370, '2211', 108, 1),
(371, '7619', 111, 2),
(372, '4262', 110, 1),
(373, '8490', 109, 1),
(374, '8277', 109, 1),
(375, '1040', 109, 1),
(376, '8126', 66, 4),
(377, '1829', 114, 1),
(378, '442', 112, 1),
(379, '442', 111, 1),
(380, '4524', 112, 1),
(381, '3055', 113, 1),
(382, '1232', 113, 1),
(383, '1232', 112, 1),
(384, '935', 113, 1),
(385, '5015', 114, 1),
(386, '5015', 110, 1),
(387, '9238', 113, 1),
(388, '9525', 114, 1),
(389, '3402', 111, 1),
(390, '584', 113, 3),
(391, '6613', 113, 1),
(392, '6613', 112, 1),
(393, '5125', 113, 1),
(394, '8709', 113, 2),
(395, '7176', 114, 2),
(396, '8498', 113, 2),
(397, '8498', 109, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`, `role_id`) VALUES
(86, 'hieuadmin', 'stackskill2@gmail.com', 'Bắc từ liêm-cổ nhuế', 'e10adc3949ba59abbe56e057f20f883e', '0388978888', 1),
(88, 'stackskill0@gmail.com', 'thanhhieu123@gmail.com', 'Hồ chí minh', 'e10adc3949ba59abbe56e057f20f883e', '0388978888', 2),
(89, 'hieuadmin', 'thanhhieu12345@gmail.com', 'nam Từ Liêm', 'e10adc3949ba59abbe56e057f20f883e', '0388978888', 4),
(90, 'Thành Hiếu', 'thanhhieu20011110@gmail.com', 'stackskill2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0365746456', 4),
(98, 'hieuadmin', 'stackskill26546@gmail.com', 'stackskill23@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '5435435', 3),
(99, 'Nguyễn Thành Hiếu', 'stackskill0@gmail.com', 'hải dương', '25d55ad283aa400af464c76d713c07ad', '0365746456', 4),
(100, 'Nguyễn Thành Hiếu', 'hieuadminss@gmail.com', 'hieuadmin', 'e10adc3949ba59abbe56e057f20f883e', '0365746456', 2),
(101, 'hieuadmin@gmail.com', 'stackskill3@gmail.com', 'Thành Hiếu', 'e10adc3949ba59abbe56e057f20f883e', '0365746456', 4),
(102, 'stackskill0@gmail.com', 'stackskill6@gmail.com', 'stackskill0@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0365746456', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(39, 'Linh kiện máy tính', 1),
(40, 'Thiết bị mạng', 2),
(41, 'Thiết bị lưu trữ', 3),
(42, 'Bàn phím Chuột', 4),
(43, 'Camera', 5),
(44, 'Linh kiện laptop', 6),
(45, 'Màn hình máy tính ', 7),
(46, 'Thiết bị văn phòng', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(17, 'Chính sách bảo mật thông tin khách hàng', 1),
(18, 'Chính sách hàng chính hãng', 2),
(19, 'Chính sách vận chuyển', 3),
(20, 'Chính sách bảo hàng và đổi trả hàng bảo hành', 4),
(28, 'Chính sách đổi trả hàng ', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_giohang` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_giohang`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(19, 1, '754', 0),
(20, 1, '9283', 0),
(23, 1, '662', 0),
(26, 1, '2480', 0),
(29, 1, '3933', 0),
(30, 1, '6072', 1),
(31, 1, '1895', 1),
(32, 1, '3575', 1),
(33, 1, '7409', 1),
(34, 1, '7530', 1),
(35, 1, '8543', 1),
(36, 1, '978', 1),
(37, 1, '295', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoanhang`
--

CREATE TABLE `tbl_hoanhang` (
  `id` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_gui` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_lh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoanhang`
--

INSERT INTO `tbl_hoanhang` (`id`, `id_khachhang`, `code_cart`, `noidung`, `ngay_gui`, `status_lh`) VALUES
(24, 86, '1679', 'uỵuy', '2023-10-02 03:46:19', 0),
(25, 90, '3152', 'gsgdsg', '2023-10-02 06:50:37', 0),
(26, 86, '2966', 'sdfdsfds', '2023-10-02 06:51:22', 0),
(27, 86, '5638', 'ao loi sze', '2023-10-02 07:04:58', 0),
(28, 86, '5638', 'sai mẫu', '2023-10-02 07:17:15', 0),
(29, 86, '4524', 'cádzcadc', '2023-10-02 12:23:06', 0),
(30, 89, '6075', 'lỗi', '2023-10-02 12:24:44', 0),
(31, 86, '5015', 'camera bị lỗi', '2023-10-02 12:30:11', 0),
(32, 86, '9525', 'lỗi cam', '2023-10-04 03:57:22', 0),
(33, 86, '3402', 'trả hàng', '2023-10-04 04:07:11', 0),
(34, 86, '3402', 'trả hàng', '2023-10-04 04:08:43', 0),
(35, 86, '3402', 'trả hàng', '2023-10-04 04:10:16', 0),
(36, 86, '3402', 'trả hàng', '2023-10-04 04:12:12', 2),
(37, 89, '935', 'muoos doi sp khac', '2023-10-05 15:14:38', 2),
(38, 86, '584', 'lỗi hàng cần đổi trả', '2023-10-05 16:10:45', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `id_role`) VALUES
(1, 'Quản Lý', 2),
(2, 'Nhân viên', 3),
(5, 'Khách hàng', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gianhap` int(20) NOT NULL,
  `giasp` int(50) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `size` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `gianhap`, `giasp`, `giamgia`, `soluong`, `size`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(66, 'Sạc Laptop HP 19V - 4.74A (90W) Chân kim to + Tặng kèm dây nguồn', 'LKLT', 200000, 250000, 245000, 2, 'XL ', '1694963550_Sạc HP 4.74A chân kim to.jpg', '', '<p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">Sạc Cao Cấp (ZIN): Đẹp &amp; chắc chắn!. Sạc ổn định, sạc không nóng máy, hạn chế touchpad di chuyển khó, chất lượng gần như sạc theo máy. \r\n Sạc Thay Thế (OEM): Sạc thay thế, dùng hơi nóng hơn so với sạc theo máy, nhiều máy kén sạc khó khởi động máy &amp; gây di chuyển Touchpad khó </font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">Chi tiết kỹ thuật:\r\n</font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">1.Thông số kĩ thuật sạc laptop hp 4,7a\r\n</font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">☑ 	Nhãn: hp 4,7a</font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n☑ 	Loại hàng : Zin (Original)\r\n</font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">☑ 	Điện áp vào: 100v – 240v </font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n☑ 	Điện áp ra: 19,5V-4,7a\r\n</font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">☑	Loại chân cắm: Chân kim to (Φ7.4×Φ5.0). </font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n☑	Màu: Đen</font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\"> \r\n☑	Phụ kiện đi kèm: Dây nguồn </font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n☑	Tự ngắt nguồn khi bị quá tải\r\n</font></span></p><p style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">☑     Bảo hành: 12 tháng Lỗi 1 đổi 1</font></span><br></p>', 0, 44),
(69, 'Màn hình MSI PRO MP223 21.45 inch FHD/VA/100Hz/1ms/HDMI', 'MHMT', 2000000, 5500000, 5190000, 30, 'XL ', '1695561968_msi-pro-mp223-21-45-inch-fhd.jpg', '', '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: 0px;\">Chỉ với mức giá khoảng 2 triệu, bạn đã sở hữu được chiếc <a href=\"https://www.thegioididong.com/man-hinh-may-tinh/msi-pro-mp223-21-45-inch-fhd\" target=\"_blank\" title=\"Màn hình LCD MSI PRO MP223 21.45 inch FHD chính hãng tại thegioididong.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: 18px; outline: 0px;\">màn hình LCD MSI PRO MP223 21.45 inch FHD</a> được thiết kế tối giản cùng với các thông số ổn định kèm tần số quét 100 Hz và thời gian đáp ứng 1 ms mang đến cho bạn trải nghiệm hình ảnh tuyệt vời.</h3><h4><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 16px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">• <a href=\"https://www.thegioididong.com/man-hinh-may-tinh-msi\" target=\"_blank\" title=\"Mua màn hình máy tính MSI, màn hình gaming, giá rẻ hấp dẫn, có trả góp tại Thế Giới Di Động\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237);\">Màn hình máy tính MSI</a> với kích thước <strong style=\"margin: 0px; padding: 0px;\">21.45 inch</strong>, lý tưởng cho nhiều mục đích sử dụng như làm việc văn phòng, lễ tân khách sạn - nhà hàng hay học tập, chơi game hoặc duyệt web. Độ phân giải <strong style=\"margin: 0px; padding: 0px;\">Full HD (1920 x 1080)</strong> đảm bảo khả năng hiển thị hình ảnh rõ nét, chung thực và đầy đủ chi tiết, từ đó cho bạn tận hưởng một không gian hiển thị tốt độ tương phản cao và độ sáng ổn định.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 16px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">• <strong style=\"margin: 0px; padding: 0px;\">Tấm nền VA</strong> cho phép bạn tận hưởng hình ảnh có độ tương phản cao, màu sắc đa dạng và cho hình ảnh rõ nét với góc nhìn rộng mà màn hình hiển thị mang lại. Bên cạnh đó, màn hình còn có khả năng hiển thị <strong style=\"margin: 0px; padding: 0px;\">16.7 triệu màu</strong>, đảm bảo mọi màu sắc từ sắc nét, tươi sáng cho đến những màu tối và sâu sắc đều được tái hiện một cách chính xác.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 16px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">• Với tần số quét <strong style=\"margin: 0px; padding: 0px;\">100 Hz</strong>, màn hình cung cấp hình ảnh mượt mà và không bị giật, đặc biệt phù hợp cho việc chơi game và xem phim hành động. Thời gian đáp ứng chỉ <strong style=\"margin: 0px; padding: 0px;\">1 ms</strong> giúp màn hình hiển thị các hình ảnh chuyển động nhanh chóng và mượt mà hơn. Bạn sẽ có trải nghiệm sử dụng cực kỳ tương tác và mượt mà, giảm thiểu hiện tượng nhòe hoặc mờ trong các cảnh chuyển động nhanh.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 16px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">• Tính năng <strong style=\"margin: 0px; padding: 0px;\">giảm ánh sáng xanh</strong> được tích hợp trên màn hình giúp giảm bớt ánh sáng xanh gây mỏi mắt và gây ảnh hưởng đến giấc ngủ. Kết hợp với tính năng <strong style=\"margin: 0px; padding: 0px;\">Anti-Flicker</strong> cũng giúp giảm nhấp nháy không chỉ gây phiền hà khi xem, mà còn gây mệt mỏi và khó chịu cho mắt, từ đó đảm bảo bạn có một trải nghiệm xem mượt mà và không gây khó chịu cho mắt.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 16px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">• Ngoài ra, <a href=\"https://www.thegioididong.com/man-hinh-may-tinh-van-phong\" target=\"_blank\" title=\"Tham khảo các mẫu màn hình máy tính văn phòng tại thegioididong.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237);\">màn hình văn phòng</a> còn hỗ trợ tính năng <strong style=\"margin: 0px; padding: 0px;\">Eye Care</strong>, được thiết kế đặc biệt để bảo vệ sức khỏe của mắt bằng cách điều chỉnh tự động độ sáng và màu sắc để tối ưu hóa trải nghiệm xem mà không gây căng thẳng cho mắt, đặc biệt hữu ích khi bạn làm việc hoặc giải trí trên màn hình trong thời gian dài.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 16px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">• <a href=\"https://www.thegioididong.com/man-hinh-may-tinh\" target=\"_blank\" title=\"Mua màn hình máy tính, màn hình PC, đa đạng mẫu mã mới, đầy đủ kích thước, độ phân giải cao, giá rẻ, chính hãng tại thegioididong.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237);\">Màn hình máy tính</a> có thiết kế tinh tế và hiện đại, mang đến sự tối giản cũng như tính chuyên nghiệp cho không gian làm việc của bạn. Với viền mỏng và tỷ lệ khung hình cao, màn hình tối ưu hóa không gian hiển thị, cho phép bạn tận hưởng hình ảnh rộng lớn và trải nghiệm xem mượt mà.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 16px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">• Với khả năng gắn <strong style=\"margin: 0px; padding: 0px;\">ARM chuẩn VESA</strong>, bạn có thể dễ dàng thay đổi vị trí màn hình theo ý muốn, điều chỉnh độ cao, nghiêng, quay và xoay màn hình một cách linh hoạt.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 16px; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">• Màn hình cũng có Jack tai nghe 3.5 mm, HDMI 1.4 và D-Sub (VGA), cho phép bạn kết nối nhanh chóng với các thiết bị như máy tính, loa và nhiều thiết bị khác. </p></h4>', 0, 45),
(73, 'Nguồn PC Orient ATX 500W', 'LKLT', 100000, 200000, 150000, 100, 'X', '1695137079_Nguồn PC Orient ATX 500W.,jp.jpg', '', '<h4><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">Nguồn PC Orient ATX 500W Sản phẩm: Nguồn PC Hãng sản xuất: Orient Model: 500W Chuẩn nguồn&nbsp;&nbsp;&nbsp;&nbsp; ATX Công suất danh định: 500W Đầu cấp điện cho main: 20+4pins Đầu cấp điện cho hệ thống: CPU 4pin/ SATA x 3, ATA x 2 Quạt làm mát:&nbsp;&nbsp; Fan 12cm Điện áp vào: 115-230V Phụ kiện kèm theo: 1x Dây nguồn Màu sắc:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></h4>', 0, 39),
(75, 'Vỏ Case Huntkey HK 360', 'VC', 150000, 250000, 165000, 10, 'M ', '1695554955_Vỏ Case Hunkey BU560.jp.jpg', '', '<ul><li><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">Loại case:&nbsp; Mid Tower. -Màu sắc:&nbsp; Đen.</span></li><li><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\"> -Chất liệu:&nbsp; Thép SPCC 0,5mm. </span></li><li><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">-Vị trí đặt nguồn:&nbsp; Trên.</span></li><li><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">-Hỗ trợ Mainboard ATX/M-ATX/Mini-ITX. -Khe cắm : ODD 5.5\" * 01; HDD 3.5\"*02; SSD 2.5\" *02 </span></li><li><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">- Khe cắm pci: 07 </span></li><li><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">-Cổng kết nối mặt trước:&nbsp; 01 cổng USB 3.0, 02 cổng USB 2.0, 01 cổng Audio </span></li><li><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">-Hỗ trợ làm mát bằng quạt( Không bao gồm sẵn quạt đi kèm): Mặt trước: 120mm*3;&nbsp; Mặt sau: 120mm*1; Bên trái: …</span></li></ul>', 0, 39),
(87, 'Coolerplus Cat 6', 'TBVP', 100000, 350000, 300000, 30, 'L', '1695566247_coolerplus-cat-6-1545022084.jpg', '', '<p>ÁP MẠNG COOLERPLUS CAT-6 UTP 1. </p><p>Hỗ trợ chuẩn Gigabit Ethernet 2. </p><p>Thỏa tất cả các yêu cầu của Gigabit Ethernet(IEEE 802.3ab) </p><p>Thẩm tra độc lập bởi ETL SEMKO&nbsp;</p><p> Băng thông hỗ trợ tới 150 MHz&nbsp;</p><p> Vỏ cáp PVC chuẩn màu xanh dương, được đóng gói dạng Full Box với chiều dài …<br></p>', 0, 46),
(88, 'Dây Mạng LB LINK CAT 5E', 'TBVP', 50000, 150000, 140000, 15, 'X', '1695566148_day-mang-lb-link-cat-5e-1545022165.jpg', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">Dây Mạng LB LINK CAT 5E BẢO HÀNH 36 THÁNG DÂY TÍN HIỆU MẠNG …</span><br></p>', 0, 46),
(89, 'Máy In Canon  LBP 2900', 'TBVP', 2000000, 1990000, 1500000, 10, 'X', '1695565413_máy in.jpg', '', '<p style=\"background-color: rgb(245, 245, 245);\">BẢO HÀNH 1 NĂM </p><p style=\"background-color: rgb(245, 245, 245);\">Tên sản phẩm: Máy in Canon LPP 2900 </p><p style=\"background-color: rgb(245, 245, 245);\">Hãng sản xuẩ Cannon loại máy in Laser đen trắng tốc độ in 12 trang/phút độ phân giải 2400x600dpi, khổ giấy A4</p><p style=\"background-color: rgb(245, 245, 245);\">Mực in Canon EP303 </p><p style=\"background-color: rgb(245, 245, 245);\">Tính năng kết nối chung USB 2.0 </p><p style=\"background-color: rgb(245, 245, 245);\">Khay đựng giấy có thể lên tới 150 tờ</p>', 0, 46),
(90, 'Màn Hình Máy Tính LCD 21.5 Inch HUNTKEY RRB2211EH TRÀN VIỀN FULLHD', 'MHMT', 1500000, 2900000, 2500000, 40, 'XL ', '1695136993_Màn Hình Máy Tính LCD 21.5 Inch.jpg', '', '<h5>Màn hình máy tính LCD 21.5 inch HUNTKEY RRB2211E/H<br> - Kích thước màn hình: 21.5 inch. - Độ sáng: 250cd/m2. <br> - Độ tương phản: 3000: 1. - Điểm ảnh: 0.08275(H) x 0.24825(V).<br> - Độ phân giải (H x V): 1920*1080.<br> - Tỷ lệ khung hình: 16:9. <br> - Thời gian đáp ứng: 6.5ms.<br> - Góc nhìn: 178°.<br> - Độ phân giải (H * V / Fv): 1920*1080 / 60Hz.<br> - Đầu vào: 1 x D-Sub; HDMI x1.  - Kích …</h5>', 0, 45),
(91, 'Màn Hình Máy Tính Huntkey RRB2212 Tràn Viền 21.5 Full HD', 'MHMT', 18000000, 2500000, 2400000, 20, 'L', '1695136833_Màn Hình Máy Tính Huntkey RRB2212.jpg', '', '<h4 style=\"\"><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">Màn hình máy tính Huntkey LCD N2298SWH 21.5\" Diagonal White LED-Backlight Độ sáng: 250cd/M2; Độ tương phản: 4000: 1 Điểm ảnh: 0.2482(H) * 0.2482(V); Độ phân giải (H x V): 1920*1080 Tỷ lệ khung hình: 16: 9; Thời gian đáp ứng : 5ms Độ phân giải H * V / Fv): 1920*1080 /60 Hz Đầu vào: 1 x D-Sub; HDMI x1 Kích thước (W * D * H): 500x194x370mm Kích thước đóng gói (W * D * H): …</span></h4>', 0, 45),
(92, 'MÀN HÌNH HUNTKEY N2405WHI 23.8  FHD IPS 75HZ HDMI+VGA', 'MHMT', 14300000, 2100000, 2000000, 10, 'XL ', '1695136759_MÀN HÌNH HUNTKEY N2405WHI.jpg', '', '<h4 style=\"\"><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">LCD HUNTKEY N2405WH/I IPS Display size: 23.8″ Model: N2405WH / I Loại tấm nền: Công nghệ IPS Đèn nền: Đèn nền LED Kích thước màn hình: 23,8 inch độ sáng: 250cd / m² Góc nhìn: 178 ° / 178 ° Độ phân giải: 1920 * 1080 Độ tương phản: 1000: 1 Thời gian đáp ứng: 7ms Cổng kết nối: VGA + HDMI Nguồn điện: 12V-2A Màu sắc: màu đen kích thước vật lý: 541,8 * 413,6 * …</span></h4>', 0, 45),
(93, 'Sạc Laptop HP 19.5V - 3.33A chân kim NHỎ Adapter HP Pavilion chân xanh', 'LKLT', 300000, 499000, 450000, 6, 'M ', '1694963327_Sạc HP 3.33A chân kim nhỏ.jpg', '', '<p style=\"\"><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\"><font color=\"#000000\" style=\"\">✅ Thông số kỹ thuật:\r\n☑ Nhãn:HP\r\n☑ Điện áp vào: 100v – 240v\r\n☑ Điện áp ra: 19.5V -3.33A (65W) Phù hợp với mã máy không có card đồ họa (VGA On Board) hoặc thay cho Laptop có sạc theo máy thông số 19.5v 2.31a (45w)\r\n⛔ Loại chân cắm: Chân kim nhỏ kích thước đường kính đầu sạc là 4.5mm (ký hiệu Φ4.5 *3.0mm) - có kim nhỏ ở giữa (ảnh minh họa đi kèm)\r\n☑ Màu: Đen\r\n☑ Phụ kiện đi kèm: Dây nguồn\r\n☑ Bảo hành: 12 tháng\r\n----------------------------------------------------------\r\nBẢO HÀNH 12 THÁNG, LỖI 1 ĐỔI 1 SẢN PHẨM MỚI TRONG SUỐT THỜI GIAN BẢO HÀNH</font></span><br></p>', 0, 44),
(94, 'Camera EZVIZ H6C', 'Camera', 200000, 350000, 300000, 50, 'XL ', '1695564807_1.jpg', '', '<p style=\"margin: 0cm; line-height: 30pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 26.5pt; color: rgb(51, 51, 51);\">Tầm nhìn bao quát hơn, bảo vệ tốt hơn,\r\nquan tâm triệt để hơn<o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm; line-height: 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><span style=\"font-size: 13.5pt; color: rgb(51, 51, 51);\">Đây là một chiếc camera vừa đơn giản vừa\r\nlinh hoạt. Bạn có thể lắp đặt trong nhà để giám sát thú cưng hoặc em bé hay sử\r\ndụng để tăng cường một lớp bảo vệ bổ sung cho ngôi nhà bạn. Khác với nhiều\r\ncamera chỉ ghi hình ở một góc quan sát cố định, H6c xoay để cung cấp góc nhìn\r\ntoàn cảnh với độ rõ nét cao, thiết bị này thậm chí có thể phát hiện và theo dõi\r\ncác chuyển động một cách thông minh. Với sự trợ giúp của H6c, không điều gì\r\ntrong căn phòng rộng lớn có thể dễ dàng thoát khỏi tầm mắt bạn.</span></p><p style=\"margin: 0cm; line-height: 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- Chế độ toàn cảnh</p><p style=\"margin: 0cm; line-height: 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- Độ phân giải 1080P</p><p style=\"margin: 0cm; line-height: 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- Tầm nhìn ban đêm bằng hồng ngoại</p><p style=\"margin: 0cm; line-height: 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- Phát hiện chuyển động</p><p style=\"margin: 0cm; line-height: 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- Theo dõi tự động</p><p style=\"margin: 0cm; line-height: 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- Trò chuyện 2 chiều</p><p style=\"margin: 0cm; line-height: 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- Hỗ trợ thẻ nhớ</p>', 0, 43),
(95, 'Camera C3W', 'Camera', 100000, 450000, 410000, 150, 'M ', '1695564347_anh.jpg', '', '<p>Camera đơn giản tiện lợi dễ dàng lắp&nbsp;</p><p>Nhiều chức năng như quan sát, kêu khi gặp người,..</p><p>Chi phí phù hợp với gia đình</p><p><br></p>', 0, 43),
(96, 'Bộ Nhớ Cắm Ngoài USB Kingston 32GB (Cổng cắm 3.0 nhanh gấp đôi)', 'TBLT', 100000, 200000, 199000, 300, 'XXL', '1695561654_usb-kingston-32gb.jpg', '', '<h2><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">BẢO HÀNH 24 THÁNG USB Kingston 3.0 DT100G3 Bạn có quá nhiều file cần phải lưu trữ mà máy tính của bạn lại không đáp ứng được, đó chính là lúc bạn cần một chiếc USB. USB Kingston 3.0  DT100G3 với công nghệ 3.0 cho phép trao đổi dữ liệu giữa máy tính và thiết bị một cách nhanh chóng.</span></h2><h2><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\"> Thiết kế nhỏ gọn, tiện lợi USB Kingstons chắc chắn sẽ là người bạn đồng hành tin cậy trong công …</span></h2>', 0, 41),
(97, 'Bộ Nhớ Ngoài USB Kingston 32GB SE9 Vỏ Nhôm', 'TBLT', 100000, 290000, 180000, 30, 'L', '1695561476_Bộ Nhớ Ngoài USB Kingston 32GB.jpg', '', '<h4><span style=\"font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\"><font color=\"#000000\" style=\"\">Tình trạng: Mới Bảo hành: 24 Tháng    <br></font></span><span style=\"font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\"><font color=\"#000000\">Nguồn gốc: Chính hãng Hãng sản xuất    Kingston Dung lượng bộ nhớ    32GB Chuẩn USB    2.0 Website    Chi …<br></font></span><span style=\"font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\"><font color=\"#000000\" style=\"\">Phù hợ với nhưng người lưu trữ dữ liệu bên ngoài đặc biệt các thầy cô lưu trữ bài giảng của mình</font></span></h4><p><br></p>', 0, 41),
(99, 'Phím Desstroyer (Bàn phím giả cơ, nhiều màu)', 'BPC', 350000, 750000, 550000, 10, 'XXL', '1695133306_Phím Desstroyer.jpg', '', '<p>Bàn phím thông dụng</p><p>Với chế độ 16 triệu màu</p><p>Với những tiếng Stcik nghe phù hợp không làm ảnh hưởng đến những người xung quanh</p>', 0, 42),
(100, 'SẠC LAPTOP DELL 19.5V-4.62A 90W CHÂN KIM NHỎ + TẶNG KÈM DÂY NGUỒN', 'LKLT', 200000, 250000, 245000, 30, 'L', '1694962894_Sạc Dell 4.62A chân nhỏ.jpg', '', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\"><font color=\"#000000\" style=\"\">THÔNG TIN SẢN PHẨM:\r\n✔️Loại Sạc: SẠC LINH KIỆN THAY THẾ.\r\n✔️Hình thức: SẠC MỚI (chưa qua sử dụng).\r\n✔️Bộ sản phẩm bao gồm: Thân sạc, cáp nguồn sạc, Hộp đựng.\r\n✔️Thông số sạc:\r\n➕Công suất đầu ra (Out-put): 19.5V-6.7A (130W)\r\n➕Loại đầu ghim: ĐẦU KIM NHỎ\r\n➕Kích thước đầu ghim: 4.5 x 3.0 mm\r\nLưu ý để mua đúng loại sạc: (XEM VÀ SO SÁNH VỚI SẠC GỐC ĐANG DÙNG)\r\n✔️BẮT BUỘC mua đúng loại đầu ghim và kích thước đầu ghim sạc.\r\n✔️BẮT BUỘC mua đúng số Vol với cục sạc gốc/ máy laptop.\r\n✔️CÓ THỂ chọn mua sạc có thông số Ampe cao hơn so với cục sạc gốc.\r\n=========\r\nCAM KẾT:\r\n✔️Bán sản phẩm đúng mô tả chất lượng.\r\n✔️Luôn TEST SẢN PHẨM hoạt động tốt bằng board test chuyên dụng trước khi đóng gói.\r\n✔️Đóng gói sản phẩm bằng hộp giấy carton cứng CHUẨN CHỐNG SỐC, CHỐNG NƯỚC có TEM SEAL NIÊM PHONG bên ngoài hộp để đảm bảo đúng và đủ hàng không bể vỡ.\r\n✔️Hỗ trợ giao hàng HỎA TỐC 2H \r\n✔️Bảo hành sản phẩm (1 đổi mới 1) nghiêm túc, đổi trả nhanh gọn hậu bán hàng.\r\nKHUYẾN KHÍCH:\r\n✔️Khách hàng QUAY LẠI VIDEO MỞ HỘP SẢN PHẨM để khiếu nại nếu có sự cố sản phẩm do quá trình vận chuyển.\r\n✔️Giữ lại hộp đựng sản phẩm 07 đầu sau khi nhận hàng (mua nhầm, đổi trả...).</font></span><br></p>', 0, 44),
(101, 'Router Wifi D-Link DIR-809', 'TBM', 125000, 2800000, 2600000, 2, 'freesize', '1695561327_Router Wifi D-Link DIR-809.jpg', '', '<span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">BẢO HÀNH 2 NĂM. THÔNG TIN CHI TIẾT Thiết bị mạng D-Link DIR 809 Cũng giống các thiết bị mạng khác của D-Link, việc cài đặt và sử dụng wireless router D-Link DIR-809 rất dễ dàng. Đây là một thiết bị hỗ trợ tính năng Easy Setup của D-Link và cài đặt không cần đĩa CD. Thiết bị mạng D-Link DIR 809 Thiết bị mạng D-Link DIR 809 CÀI ĐẶT + SỬ DỤNG GIAO DIỆN WEB: Trong điều kiện chưa bật nguồn điện cho …</span>', 0, 40),
(102, 'Wi-Fi Di Động 4G LTE TP-Link M7350', 'TBM', 100000, 400000, 350000, 30, '35 36 37 38', '1695132964_Wi-Fi Di Động 4G LTE TP-Link M7350.jpg', '', '<h4><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">Bảo hành: 24 Tháng /Mô tả sản phẩm​: Hỗ trợ chuẩn 4G LTE với tốc độ tải xuống lên đến 150Mbps và tốc độ tải lên lên đến 50Mbps Hỗ trợ 10&nbsp;thiết bị kết nối cùng lúc Thông tin trực quan với màn hình hiển thị tích hợp Pin&nbsp;dung lượng 2000mAh cho 8&nbsp;tiếng hoạt động liên tục Trang bị khe cắm thẻ nhớ micro SD hỗ trợ dung lượng lưu trữ lên đến 32G Tự động nhận dạng và cấu hình&nbsp;thẻ SIM Việt …</span></h4>', 0, 40),
(103, 'Switch D-Link DGS-1016C', 'TBM', 1500000, 4000000, 3000000, 30, 'freesize', '1694773338_1553510472__1511262234_500x500.jpg', '', '<p>BẢO HÀNH 2 NĂM TỔNG QUAN VỀ BỘ CHIA MẠNG D-Link DGS-1016C cổng 10/100/1000Mbps RJ45; MDXI...tự động dò tìm tốc độ, tính năng chuyển mạch Store &amp; Farward.</p><p>Hỗ trợ Bitcoin, Bootroom cho phòng game</p><p>Gắn được Rck 19 ich</p><p>Vỏ bằng kim loại&nbsp;</p><p>Nguồn điện cung cấp: 100 to 240VAC</p><p>Công suất tiêu thụ: Max4.48walts</p>', 0, 40),
(104, 'USB Wifi Không Dây Dlink DWA-131', 'TBM', 400000, 425000, 410000, 30, 'freesize', '1695132789_USB Wifi Không Dây Dlink DWA-131.jpg', '', '<p><span style=\"font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\"><font color=\"#000000\" style=\"\">BẢO HÀNH 2 NĂM - Card mạng Wireless Nano USB chuẩn N300Mbps. - DWA-131 đáp ứng theo tiêu chuẩn IEEE 802.11n, IEEE 802.11g. - Nút kết nối nhanh WPS. - Cổng giao tiếp: USB 2.0</font></span><br></p>', 0, 40),
(105, 'Sạc Laptop Dell 19.5V-4.62A (Chân Kim To) + Tặng kèm dây nguồn', 'LKLT', 105000, 150000, 145000, 15, 'M L XL XXL', '1694962663_Sạc Dell 4.62A chân to.jpg', '', '<p><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">Thương hiệu: Dell<br></font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">Bảo Hành: 12 tháng<br></font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">THUỘC TÍNH SẢN PHẨM<br></font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">Hãng sản xuất: Dell.<br></font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">Tương thích với: Dell.</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">Thông số sạc:</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">-        Điện áp vào (input) :   100V - 240V</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">-        Điện áp ra (output) :   19.5V – 4.62A</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">-        Công suất                      :  90 W</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">-        Chuẩn chân cắm           :    7.4 mm x 5.0 mm Chân Kim</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">\r\n</font></span><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\" style=\"\">-        Tần số làm việc        :    50 -60 Hz<br></font></span><font color=\"#000000\" style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">   - Sạc không còn nguyên vẹn do bị rơi vỡ, hoặc sạc bị ngập nước, tem bảo hành bị rách hoặc không có<br></span></font><font color=\"#000000\" style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">Cam kết:<br></span></font><font color=\"#000000\" style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">   - Sản phẩm bán ra là sản phẩm mới 100%<br></span></font><font color=\"#000000\" style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">   - Chúng tôi cam kết luôn đặt chất lượng các sản phẩm lên hàng đầu<br></span></font><font color=\"#000000\" style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">   - Không bán sản phẩm chất lượng kém làm ảnh hưởng máy trong  quá trình sử dụng<br></span></font><font color=\"#000000\" style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">   - Bảo hành nhanh chóng , nghiêm túc, chính xác<br></span></font><font color=\"#000000\" style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">   Dịch vụ:<br></span></font><font color=\"#000000\" style=\"\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">   - Sửa chữa nhanh chóng, ngay tức thì với chất lượng và hiệu quả cao.<br></span></font><font color=\"#000000\" style=\"\"><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">    - Sự hài lòng của quý khách là động lực để chúng tôi phát triển.</span></font></p><p></p><ul></ul><p></p>', 0, 44),
(106, 'Thẻ Nhớ Micro Hikvision HS-TF-C1 64GB Class 10 (92MBS)', 'TBLT', 100000, 250000, 200000, 30, 'M L XL XXL', '1694962417_Thẻ Nhớ Micro Hikvision  64GB.jpg', '', '<p>Thẻ nhớ Micro SD Dung lượng 64GB tốc độ đọc: 92MB/s Tốc độ ghi: 20MB/s</p><p>Sử dụng: Camera quan sát, điện thoại, lưu trữ thân thiện với môi trường</p><p>An toàn tuyệt đối cho người sử dụng</p><p>Chuyên dùng cho camera IP. máy ảnh,....</p>', 0, 41),
(107, 'Thẻ Nhớ Micro SD 128GB HIKVISION HS-TF-C1(STD)128G', 'TBLT', 100000, 250000, 200000, 30, 'M L XL XXL', '1694962075_Thẻ Nhớ Micro SD 128GB HIKVISION.jpg', '', '<p>Thông số kỹ thuật thẻ nhớ Micro SD 128Gb HIKVISON-C1 Model: HIKVISON mới 100%. Thương hiệu Hikvison, nhà sẳn xuất số 1 thế giới về Cmaera</p><p>Tốc độ lên đến 92MB/s Hnagf chính hãng HikVison Dùng cho tất cả các thiết bị hỗ trợ thẻ nhớ gắn ngoài</p><p>Xuất xứ tại Trung Quốc, thẻ nhớ Hikvion Micro SD 128GB Chuyên dùng cho Camera, điện thoại,...</p>', 0, 41),
(108, 'Dây Mạng LB-LINK CAT6', 'TBVP', 100000, 250000, 200000, 15, 'M L XL XXL', '1694961038_Dây Mạng LB-LINK CAT6.jpg', '', '<p>BẢO HÀNH 36 THÁNG</p><p>- Cáp mạng LB-CAT6 UPT CCA BR được sử dụng chất liệu CCA cho mạng LAN 10/100/1000 Base</p><p>- Bên cạnh đó, mỗi cặp dây xoắn đôi được xoắn chặt với nhau để tránh nhiễu chéo</p><p>- Khoảng cách truyền tín hiệu mạng là 120 - 150 mét khoảng cách ohuf hợp với hầu hết các thiết bị máy tính</p>', 0, 46),
(109, 'Phím E (Bàn phím giả cơ 16 triệu màu)', 'BPC', 200000, 400000, 359000, 30, 'M L XL XXL', '1694960687_Phim E.jpg', '', '<p>Một trong chiếc bàn phím thông dụng giành cho những bạn thích giả cơ</p><p>Với 16 triệu màu người dùng có thể thay đổi tùy ý</p><p>Với những tiếng nút sẽ không quá to làm ảnh hưởng đến người khác</p><p>Với chế độ bảo hành 1 năm người dùng có thể trải nghiệm 1 cách thoải mái</p>', 0, 42),
(110, 'Chuột chơi game Dareu LM103', 'BPC', 100000, 250000, 200000, 30, 'M L XL XXL', '1694958859_LM103.jp.jpg', '', '<p>Thông tin sản phẩm bảo hành 24 tháng. Hãng sản xuất Dareu Mô tả sẳn phẩm \"Sensor: ATC7515 DPI: 1000 Polling rate: 100hz</p><p>Switch: Huano(10 triệu lượt kick) kích thướ: 118*61*38.4mm</p>', 0, 42),
(111, 'Switch D-Link DGS 1024C 24-Port 101001000 Mbps', 'TBM', 1500000, 4000000, 3500000, 15, 'freesize', '1694958797_Switch D-Link DGS 1024C.jp.jpg', '', '<p>BẢO HÀNH 2 NĂM. thiết bị mạng/ Switch D-Link 24P DGS 1024C là dòng sản phẩm đang được rất ưa chuộng cảu thương hiệu D-Link, thiết bị mạng DGS-1024C mang đến cho người dùng những trải nghiệm hoàn toàn mới. Không chỉ được đánh giá cao bởi thiết kế nhỏ gọn, đơn giản, dể sử dụng, vỏ kim loại sản phẩm có khả năng mang lại hiệu quả công việc cao.</p>', 0, 40),
(112, 'Chuột Không Dây Fuhlen A05GS', 'BPC', 100000, 210000, 199000, 23, 'cvc', '1695134232_chuot-khong-day-fuhlen-.jpg', '', '<h3><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">- Thiết kế Ergonomic, 3 phím chức năng.<br></span><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\"> - Đầu tiếp nhận mini receiver, công nghệ Nano 2.4Ghz,&nbsp; độ phân giải 1200DPI, khoảng cách hoạt động 10m.<br></span><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\"> - Tuổi thọ pin: 1 năm, với 1 pin AA Alkaline<br></span><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">- Mầu: Pink, Black&nbsp;<br></span><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">- Công nghệ quang tiết kiên pin 12 tháng<br></span><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">- Kích thước: 100*59*38mm<br></span><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">- Trọng lượng: 51.5g<br></span><span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px;\">- Bảo hành: 24 tháng …</span></h3>', 0, 42),
(113, 'Coolerplus Cat 5', 'TBVP', 300000, 450000, 415000, 20, 'cvc', '1695566345_coolerplus-cat-5-1545022061.jpg', '', '<p>Cáp mạng CoolerPlus Cat5&nbsp;đạt tất cả các yêu cầu về hiệu suất chuẩn 5E của TIA/EIA 568-B.2 và ISO/IEC 11801 Class D. </p><p>Chúng thỏa mãn tất cả các yêu cầu hiệu suất cho những ứng dụng hiện tại và tương lai chẳng hạn như : Gigabit Ethernet, 100BASE-TX, Token Ring, 155 Mbps ATM, 100 Mbps TP-PMD, ISDN, video dạng digital hay analog, digital voice (VoIP)… </p><p>Cáp được sản xuất màu : vàng được đóng gói vào<span style=\"color: rgb(102, 102, 102); font-family: font-main; font-size: 13px; letter-spacing: 0.1px; background-color: rgb(255, 255, 255);\"> …</span><br></p>', 0, 46);
INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `gianhap`, `giasp`, `giamgia`, `soluong`, `size`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(114, 'Camera EZVIZ H3C 2K+', 'Camera', 450000, 680000, 655000, 30, '', '1695568776_2.jpg', '', '<p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Bảo vệ ngoài trời thông minh đơn giản\r\nhơn với tầm quan sát sắc nét hơn<o:p></o:p></p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); min-height: 1em;\"><span style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Camera ghi lại mọi việc với độ rõ nét\r\n2K⁺ và hiển thị màu sắc vào ban đêm. H3c 2K⁺ bổ sung thêm tính năng thông minh\r\ncho một camera thiết yếu, được thiết kế để đáp ứng tất cả các yêu cầu về an\r\nninh ngoài trời, cả ban ngày lẫn ban đêm. Nhận dạng cử chỉ vẫy tay, đàm thoại\r\nhai chiều, phát hiện chuyển động của con người và các tính năng độc đáo đáng\r\nkinh ngạc khác, tất cả đều được tích hợp trong thiết bị này.<o:p></o:p></span></p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Nhìn thấy màu sắc, ngay cả vào ban đêm.</p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Đooj phân giải 2k</p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Ghi hình màu ban đêm</p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Trò chuyện 2 chiều</p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">-  Tùy chỉnh bằng giọng nói</p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">-  Chủ động phòng vệ và cói báo động </p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Hỗ trợ thẻ nhớ</p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"text-align-center\" style=\"margin: 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); min-height: 1em;\"><span style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Cảm thấy không hài lòng với những hình\r\nảnh đen trắng nhòe mờ, bị phơi sáng quá mức vào ban đêm? H3c 2K+ giúp bảo vệ\r\ntrong đêm chặt chẽ một cách dễ dàng hơn bằng cách khôi phục màu sắc và chi\r\ntiết. Ngoài tầm nhìn ban đêm IR khá sắc nét, thiết bị camera này có thể tăng\r\nsáng cho môi trường bằng hai đèn spotlight tích hợp để mang đến những cảnh quay\r\nđêm có màu sắc sống động.<span style=\"font-size: 1.125rem; background-color: rgb(240, 240, 239);\"><o:p></o:p></span></span></p>', 0, 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`id`, `name`, `size_id`) VALUES
(1, 'S', 1),
(2, 'M', 2),
(3, 'L', 3),
(4, 'XL', 4),
(5, 'XXL', 5),
(6, 'Freesize', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `id_slide` int(11) NOT NULL,
  `danhmuc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slide`
--

INSERT INTO `tbl_slide` (`id_slide`, `danhmuc`, `hinhanh`, `thutu`) VALUES
(1, 'slide 1', '1640435964_Supreme.jpg', 1),
(2, 'slide 2', '1639887409_slide4.jpg', 2),
(3, 'slide 3 ', '1639887383_slide1.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `gianhap` varchar(110) NOT NULL,
  `soluongban` int(11) NOT NULL,
  `loinhuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `gianhap`, `soluongban`, `loinhuan`) VALUES
(1, '2021-10-23', 50, '15500000', '0', 25, '1000000'),
(2, '2021-10-22', 55, '25500000', '0', 25, '2000000'),
(3, '2021-10-21', 50, '15600000', '0', 30, '2034300'),
(4, '2021-10-24', 10, '36500000', '0', 30, '3560000'),
(5, '2021-10-25', 2, '5600000', '0', 10, '3450000'),
(6, '2021-10-26', 8, '6500000', '0', 9, '4000000'),
(7, '2021-10-28', 2, '600000', '0', 10, '300000'),
(8, '2021-10-29', 8, '500000', '0', 9, '300000'),
(9, '2021-10-31', 8, '500000', '0', 9, '400000'),
(10, '2021-10-01', 8, '500000', '0', 9, '200000'),
(11, '2021-08-01', 8, '700000', '0', 9, '400000'),
(12, '2021-10-03', 8, '700000', '0', 9, '500000'),
(14, '2021-12-14', 3, '1500000', '30000', 1, '1000000'),
(43, '2021-12-15', 7, '25568000', '13900000', 20, '11668000'),
(44, '2021-12-13', 3, '1800000', '300000', 1, '1000000'),
(45, '2021-12-16', 10, '10310000', '6000000', 12, '4310000'),
(46, '2021-12-25', 5, '5420000', '2950000', 6, '2470000'),
(47, '2021-12-26', 7, '12668000', '8250000', 15, '4418000'),
(48, '2022-10-12', 2, '7600000', '3300000', 5, '4300000'),
(49, '2023-09-13', 8, '11480000', '5000000', 8, '6480000'),
(50, '2023-09-14', 2, '1839000', '1000000', 5, '839000'),
(51, '2023-09-29', 1, '398000', '200000', 2, '198000'),
(52, '2023-10-04', 4, '2795000', '1950000', 5, '845000'),
(53, '2023-10-05', 3, '5575000', '3000000', 6, '2575000'),
(54, '2023-10-06', 14, '10375000', '7500000', 25, '2875000'),
(55, '2023-10-08', 2, '2555000', '1800000', 5, '755000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `tbl_hoanhang`
--
ALTER TABLE `tbl_hoanhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_hoanhang`
--
ALTER TABLE `tbl_hoanhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
