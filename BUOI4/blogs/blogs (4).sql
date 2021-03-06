-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-04-18 19:52:36
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `blogs`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` int(255) DEFAULT NULL COMMENT '1-active 2-deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'Nguyễn Đình Văn', 'dinhvanmta04111994@gmail.com', '1234567', 1),
(2, 'Ngô Xuân Thọ', 'thoxuan34@gmail.com', '33773773bn', 1),
(3, 'Ngo Thi Tho', 'tho0333@gmail.com', '136904bnggg', 1),
(4, 'Vu Van Anh', 'vanmanh3333@gmail.com', '44efdfdff', 1),
(5, 'Ngo Duong Lap', 'duonglap345@gmail.com', '333feefdf', 1),
(6, 'Nguyen Viet Xuan', 'vietxuan122@gmail.com', '44444dfff', 1),
(9, 'nguyễn thị mai', 'mai1234@gmail.com', NULL, NULL),
(10, 'ngô thị hải ', 'ngohai456@gmail.com', NULL, 0),
(11, 'nguyễn đức huy', 'duchuy3478@gmail.com', '550a141f12de6341fba65b0ad0433500', 1),
(12, 'nguyễn đình thanh', 'dinhthanh0455@gmail.com', '2d3884c647d5cae3232c78abf1e9f7b9', 1),
(14, 'ngô thị loan', 'ngothiloan1994@gmail.com', '99643baadb5a5fc1482615f642e2bf34', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'HTML1', 'HTML122'),
(2, 'Html 7', 'HTML9 mới nhất hot 2020'),
(3, 'Php', 'PHP9'),
(5, 'Word', 'WORD 2019'),
(6, 'Exel', 'EXEL 2019'),
(7, 'Pownpoint', 'POWNPOINT 2019'),
(8, 'Python', 'PYTHON'),
(9, 'Visual C', 'Visual Basic'),
(15, 'bootstrap', 'bootstrap co loi ich cho moij cong viec'),
(18, 'Javascript', 'JS'),
(30, 'test', 'test du lieu lay tu form'),
(31, 'python', 'lập trình python 6');

-- --------------------------------------------------------

--
-- テーブルの構造 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_ad` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `contents`, `thumbnail`, `author_id`, `category_id`, `status`, `created_ad`) VALUES
(1, 'Thêm ca mắc Covid-19 tại ổ dịch Hạ Lôi, Mê Linh', 'Chiều 11/4, Bộ Y tế công bố một ca mắc Covid-19 mới liên quan đến ổ dịch Hạ Lôi, Mê Linh. Như vậy tại ổ dịch này đã ghi nhận 6 ca mắc Covid-19, là ổ dịch phức tạp nhất Hà Nội hiện nay.', 'Ca mắc mới Covid-19, ca 258 tại Việt Nam là bệnh nhân nữ, 47 tuổi, quốc tịch Việt Nam, trú tại xóm Hội, Hạ Lôi, Mê Linh, Hà Nội.\r\n\r\nBệnh nhân là mẹ bệnh nhân 257 đang được cách ly tại Bệnh viện Bệnh viện Bệnh Nhiệt đới Trung ương cơ sở 2. Bệnh nhân đã được lấy mẫu xét nghiệm và kết luận dương tính với virus SARS-CoV-2 vào ngày 11/4.\r\n\r\nTrước đó, con gái của bệnh nhân được xác định là ca mắc Covid-19 thứ 257 tại Việt Nam. Bệnh nhân là học sinh, 15 tuổi trong thời gian nghỉ học chỉ ở nhà không đi đâu. \r\n\r\nNgày 20/3, bệnh nhân 243 (là bạn của bố bệnh nhân) đến nhà chơi và nói chuyện với bố bệnh nhân. Ngày 8/4, bệnh nhân có biểu hiện sốt, chảy nước mũi. Ngày 9/4, bệnh nhân được lấy mẫu xét nghiệm. Ngày 10/4, xét nghiệm cho kết quả dương tính với virus SARS-CoV-2.\r\n\r\nBố bệnh nhân cũng đã được lấy mẫu xét nghiệm và cho kết quả âm tính. Hiện bệnh nhân đang được cách ly, điều trị tại Bệnh viện Bệnh Nhiệt đới Trung ương cơ sở 2.\r\n\r\nThêm ca mắc Covid-19 tại ổ dịch Hạ Lôi, Mê Linh - 1Nhấn để phóng to ảnh\r\nToàn bộ thôn Hạ Lôi bị phong toả ngay sau khi ghi nhận bệnh nhân đầu tiên. Đến nay, liên quan đến ổ dịch này đã xác định 6 ca mắc Covid-19. \r\n\r\nLiên quan đến ổ dịch Hạ Lôi, Mê Linh (Hà Nội) đến nay đã ghi nhận 6 trường hợp dương tính virus SARS-CoV-2, trong đó ca bệnh 243 được phát hiện đầu tiên. Bệnh nhân này có tiền sử từng đến BV Bạch Mai, đi lại nhiều giữa Hà Nội, Mê Linh và đưa người nhà đến BV Phụ sản Hà Nội khám.\r\n\r\nLiên quan đến bệnh nhân này đã có lây nhiễm Covid-19 cho 5 bệnh nhân, đó là bệnh nhân 250, 253, 254, 257, bệnh nhân 258 là hàng xóm, chị dâu và hai mẹ con của hàng xóm của bệnh nhân. Trong đó, bệnh nhân 254 có đến BV Thận Hà Nội chạy thận.\r\n\r\nHà Nội đã tiến hành khoanh vùng cách ly toàn bộ thôn Hạ Lôi với 2.711 hộ gia đình (11.077 người), lấy 270 mẫu xét nghiệm những người có tiếp xúc gần.\r\n\r\nNhư vậy đến nay cả nước đã ghi nhận 258 ca mắc Covid-19, với 114 ca đang điều trị tại các cơ sở Y tế, 144 trường hợp đã được công bố khỏi bệnh/xuất viện. Ngoài ra, theo báo cáo của Tiểu ban Điều trị Ban chỉ đạo Quốc gia phòng, chống dịch Covid-19, số ca có kết quả xét nghiệm 1 lần âm tính với SARS-CoV-2 là 13 ca. Số ca có kết quả xét nghiệm 2 lần âm tính với SARS-CoV-2 là 12 ca.\r\n\r\nĐến nay, tổng số người tiếp xúc gần và nhập cảnh từ vùng dịch đang được theo dõi sức khỏe (cách ly): 72.508, trong đó:\r\n\r\n- Cách ly tập trung tại bệnh viện: 1.198;\r\n\r\n- Cách ly tập trung tại cơ sở khác: 17.519;\r\n\r\n- Cách ly tại nhà, nơi lưu trú: 53.791.\r\n\r\nLiên quan đến dịch Covid-19 tại BV Bạch Mai, vào 0h ngày 12/4 Bệnh viện Bạch Mai sẽ được dỡ bỏ phong toả. Việc kết thúc cách ly này có hiệu lực kể từ 0h ngày 12/4.\r\n\r\nTheo quyết định trên, Bệnh viện Bạch Mai đã thực hiện cách ly y tế đủ 14 ngày, đáp ứng đủ các yêu cầu như quy định của Bộ Y tế. Đồng thời, căn cứ tình hình thực tế, quận Đống Đa quyết định kết thúc việc cách ly y tế đối với Bệnh viện Bạch Mai để bệnh viện có thể tiếp tục thực hiện công tác khám, chữa bệnh bình thường.\r\n\r\nBệnh viện Bạch Mai có trách nhiệm tiếp tục thực hiện các biện pháp giám sát và phòng, chống dịch Covid-19 theo đúng hướng dẫn tạm thời của Bộ Y tế tại Quyết định số 963/QĐ-BYT ngày 18/3/2020 và Chỉ thị 06/CT-BYT ngày 28/3/2020, về việc tăng cường các biện pháp phòng, chống dịch COVID-19 trong các cơ sở y tế.\r\n\r\nGS.TS Nguyễn Quang Tuấn, Giám đốc BV Bạch Mai cho biết, sau 0h ngày 12/4, bệnh viện được dỡ bỏ cách ly nhưng vẫn giữ hoạt động như hiện nay. Theo đó, bệnh nhân chưa nhận điều trị ngoại trú, tái khám  mà chỉ điều trị nội trú và cấp cứu các trường hợp nặng tuyến dưới chuyển lên.\r\n\r\nDự kiến từ đầu tháng 5, bệnh viện sẽ trở lại hoạt động khám chữa bệnh bình thường.\r\n\r\nTheo ông Tuấn, trong 2 tuần cuối tháng 4, bệnh viện sẽ tập chung đẩy mạnh công tác phòng chống, chống lây chéo trong bệnh nhân, trong bệnh viện, đảm bảo an toàn cho cán bộ y tế và người dân đến khám. Bệnh viện cũng sẽ rà soát, nâng cấp, đầu tư thêm hệ thống khử khuẩn tay, bố trí ghế chờ, khu phòng khám với khoảng cách theo khuyến cáo của Bộ Y tế.', '1.jpg', 1, 1, 1, '2020-04-11 00:47:12'),
(2, 'Các bác sĩ dùng chất phóng xạ để phát hiện tế bào ung thư như thế nào?', 'Bằng cách bơm một lượng chất phóng xạ rất nhỏ vào cơ thể, các bác sĩ có thể chẩn đoán sự hiện diện của tế bào ung thư, thông qua một kỹ thuật chụp cắt lớp Positron!', 'Chụp cắt lớp Positron (PET: Positron Emission Tomography) là phương pháp dùng chất phóng xạ liều nhỏ để ghi hình các vùng có tốc độ chuyển hóa cao, cung cấp thông tin về chức năng của các cơ quan trong cơ thể. Một trong những ứng dụng nổi bật nhất của PET chính là phát hiện ung thư.\r\n\r\nCác bác sĩ dùng chất phóng xạ để phát hiện tế bào ung thư như thế nào? - 1Nhấn để phóng to ảnh\r\nThông thường, trong các bệnh viện có năng lực thực hiện PET sẽ được trang bị kèm loại máy gia tốc hạt có tên gọi là Cyclotron. Cyclotron có khả năng tạo ra đồng vị phóng xạ (thường là Flo-18) cần cho việc đánh dấu trong kỹ thuật PET. Một điểm đặc biệt là đồng vị phóng xạ được tạo ra sẽ biến mất chỉ trong vào vài tiếng, do sự phân rã phóng xạ. Do đó, quá trình sản xuất đồng vị phóng xạ bắt buộc phải thực hiện trong một khoảng thời gian giới hạn, trước khi tiến hành Chụp cắt lớp Positron.\r\n\r\nCác bác sĩ dùng chất phóng xạ để phát hiện tế bào ung thư như thế nào? - 2Nhấn để phóng to ảnh\r\nĐồng vị phóng xạ được tạo ra từ Cyclotron được dùng để làm gì?\r\n\r\nFlo-18 sau khi tạo ra sẽ được liên kết với các loại phân tử khác nhau, bằng một loạt các phản ứng hóa học, để tạo ra các sản phẩm phóng xạ riêng biệt, phụ thuộc vào những gì mà bác sĩ muốn quan sát thông qua PET.\r\n\r\nCác bác sĩ dùng chất phóng xạ để phát hiện tế bào ung thư như thế nào? - 3Nhấn để phóng to ảnh\r\nĐối với bệnh ung thư, FDG (một dạng phóng xạ của đường Glucose) là một chất đánh dấu khá phổ biến, bởi căn bệnh này có thể phát hiện thông qua tốc độ tiêu hóa Glucose của tế bào.\r\n\r\nChất phóng xạ sẽ hoạt động thế nào khi được bơm vào cơ thể bệnh nhân?\r\n\r\nKhi một liều nhỏ chất phóng xạ, trong trường hợp này là FDG, được bơm vào cơ thể bệnh nhân, nó sẽ được hệ tuần hoàn đưa đi khắp cơ thể, trong quá trình di chuyển FDG sẽ bị các mục tiêu (có thể là protein ở não hoặc tế bào ung thư) hấp thụ một lượng lớn, chỉ sau vài phút, phần không bị hấp thụ đương nhiên sẽ bị đẩy ra khỏi hệ tuần hoàn. Với khả năng phát hiện FDG, máy PET cho phép nhìn thấy những điểm tập trung chất đánh dấu phóng xạ trong cơ thể, thông qua bức xạ phát ra trong quá trình FDG phân ra, đồng nghĩa với việc phát hiện được thứ đã hấp thụ nó.', '2.jpg', 2, 1, 1, '2020-04-12 00:48:44'),
(3, 'Phía Mỹ lần thứ 3 chỉ trích Trung Quốc đâm chìm tàu Việt Nam', 'Các thượng nghị sĩ khẳng định Mỹ sẽ sát cánh cùng các nước Đông Nam Á chống lại bất kỳ hành động vi phạm luật pháp quốc tế nào của Trung Quốc.', 'Sau khi hai bộ Ngoại giao và bộ Quốc Phòng Mỹ lần lượt lên tiếng chỉ trích Trung Quốc vì đã đâm chìm tàu cá Việt Nam, các Nghị sĩ Mỹ tiếp tục lên tiếng phản đối chính quyền Bắc Kinh vì đã có hành vi phạm pháp trên biển.\r\n\r\nTrong thông cáo chung ngày 10-4 (giờ địa phương), Chủ tịch Ủy ban Đối ngoại Thượng viện Jim Risch, Chủ tịch Tiểu ban Đông Á - Thái Bình Dương và Chính sách An ninh mạng Quốc tế của Thượng viện - ông Cory Gardner cùng hai thượng nghị sĩ Bob Menendez, Ed Markey đã bày tỏ quan ngại sâu sắc về vụ tàu hải cảnh Trung Quốc đâm chìm tàu cá Việt Nam ngày 2-4. \r\n\r\nCụ thể, thượng nghị sĩ Jim Risch nhấn mạnh hành vi đâm chìm tàu nước khác cho thấy Bắc Kinh đang trắng trợn đe dọa các quốc gia xung quanh để khẳng định yêu sách chủ quyền phi pháp ở biển Đông, chưa kể hàng loạt hoạt động bất hợp pháp lâu nay trên các thực thể mà Trung Quốc chiếm đóng trái phép.\r\n\r\nPhía Mỹ lần thứ 3 chỉ trích Trung Quốc đâm chìm tàu Việt Nam - 1Nhấn để phóng to ảnh\r\nChủ tịch Ủy ban Đối ngoại Thượng viện Mỹ Jim Risch trả lời họp báo hồi tháng 12-2019. Ảnh: CNN\r\n\r\n\"Mỹ sẽ phối hợp với các đồng minh, đối tác trong khu vực để giữ vững một Ấn Độ Dương - Thái Bình Dương tự do và rộng mở, thúc đẩy hòa bình ở biển Đông\" - thượng nghị sĩ Risch cho biết. \r\n\r\nVề phía thượng nghị sĩ Bob Menendez, ông khẳng định hành động của Trung Quốc rất đáng lên án, nhất là trong bối cảnh cả thế giới đang phải nỗ lực cùng nhau đẩy lùi đại dịch COVID-19. \r\n\r\n\"Nhiệm vụ đầu tiên mọi lực lượng cảnh sát biển là đảm bảo được an toàn trên biển chứ không phải góp phần biến nó thành một khu vực nguy hiểm, vô luật pháp. Việc tàu hải cảnh Trung Quốc đâm chìm tàu cá Việt Nam mà không có lý do chính đáng là cách hành xử quá thiếu an toàn và không thể chấp nhận được, rất đáng bị lên án kịch liệt\" - ông Menendez gay gắt tuyên bố. \r\n\r\nTrong khi đó, Chủ tịch Tiểu ban Đông Á - Thái Bình Dương và Chính sách An ninh mạng Quốc tế của Thượng viện - thượng nghị sĩ Cory Gardner kêu gọi Nhà Trắng nên có động thái dứt khoát, sử dụng các công cụ pháp lý như Đạo luật Sáng kiến Trấn an châu Á (ARIA) để chống lại các hành vi \"hiểm ác\" của Bắc Kinh và giữ vững quyền tự do hàng hải, hàng không ở biển Đông. \r\n\r\nARIA được Tổng thống Donald Trump ký ban hành vào tháng 12-2018 là ví dụ hiếm hoi về sự đồng thuận cao giữa chính quyền và Quốc hội Mỹ trong xử lý các thách thức an ninh tại Ấn Độ Dương - Thái Bình Dương. \r\n\r\nARIA nhấn mạnh cần tập trung nguồn lực chống ảnh hưởng của Trung Quốc làm phương hại hệ thống quốc tế dựa trên luật pháp, nhất là ở biển Đông. Các vấn đề vi phạm bản quyền và an ninh mạng cũng được chú trọng nhưng cũng để ngỏ khả năng hợp tác với Bắc Kinh. ARIA cũng đề cập nguy cơ hạt nhân Triều Tiên, khủng bố ở Đông Nam Á, đồng thời khuyến khích hợp tác kinh tế, thương mại, xuất khẩu năng lượng (khí hóa lỏng) và thúc đẩy quyền con người.\r\n\r\nCuối thông cáo, thượng nghị sĩ Ed Markey nhấn mạnh Mỹ sẽ luôn luôn lên tiếng phản đối bất kỳ hành động vi phạm luật pháp quốc tế nào của Trung Quốc. Đồng thời, cường quốc này sẽ không quay mặt làm ngơ trong lúc các nước Đông Nam Á bị Bắc Kinh dọa nạt. \r\n\r\nÔng Markey cũng khẳng định Mỹ chắc chắn sẽ tiếp tục hỗ trợ các đồng minh, đối tác trong khu vực đối mặt với Trung Quốc để giữ vững quyền tự do lưu thông, tự do thương mại theo đúng luật pháp quốc tế.\r\n\r\nTrung Quốc liên tục bị chỉ trích\r\n\r\n+ Ngày 3-4: Người phát ngôn Bộ Ngoại giao Việt Nam (VN) Lê Thị Thu Hằng cho biết đại diện Bộ Ngoại giao đã giao thiệp với đại diện Đại sứ quán Trung Quốc (TQ) và trao công hàm phản đối, yêu cầu phía TQ điều tra làm rõ, xử lý nghiêm đối với nhân viên công vụ và tàu hải cảnh TQ đã đâm chìm tàu cá của ngư dân VN. VN yêu cầu TQ không để tái diễn những hành động tương tự, đồng thời bồi thường thỏa đáng các thiệt hại cho ngư dân VN.\r\n\r\n+ Ngày 6-4: Người phát ngôn Bộ Ngoại giao Mỹ Morgan Ortagus đã phát đi thông cáo báo chí về vụ việc, nhấn mạnh Mỹ “cực kỳ quan ngại” hành động của TQ. “Đây là vụ việc mới nhất trong chuỗi dài các hành động của TQ nhằm áp đặt các yêu sách trái pháp luật hàng hải và gây bất lợi cho các quốc gia láng giềng Đông Nam Á trên biển Đông” - thông cáo báo chí phía Mỹ viết.\r\n\r\nWashington cũng nhận định TQ lợi dụng tình hình thế giới tập trung chống đại dịch COVID-19 để tuyên bố các “trạm nghiên cứu mới” (trái phép) tại các căn cứ quân sự ở Đá Chữ Thập và Đá Subi; hạ cánh máy bay quân sự (trái phép) tại Đá Chữ Thập. TQ cũng triển khai trái phép lực lượng dân quân biển quanh quần đảo Hoàng Sa.\r\n\r\n+ Ngày 8-4: Bộ Ngoại giao Philippines lên tiếng ủng hộ VN liên quan đến việc tàu hải cảnh TQ đâm tàu cá ngư dân VN. \r\n\r\nBộ Ngoại giao Philippines nhấn mạnh rằng các vụ việc như đâm chìm tàu cá VN vừa qua đã khiến quan hệ giữa ASEAN và TQ bị xói mòn trong bối cảnh hai bên đang thúc đẩy đàm phán Bộ quy tắc ứng xử trên biển Đông (COC). Việc TQ tạo ra các sự cố như va đâm tàu trên biển sẽ không thể làm phát sinh hay tạo ra thêm cho chính quyền Bắc Kinh quyền lợi mới hợp pháp liên quan đến chủ quyền trên biển. Philippines kêu gọi TQ tập trung chống dịch COVID-19 hơn là hành xử vô lý để giành nguồn cá hay để bảo vệ yêu sách “quyền lịch sử” (đã bị Tòa Trọng tài bác bỏ vào năm 2016 khi dựa vào quy định của Công ước Liên Hiệp Quốc về Luật Biển - UNCLOS 1982).\r\n\r\n+ Ngày 9-4: Bộ Quốc phòng Mỹ phát đi thông cáo báo chí cho biết cơ quan này \"quan ngại sâu sắc\" về việc tàu hải cảnh TQ đâm chìm tàu cá VN tại vùng biển thuộc quần đảo Hoàng Sa của VN trên biển Đông.\r\n\r\nTheo tuyên bố của Bộ Quốc phòng Mỹ, hành động của TQ đi ngược tầm nhìn của Washington về một khu vực Ấn Độ Dương-Thái Bình Dương mở và tự do mà trong đó, mọi quốc gia, dù lớn hay nhỏ, đều được đảm bảo chủ quyền, không bị ép buộc và có quyền phát triển kinh tế phù hợp với các quy tắc và chuẩn mực quốc tế.\r\n\r\nWashington sẽ tiếp tục hỗ trợ nỗ lực của các đồng minh và đối tác để đảm bảo tự do hàng hải và cơ hội kinh tế trên khắp khu vực Ấn Độ Dương-Thái Bình Dương.', '3.jpg', 1, 2, 1, '2020-04-12 01:49:25'),
(4, 'Bị chỉ trích về chất lượng, Trung Quốc hoãn xuất khẩu vật tư y tế', 'Chính phủ Trung Quốc yêu cầu tạm ngừng xuất khẩu máy thở, khẩu trang, đồ bảo hộ và các vật tư y tế khác để chờ kiểm tra, sau khi nhiều quốc gia phàn nàn về chất lượng hàng hóa của Trung Quốc.', 'New York Times đưa tin, Trung Quốc đã yêu cầu không xuất khẩu các vật y tế cho tới khi giới chức hải quan tiến hành kiểm tra chất lượng đối với từng lô hàng khẩu trang N95, máy thở, bộ đồ bảo hộ và các vật y tế quan trọng khác.\r\n\r\nChính sách mới, được Tổng cục Hải quan Trung Quốc công bố ngày 10/4, đã gây ra tình trạng đình trệ tạm thời đối với nhiều lô hàng, trong bối cảnh các nhà sản xuất, các hãng vận tải và các thương gia làm rõ cách thức áp dụng chính sách mới.\r\n\r\nTrước đó, Tổng cục Hải quan Trung Quốc chủ yếu chỉ chịu trách nhiệm kiểm tra số lượng, các vấn đề sở hữu trí tuế và các giấy tờ. Nhưng kể từ bây giờ, họ cũng kiểm tra chất lượng của các lô hàng.\r\n\r\nTrung Quốc là nước đứng đầu thế giới về sản xuất một loạt vật tư y tế và vị thế dẫn đầu về sản xuất của nước này đã được mở rộng trong nhiều lĩnh vực khi Trung Quốc mở cuộc huy động toàn quốc nhằm sản xuất trang thiết bị y tế từ cuối tháng 1.\r\n\r\nChính sách mới cũng diễn ra sau khi nhiều quốc gia phàn nàn về chất lượng vật y tế của Trung Quốc. Một quan các quốc gia châu Âu cho biết khẩu trang y tế của Trung Quốc có vấn đề. Trong khi đó, giới chức Trung Quốc nói rằng nhiều trong số đó là khẩu trang công nghiệp không được thiết kế để đáp ứng các tiêu chuẩn y tế và không nên kỳ vọng như vậy.\r\n\r\nHồi đầu tháng này, tại Australia, các lực lượng biên giới đã bắt đầu chặn việc phát một số vật tư y tế của Trung Quốc bị lỗi. Còn tại Tây Ban Nha, Thổ Nhĩ Kỳ và Hà Lan, giới chức cho hay một số trang thiết bị của Trung Quốc mà họ nhận được không đạt chuẩn hoặc bị lỗi.', '4.jpg', 1, 1, 1, '2020-04-12 01:51:05'),
(5, 'Truy tìm nguồn gốc thực sự của virus đáng sợ gây đại dịch Covid-19', 'Trong bối cảnh dịch bệnh Covid-19 lan rộng trên toàn cầu, ngày càng có nhiều nghiên cứu truy tìm nguồn gốc thật sự của virus SARS-CoV-2.', 'Khi dịch bệnh bắt đầu bùng phát vào tháng 12/2019, hầu hết ý kiến đều cho rằng virus này có nguồn gốc từ một khu chợ ở Vũ Hán, Trung Quốc, nơi thông báo các ca mắc Covid-19 đầu tiên. Giáo sư Stephen Turner, trưởng khoa vi sinh tại Đại học Monash ở Melbourne cho rằng, về giả thuyết virus xuất hiện tại chợ buôn bán động vật ở Vũ Hán do sự tiếp xúc giữa con người với động vật, vẫn chưa có bất cứ bằng chứng xác thực nào để dẫn tới kết luận này.\r\n\r\nTruy tìm nguồn gốc thực sự của virus đáng sợ gây đại dịch Covid-19 - 1Nhấn để phóng to ảnh\r\nNhân viên y tế đưa thi thể bệnh nhân qua đời ra khỏi bệnh viện Wyckoff Heights ở Brooklyn, New York ôm 6/4 (Ảnh: Reuters)\r\n\r\nTheo ông, virus này “luôn luân chuyển mọi lúc mọi nơi trong vương quốc động vật”. “Hiểu về quá trình virus lây nhiễm trên động vật đóng vai trò rất quan trọng vì điều này giúp chúng ta thu hẹp những suy đoán về nguồn gốc của virus”, ông Stephen Turner, nhấn mạnh.\r\n\r\nGiáo sư Stephen Turner nghiêng về giả thuyết cho rằng virus SARS-CoV-2 xuất phát từ loài dơi. Tại Trung Quốc, nghiên cứu về các loại virus có ở loài dơi đã bắt đầu được thực hiện một cách nghiêm túc sau khi đại dịch SARS lắng xuống.\r\n\r\nDịch SARS, bùng phát vào năm 2003, bắt nguồn từ khu vực phía nam tỉnh Quảng Đông đã gây ảnh hưởng đặc biệt nghiêm trọng tại một số khu vực ở châu Á. Trong số hơn 8.000 người mắc bệnh, có tới 84% số trường hợp tử vong là ở Trung Quốc. Virus này sau đó đã được xác định bắt nguồn từ loài cầy hương được bán tại các chợ động vật hoang dã ở Trung Quốc. Nhiều nhà khoa học tin rằng virus từ dơi đã lây nhiễm cho cầy hương và sau đó con người đã ăn thịt động vật này.\r\n\r\nDơi là loài động vật phổ biến sống trong các hang động ở tỉnh Vân Nam, nằm ở khu vực biên giới phía Tây Nam Trung Quốc. Trong 10 năm qua, nhà khoa học Shi Zhengli thuộc Viện Virus học Vũ Hán (Trung Quốc) các nhà virus học khác đã thực hiện nhiều cuộc thám hiểm để thu thập các loại virus từ nhiều loài dơi khác nhau, xây dựng ngân hàng virus lớn nhất châu Á.\r\n\r\nLeo Poon, nhà virus học tại Đại học Hong Kong cho biết: “Thông qua quá trình nghiên cứu loài dơi, họ đã tìm thấy một số lượng lớn biến chủng của virus giống virus gây ra đại dịch SARS và nhận thấy một số biến chủng có thể gây ảnh hưởng đến sức khỏe con người”.\r\n\r\nLeo Poon cho biết, khi bộ gen của virus SARS-CoV-2 gây dịch bệnh Covid-19 được giải mã vào đầu tháng 1/2020, Shi Zhengli cho rằng khả năng virus này có nguồn gốc từ loài dơi, bởi nó giống đến 96% mẫu virus mà cô thu thập được.\r\n\r\nĐể nâng cao hồ sơ nghiên cứu, Viện virus Vũ Hán đã tìm kiếm sự hỗ trợ từ các chuyên gia nước ngoài trong việc thành lập phòng thí nghiệm BSL-4 đầu tiên.\r\n\r\nPhòng thí nghiệm này đã hợp tác với phòng thí nghiệm Jean Merieux BSL-4 ở Lyon, Pháp – cơ sở rộng 3.000m2 được giới chức Trung Quốc và Pháp cấp phép hoạt động vào đầu năm 2017. Tổ chức Y tế thế giới cho biết, các nhân viên ở các phòng thí nghiệm BSL-4  đã được đào tạo chuyên sâu tại Pháp, Canada, Mỹ cũng như ở nước sở tại.\r\n\r\nTê tê cũng nằm trong danh sách nghi vấn\r\n\r\nMột loài động vật được cho là vật chủ trung gian lây truyền virus giữa dơi và người là tê tê. Liên minh Bảo tồn Thiên nhiên Quốc tế cho biết, tê tê là loài động vật có vú được buôn bán bất hợp pháp nhiều nhất trên thế giới bởi chúng được đánh giá cao về thịt cùng các đặc tính dược phẩm nằm ở phần vảy.\r\n\r\nTuy nhiên giáo sư Tuner cho rằng: “Tê tê đáng thương có phải là động vật lây truyền virus hay không thì vẫn chưa rõ ràng. Virus có thể lây nhiễm ở động vật khác sau đó đến tê tê, hoặc nó lây nhiễm cho con người và tiến hóa trong cơ thể người”.\r\n\r\nMột nghiên cứu khác đã loại trừ tê tê là vật chủ trung gian bởi các mẫu virus tương tự lấy từ tê tê thiếu một chuỗi axit amin được tìm thấy ở virus SARS-CoV-3 có trên con người.\r\n\r\nGiáo sư Edward Holmes, Đại học Sydney, đồng tác giả của một nghiên cứu xuất bản trên tạp chí Nature đã tìm kiếm nguồn gốc virus bằng cách xem xét bộ gen của nó. Ông nhấn mạnh rằng, việc xác định loài nào mới là vật chủ trung gian lây truyền virus vẫn còn là điều chưa chắc chắn.\r\n\r\nNghiên cứu của Giáo sư Edward Holmes cho biết, kịch bản mà một người ở chợ Vũ Hán tiếp xúc với một động vật mang virus chỉ là một phiên bản của câu chuyện về nguồn gốc Covid-19. Một khả năng khác là biến chủng của virus đã “nhảy” sang con người, sau đó tự thay đổi và thích nghi khi được truyền từ người này sang người khác.\r\n\r\n“Điều đó sẽ khiến đại dịch bùng phát và tạo ra một lượng lớn các ổ dịch đủ để kích hoạt hệ thống giám sát giúp phát hiện ra chúng”, nghiên cứu nhấn mạnh.\r\n\r\nKết quả phân tích 41 bệnh nhân mắc Covid-19 đầu tiên trên tạp chí y khoa Lancet cho thấy, 27 người trong số này liên quan trực tiếp đến khu chợ ở Vũ Hán. Tuy nhiên, một phân tích tương tự lại chỉ ra rằng, trường hợp mắc bệnh đầu tiên được biết đến thì lại không liên quan.\r\n\r\nXuất phát từ khu chợ ở Vũ Hán?\r\n\r\nGiáo sư Stanley Perlman, một nhà miễn dịch học hàng đầu tại Đại học Iowa và là chuyên gia nghiên cứu các đợt bùng phát của virus corona trước đó cho biết, giả thuyết cho rằng virus có nguồn gốc từ khu chợ Vũ Hán “không thể được loại trừ” bởi vì gen di truyền của virus đã được tìm thấy trong môi trường này.\r\n\r\nPhát biểu với Guardian, Stanley Perlman khẳng định, ông luôn tin rằng có một động vật trung gian lây truyền bệnh: “Tôi nghi ngờ virus có thể đã tiến hóa ở động vật trung gian sau đó lây sang con người. Việc virus không biến đổi nhiều trong suốt 3 tháng xảy ra đại dịch cho thấy nó thích nghi rất tốt trên con người”.\r\n\r\n“Dẫu sao thì việc tồn tại những khu chợ ẩm ướt như vậy cũng là một vấn đề bởi nơi này có sự tiếp xúc giữa con người với động vật hoang dã. Đại dịch Covid-19 là hồi chuông cảnh báo sự nguy hiểm của những khu chợ này và cần phải có biện pháp ngăn ngừa”, chuyên gia Stanley Perlman lưu ý.\r\n\r\nNgay cả khi biện pháp phong tỏa ở Vũ Hán và các khu vực khác tại tỉnh Hồ Bắc của Trung Quốc được nới lỏng thời gian gần đây, việc tìm kiếm vật chủ trung gian cũng gặp nhiều thách thức. Bởi các động vật hoang dã được buôn bán bất hợp pháp tại khu chợ ở Vũ Hán – mà các nhà khoa học coi là mẫu vật dùng để nghiên cứu, đã bị tiêu hủy sau khi khu chợ đóng cửa vào đầu tháng 1/2020. Toàn bộ khu vực đã được phun thuốc khử trùng và dọn dẹp sạch.\r\n\r\nXuất phát từ phòng thí nghiệm?\r\n\r\nMột giả thuyết khác là virus SARS-CoV-2 bị “thoát” ra từ phòng thí nghiệm ở Vũ Hán – nơi dịch bệnh bắt đầu. Tuy nhiên một phân tích mới đây đăng tải trên tạp chí Nature Medicine đã bác bỏ giả thuyết này. Các nhà nghiên cứu đã so sánh bộ gen của vius corona chủng mới (SARS-CoV-2) với 2 chủng virus corona gây dịch bệnh nghiêm trọng như SARS, MERS và các chủng corona thông thường HKU1, NL63, OC43 và 229E gây bệnh hô hấp nhẹ ở người.\r\n\r\n“Các phân tích của chúng tôi cho thấy rõ rằng, SARS-CoV-2 không phải là virus bắt nguồn phòng thí nghiệm hoặc một loại virus bị thao túng có chủ đích”, bài báo nêu rõ. \r\n\r\nTheo nghiên cứu, cấu trúc phân tử tổng thể của virus này khác biệt với các chủng virus corona đã được biết đến. Virus SARS-CoV-2 khác với virus corona gây dịch SARS bởi chúng có một số thay đổi trong mã di truyền. Trong các mô phỏng trên máy tính, biến chủng của SARS-CoV-2 được tạo ra dường như không hiệu quả trong việc giúp virus bám vào tế bào của con người. Nếu các nhà khoa học cố tình tạo ra virus này, họ sẽ không chọn các biển chủng mà mô hình trên máy tính chứng minh sẽ không hoạt động. Bài báo cho rằng, thiên nhiên vẫn tài giỏi hơn con người và virus SARS-CoV-2 đã tìm được cách biển đổi tốt hơn, hoàn toàn khác biệt so với những biến chủng các nhà khoa học có thể tạo ra.', '5.jpg', 1, 3, 3, '2020-04-07 01:57:47'),
(6, 'HLV Scolari cho cầu thủ Brazil xem tạp chí khiêu dâm tại World Cup 2002?', 'Đứng trước thông tin mình “bật đèn xanh” cho cầu thủ Brazil xem tạp chí tình dục để kích thích tinh thần mọi người, rồi nhờ đó vô địch World Cup 2002, cựu HLV Scolari lên tiếng phủ nhận chuyện này', 'Trước đó, tờ O Estado de Sao Paulo của Brazil tiết lộ thông tin gây sốc, về chuyện HLV Felipe Scolari từng cho phép cầu thủ Brazil xem tạp chí khiêu dâm và sử dụng búp bê tình dục, trong thời gian diễn ra VCK World Cup 2002, để giải toả.\r\n\r\nTại giải đấu đó, các cầu thủ Brazil vào đến trận chung kết gặp Đức và chiến thắng trong trận đấu này, tức là có hơn 50 ngày xa nhà, xa vợ hoặc bạn gái.\r\n\r\nHLV Scolari cho cầu thủ Brazil xem tạp chí khiêu dâm tại World Cup 2002? - 1Nhấn để phóng to ảnh\r\nHLV Scolari phủ nhận chuyện cho cầu thủ Brazil xem tạp chí khiêu dâm để vô địch World Cup 2002\r\nCòn theo thông tin từ kênh ESPN, chỉ có Kaka – một cầu thủ rất ngoan đạo, phải đợi đến sau khi kết hôn vào năm 23 tuổi vào năm 2005, mới tìm hiểu về tình dục, là không được cung cấp bộ tạp chí và dạng búp bê nói trên.\r\n\r\nCâu chuyện xuất phát từ lời nói đùa của cựu tuyển thủ Brazil năm nào là Edilson, rằng anh ta sử dụng một búp bê tình dục trong thời gian tham dự World Cup 2002 \r\n\r\nĐứng trước những luồng thông tin và những cáo buộc vừa nêu, HLV Felipe Scolari của đội tuyển Brazil tại World Cup 2002 dĩ nhiên phản ứng rất mạnh.\r\n\r\nVị HLV nổi tiếng giàu cá tính này nói: “Tôi không bao giờ cho phép sử dụng tạp chí khiêu dâm”.\r\n\r\n“Báo chí muốn tạo ra một mớ hỗn độn bằng cách dựng chuyện, nhưng họ sẽ không bao giờ đạt được ý định của họ” – “Big Phil” nói thêm.\r\n\r\nNhững nhà cựu vô địch thế giới năm 2002 trong màu áo đội tuyển “vàng – xanh”, như Rivaldo và đội trưởng Emerson cũng lên tiếng ủng hộ Scolari, trong khi hậu vệ cánh trái nổi tiếng Roberto Carlos bình luận câu chuyện của báo chí chỉ là chuyện đùa.', '7.jpg', 1, 2, 2, '2020-04-12 01:58:59'),
(7, 'Vì sao đội tuyển Thái Lan hết động lực thi đấu ở AFF Cup?', 'Chủ tịch FAT Somyot Poompanmuang thừa nhận Thái Lan có thể bỏ không tham dự AFF Cup 2020. Vì sao người Thái Lan hết khát khao ở giải bóng đá lớn nhất Đông Nam Á?', 'Phát biểu trên báo giới nước nhà ngày hôm qua, Chủ tịch Liên đoàn bóng đá Thái Lan (FAT) Somyot Poompanmuangcho biết: “Việc tham dự AFF Cup là niềm tự hào với các quốc gia ở khu vực Đông Nam Á. Nhưng theo quy định, AFF cũng không bắt buộc các quốc gia tham dự giải đấu này.\r\n\r\nVì sao đội tuyển Thái Lan hết động lực thi đấu ở AFF Cup? - 1Nhấn để phóng to ảnh\r\nThái Lan đang tính đến phương án không tham dự AFF Cup 2020\r\n\r\nVì vậy, chúng tôi có thể tính tới phương án không tham dự AFF Cup vào năm nay. Chúng tôi hy vọng rằng tình hình dịch bệnh có thể giải quyết. Giải đấu có thể diễn ra mà không ảnh hưởng tới các đội bóng tham dự giải đấu”.\r\n\r\nTuy FAT chưa đưa ra quyết định cuối cùng, nhưng có vẻ như người Thái không còn mặn mà với giải bóng đá số 1 Đông Nam Á. Bên cạnh đó, có nhiều nguyên nhân khiến đội tuyển Thái Lan khó có được lực lượng mạnh nhất cho giải đấu vào cuối năm nay.\r\n\r\nHLV Akira Nishino tuyên bố có thể cử đội U23 Thái Lan dự AFF Cup 2020, nhưng Chủ tịch FAT còn muốn rút lui khỏi giải đấu. Động thái của người đứng đầu bóng đá Thái Lan đang khá quyết liệt, vì những vấn đề khách quan.\r\n\r\nDo ảnh hưởng của dịch bệnh Covid-19, Thai League chỉ có thể trở lại vào tháng 8/2020, trong khi các giải đấu khác có thể bị hủy bỏ. Thai League nhiều khả năng sẽ rút gọn số trận đấu, để đội tuyển quốc gia chuẩn bị cho vòng loại World Cup 2022.\r\n\r\nVì sao đội tuyển Thái Lan hết động lực thi đấu ở AFF Cup? - 2Nhấn để phóng to ảnh\r\nNếu tham dự AFF Cup 2020, Thái Lan có thể không có các ngôi sao thi đấu ở nước ngoài như Chanathip\r\n\r\nTheo lịch của FIFA, vòng loại bảng G World Cup 2022 được dời sang tháng 10 và 11/2020. Riêng trận đấu cuối cùng Thái Lan gặp Malaysia diễn ra vào ngày 15/11, chỉ 8 ngày trước khi AFF Cup 2020 chính thức diễn ra.\r\n\r\nLịch thi đấu dày đặc có thể khiến Thái Lan không thể có được lực lượng mạnh nhất, đặc biệt là những ngôi sao đang chơi tại Nhật Bản như Chanathip, Theerathon… J-League cũng đang hoãn vì Covid-19 và không dễ để FAT có thể kịp triệu tập các ngôi sao này, nhất là AFF Cup không phải là FIFA’s Day, nên các CLB được phép không nhả người.\r\n\r\nCòn nhớ tại AFF Cup 2018, đội tuyển Thái Lan không cử đội hình mạnh nhất dự giải đấu và họ bị loại ở bán kết dưới tay Malaysia. HLV Rajevac không có 4 ngôi sao Kawin, Chanathip, Theerathon và Dangda vì không thể triệu tập từ các CLB nước ngoài.\r\n\r\nBản thân đội tuyển Thái Lan năm đó cũng dồn sức cho Asian Cup 2019 trên đất UAE và họ coi AFF Cup 2018 là cơ hội để sàng lọc đội hình. Trong lịch sử, không ít lần người Thái coi giải bóng đá khu vực chỉ là thứ yếu, cho những mục tiêu cao hơn.\r\n\r\nTại SEA Games 2015 và 2017, Thái Lan đều giành HCV. Tuy nhiên HLV Kiatisuk không dẫn dắt đội U22 mà để trợ lý Choketawee Promrat và Worrawoot Srimaka dẫn dắt đội bóng.\r\n\r\nVì sao đội tuyển Thái Lan hết động lực thi đấu ở AFF Cup? - 3Nhấn để phóng to ảnh\r\nThái Lan thua Malaysia ở bán kết AFF Cup 2018, giải đấu mà đội tuyển Việt Nam lên ngôi vô địch\r\n\r\nThời điểm đó, Thái Lan dồn sức cho vòng loại World Cup 2018 dưới thời HLV Kiatisuk. Tuy nhiên, \"Zico Thái\" bị sa thải khi Thái Lan thảm bại ở vòng loại thứ ba châu Á khi ở bảng đấu gồm Australia, Nhật Bản, Saudi Arabia, UAE, Iraq.\r\n\r\nNgười Thái hướng đến sân chơi tầm cỡ hơn và FAT muốn HLV Nishino dồn lực cho vòng loại World Cup 2022, khi họ còn ba trận đấu quan trọng gặp Indonesia, UAE và Malaysia trong hai tháng 10 và 11/2020 ở bảng G, với quyết tâm cạnh tranh suất đi tiếp cùng đội tuyển Việt Nam.\r\n\r\nCuối cùng, việc no nê danh hiệu khiến người Thái Lan không còn quá nhiều khát khao ở sân chơi Đông Nam Á. Trừ ba năm 2009, 2011 (Malaysia) và 2019 (Việt Nam), thì Thái Lan đã thâu tóm tất cả danh hiệu HCV SEA Games từ năm 1995 trở lại đây.\r\n\r\nThái Lan cũng đã vô địch AFF Cup 1996, 2000, 2002, 2014, 2016 và dù đứng trước áp lực phải đòi lại ngôi đầu khu vực từ đội tuyển Việt Nam, họ cũng mất đi nhiều động lực ở giải đấu này, trong bối cảnh người Thái khó có đủ lực lượng mạnh nhất cho giải đấu này vào cuối năm.', '8.jpg', 1, 3, 2, '2020-04-12 01:59:41'),
(8, 'ngày nghỉ', 'mùa xuân tươi đẹp', 'ngày nghỉ hôm này thì làm gì nhỉ ', 'thantai.jpg', 1, 1, 1, NULL),
(9, 'test 2', 'test 2 3', 'test 2 là gì nhỉ', 'hh.jpg', 1, 1, 1, NULL),
(10, 'livestream', 'livestream kiếm tiền', 'kiếm được tiền hả', 'thantai.jpg', 1, 1, 0, NULL),
(11, 'con mèo ', 'con mèo nhà ai', 'con mèo suốt ngày đi ăn vụng cá về ', 'thantai.jpg', 1, 5, 1, NULL),
(12, 'con mèo ', 'con cún monkey', 'con mèo suốt ngày đi ăn vụng cá về hả. thật ', 'thantai.jpg', 1, 8, 1, '2020-04-18 22:29:43'),
(13, 'lập trình c', 'lập trình c cơ bản', 'lập trình c cơ bản và ứng dụng với nhiều phương pháp , các vấn đề liên quan đến giải thuật và lập trình ', '', 1, 8, 0, '2020-04-18 22:33:31');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルのAUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- テーブルのAUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
