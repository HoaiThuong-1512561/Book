-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: doanwebck5
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `idSach` int(11) NOT NULL AUTO_INCREMENT,
  `ngayNhapHang` date DEFAULT NULL,
  `luotMua` int(11) DEFAULT NULL,
  `luotXem` int(11) DEFAULT NULL,
  `idNhaSX` int(11) DEFAULT NULL,
  `hinhAnh` varchar(100) DEFAULT NULL,
  `moTa` varchar(10000) DEFAULT NULL,
  `idLoai` int(11) DEFAULT NULL,
  `giaBan` int(11) DEFAULT NULL,
  `ten_sach` varchar(200) DEFAULT NULL,
  `tac_gia` varchar(100) DEFAULT NULL,
  `soLuong` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSach`),
  KEY `L_idx` (`idLoai`),
  KEY `NSX_idx` (`idNhaSX`),
  CONSTRAINT `L` FOREIGN KEY (`idLoai`) REFERENCES `loai` (`idloai`),
  CONSTRAINT `NSX` FOREIGN KEY (`idNhaSX`) REFERENCES `nhasx` (`idnhasx`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (3,'2018-04-04',667,136,1,'img/book/neu_toi_biet_duoc_khi_con_20.jpg','Bạn có 5 đô la và 2 giờ đồng hồ để kinh doanh. Bạn sẽ làm gì? - Đây là một trong những ví dụ minh hoạ được nhắc đến trong cuốn sách Nếu Tôi Biết Được Khi Còn 20. Trả lời cho câu hỏi này có rất nhiều cách và với mỗi cách, tác giả lại chỉ ra những bài học nhỏ thôi nhưng hữu ích. Cuốn sách được chia thành 10 chương với những vấn đề khách nhau theo một trình tự rõ ràng. Trong cả cuốn sách, những triết lý kinh doanh đơn giản được minh hoạ bằng những ví dụ cụ thể và sáng tạo. Những tình huống kinh doanh được đặt ra, có thành công và có cả thất bại, vấn đề là cách đối mặt với nó.',1,64000,'Nếu tôi biết được khi còn 20','Tina Seelig',523),(4,'2018-02-13',767677,4436,1,'img/book/nhumuadongroixuong-200x280.jpg','Tôi muốn làm Peter Pan. Nhưng khi biết mình không thể hoàn toàn là Peter Pan, tôi lại nghĩ mình có thể có một phần là Peter Pan. Nghĩa là sau này dù có lớn lên, dù có già đi, nhưng sẽ có một phần suy nghĩ của tôi được gìn giữ ở một góc để giúp tôi “mãi-mãi-mười-tám-tuổi”. Nhưng một sáng nọ, tôi ngủ dậy, và nhận ra mình chỉ là Wendy. Rồi sẽ có một ngày tất cả những suy nghĩ của tôi cũng phải lớn theo, dù là tình nguyện hay bắt buộc, mà tôi không cách nào thay đổi.',1,71000,'Như Mùa Đông Rơi Xuống','Fuyu',230),(5,'2017-02-23',53454,333,1,'img/book/lac_loi_giua_co_don_1-200x280.jpg','Bạn đã bao giờ cô đơn?\n\nBạn đã bao giờ Lạc lối giữa cô đơn?\n\nCô đơn là cảm giác, đã là cảm giác thì người ta không bao giờ có thể định nghĩa được một cách thật rõ ràng. Cứ lửng lơ, lưng chừng… Lưng chừng nỗi buồn. Lưng chừng trống vắng. Lưng chừng hoài vọng. Lưng chừng xót xa. Rồi loay hoay. Rồi lại lối.',1,68000,'Lạc Lối Giữa Cô Đơn','Minh Nhật',232),(6,'2017-12-23',443,46656,1,'img/book/Truoc_khi_chet_phai_biet_yeu_la_gi-200x280.jpg','Trước khi chết phải biết tình yêu là gì là tác phẩm đầu tay của Nguyễn À Nguyễn, là dân chuyên ngành marketing. Tác giả không nói gì nhiều về mình, cũng chưa cảm thấy cơ hội để lộ diện, chỉ luôn tự nhủ thế này: “Từ khi biết văn chương ghét kẻ gặp may, tôi thường động viên mình: Cố lên, mình có cơ hội mà”.',1,85500,'Trước Khi Chết Phải Biết Tình Yêu Là Gì','Nguyễn À Nguyễn',321),(7,'2017-10-23',344,783,2,'img/book/yeunguoingongnui-200x280.jpg','32 bài tản văn trong Yêu Người Ngóng Núi (Tái Bản 2017) là những câu chuyện \"rất tình\" về Đất, về Người Nam Bộ. Từ những chi tiết nhỏ như...cục kẹo, đến những vấn đề mang tính sống còn của người nông dân đã được đề cập một cách thấu đáo, chân thành và ý nhị. Có cả những chuyện tưởng chừng riêng tư nhưng lại hòa vào dòng thời sự chung như chuyện đi du lịch, nuôi dạy con, và cả chuyện yêu đương...\nTập sách còn hấp dẫn bởi chất trữ tình phóng khoáng Nam bộ, cái duyên dáng tài năng thường thấy ở tác phẩm của nhà văn Nguyễn Ngọc Tư.',2,40500,'Yêu Người Ngóng Núi (Tản Văn – Tái Bản 2014)','Nguyễn Ngọc Tư',22),(8,'2017-06-23',6656,3332,2,'img/book/airoicungkhac-200x280.gif','Ai rồi cũng khác với những thông điệp sống ý nghĩa là hành trình trải nghiệm của hai tác giả trẻ.',2,62000,'Ai Rồi Cũng Khác','Hamlet Trương - Iris Cao',553),(9,'2017-11-01',44453,32333,2,'img/book/gao-nuoc-mam-rau-muong-200x280.jpg','Hoàng Trọng Dũng từng giữ chuyên mục ẩm thực trên Tuần san Thanh Niên và báo Đà Nẵng một thời gian dài. Những bài viết đọc vô cùng cuốn hút, đọc thôi là đã có thể nhìn thấy màu sắc và ngửi thấy mùi thơm, khiến nỗi thèm muốn được tức khắc thưởng thức món ăn ấy. Tác giả đã chứng tỏ khả năng của một người biết cảm thụ từng miếng ngon tinh tế, và một kho kiến thức về ẩm thực Việt, văn hóa Việt.',2,190000,'Gạo, Nước Mắm, Rau Muống… Câu Chuyện Ẩm Thực Việt','Hoàng Trọng Dũng',665),(10,'2016-04-24',6665,33344,2,'img/book/du-con-song-the-nao-me-cung-luon-ung-ho-200x280.jpg','\"Mẹ hy vọng con không chỉ đang tồn tại, mà sống sao cho đúng là con ngày hôm nay. Mẹ hy vọng con sẽ thử suy nghĩ về những điều đương nhiên theo một cách không đương nhiên, hy vọng con sẽ không e ngại trước bất cứ điều gì, mà thoải mái dang rộng đôi cánh của mình ra. Mẹ hứa, dù con sống thế nào, mẹ cũng luôn ủng hộ con.”',2,61000,'Dù Con Sống Thế Nào, Mẹ Cũng Luôn Ủng Hộ','Gong Ji Young',34),(11,'2017-07-24',3453,34555,3,'img/book/thucdaytrenmainha-200x280.gif','Có  một thế giới nhỏ, buồn như mảnh diều chao nghiêng trên nền trời xanh nhạt trong một chiều ít gió.',3,59500,'Thức Dậy Trên Mái Nhà','Minh Mẫn',231),(12,'2018-01-12',34665,5901,3,'img/book/benkiadoi-200x280.jpg','\"Bên kia đồi\" là cuốn tiểu thuyết của tác giả Võ Mỹ Linh kể về cuộc đời bi đát của nhân vật Nụ với những lời độc thoại nội tâm đầy xót xa.Cuộc hành hưong của Nụ rốt cuộc lại đưa Nụ trở về điểm ban đầu, chỉ khác là giờ đây Nụ biết được là bên kia ngọn đồi có thể cũng chẳng có gì. “Nhưng nhất thiết cứ phải bước sang. Để khi đứng đấy nhìn về, người ta sẽ thấy yêu hơn cái cũ (yêu cái cũ hơn?).” Thật ra, bên kia đồi có gì hay không chẳng quan trọng. Quan trọng là phải đi sang đó mà xem với chính mắt của mình.',3,53000,'Bên Kia Đồi','Võ Mỹ Linh',332),(13,'2018-03-11',4689,965756,3,'img/book/taoxanh-200x280.gif','\"Thật khó để một người con trai yêu một người con trai khác phải không?\" - Câu nói trích từ một truyện ngắn trong tuyển tập đã hiển hiện trong tâm trí tôi mãi khi đọc các tác phẩm ngắn này. Yêu thương là tình cảm trong sáng nhất của trái tim, thì tại sao chúng ta không thể rộng lòng cho nó được tự do nảy nở và truyền đạt? Nếu có thể dũng cảm bước qua định kiến, thừa nhận rằng cuộc sống là muôn màu thì hẳn chúng ta ai ai cũng có thể được ấm mình trong những chân thành của yêu thương.',3,76500,'Táo Xanh – Hãy Để Anh Thương Em','Nhiều tác giả',342),(14,'2018-05-30',90094,3550,3,'img/book/quatredechet-200x280.gif','Quá trẻ để chết: Hành trình nước Mỹ là hành trình đơn độc của tác giả - một cô gái Việt trẻ đi xuyên nước Mỹ từ Bờ Đông sang bờ Tây. Hành trình du lịch bụi của cô trải dài trên 20 bang, kéo dài suốt sáu tháng liên tiếp.\n\nĐó là chuyến đi để khám phá thế giới bên trong của những người Mỹ bình thường, dù có thể chỉ là một phần của thế giới ấy. Đó cũng là hành trình khám phá những vẻ đẹp muôn màu muôn vẻ của thế giới - của thiên nhiên nước Mỹ, và của tâm hồn con người trong những hình thức thăng hoa khác nhau của nó.',3,58500,'Quá Trẻ Để Chết: Hành Trình Nước Mỹ','Đinh Hằng',35),(15,'2018-06-01',13424,2262,4,'img/book/bamuonnuoiconbangsuame-200x280.gif','Cuốn tự truyện “Ba muốn nuôi con bằng sữa mẹ” của Trình Tuấn có thể lay động hàng triệu trái tim vì sự chân thực, cảm động và khả năng truyền cảm hứng của nó. \"Ít ra cuộc đời đã không lấy đi của ba tất cả, ba vẫn còn Ủn để nhớ, để thương, để quay về nơi bình lặng sau cơn sóng dữ. Ủn là hạnh phúc của ba, là tất cả với ba bây giờ. Thật đáng sợ khi không còn gì bám víu trong dòng nước dữ, con người ta sẽ để mặc cho dòng đời cuốn đi. Ba sẽ thành kẻ đầu đường xó chợ, hay có thể là kẻ tâm thần ăn mày dĩ vãng, hay tệ hơn ai mà biết... Cảm ơn con đã níu ba lại để ba không gục ngã, để hôm nay nhận thấy tim mình còn thổn thức vì con...\"\n\nNhận định\n\n\"Một cuộc sống tốt đẹp có thực.',4,61000,'Ba Muốn Nuôi Con Bằng Sữa Mẹ','Trình Tuấn',764),(16,'2018-06-15',7674341,357,4,'img/book/bao-200x280.gif','Trong Bão, có một hòn đảo, biển và gió, cơ thể những người đàn bà, một đứa trẻ cô đơn không bố, một người đàn ông bị quá khứ gặm nhấm và cơn bão rửa sạch tất cả.\n\nTrong Bão, còn có cả Phi châu, Paris và một đứa trẻ lạc lối khác đi tìm danh tính của mình. Hai câu chuyện đầy chất thơ ấy được thổi đến bằng cơn bão của thế giới của tâm hồn.\n\nTrong Bão, những số phận kì lạ gặp đầy trắc trở của Le Clezio vẫn tìm thấy phép màu, tim thấy điều níu giữ họ lại với cuộc sống, bởi \"kí ức không quan trọng,không hậu quả, duy có hiện tại mới là đáng kể\".\n\nTrong Bão, độc giả vẫn tìm thấy chất thơ lãng mạn từ những câu văn giản dị nhưng đầy sức nặng của tác giả từng được nhận giải Nobel Văn chương 2008.\n\n',4,63000,'Bão','Le Clezio',211),(17,'2018-03-23',6442,4567,4,'img/book/chuyen_iphone_va_ga_chanh-200x280.jpg','Một câu chuyện xoay quanh “Bộ tứ cá ngựa” tại Đà Lạt. iPhone - cô gái xinh đẹp \"cuồng\" Apple. Gã Chảnh 49 bảnh trai, giàu có và thích chơi ngông. Người phụ nữ bình thường tuổi băm - Tóc Tém. Và cô chị Thuốc Lá dạn dày sương gió.\n\niPhone là cô gái xinh đẹp \"cuồng\" Apple, một chiếc 5S, một Ipad 3, một túi xách có logo trái táo cắn dở, thậm chí áo thun, áo khoác, giày... của iPhone bạn cũng có thể tìm thấy những hình ảnh liên quan đến Steve Jobs.\n\nGã chảnh là người đàn ông trẻ tuổi bảnh trai giàu có. Gã được biết đến với ánh mắt lãng tử và độ chơi ngông của mình khi vác về Đà Lạt chiếc Lexus LS 460 màu trắng duy nhất với cái giá gần sáu tỷ bạc.',4,157500,'Chuyện Iphone Và Gã Chảnh Mang Mật Danh 49','Thu Dương',5654),(18,'2018-01-12',907676,3435,4,'img/book/vuan-200x280.gif','Nằm trong một phần nhỏ đã thoát ngọn lửa vùi 90% tác phẩm của Franz Kafka vào vĩnh viễn hư vô, Vụ án, cũng như những tiểu thuyết may mắn còn lại của ông, ở dạng bản thảo chưa hoàn chỉnh. Trong hơn một trăm năm, tác phẩm đã trả qua lịch sử xuất bản phức tạp, đi từ \'\'một đống giấy\'\' đến cuốn sách trọn vẹn dưới bàn tay phù phép của Max Brod. Nhưng dù xuất bản dưới hình thức nào, Vụ án vẫn là một huyền thoại không ngừng được giải mã, được đánh giá là kiệt tác văn chương quan trọng nhất nhì của thế kỷ 20.\n\nNhận định\n\n\"Khi Thomas Manm viết Buddenbrenbrooks, Proust viết Đi tìm thời gian đã mất và Kafka viết Vụ án, họ còn lâu mới nghĩ đến chuyện cải tạo xã hội bằng văn xuôi, thế nhưng họ đã tạo nên những tác phẩm mà trong thế kỷ của chúng ta chưa có tác phẩm nào vượt qua được.\"',4,261000,'Vụ Án','Franz Kafka',34),(19,'2018-05-12',2345,665560,5,'img/book/nhungnuhondienanh-200x280.gif','\"Tôi không hay biết gì về nguồn gốc của mình. Tôi sinh ra tại Paris từ một người mẹ không biết mặt còn bố tôi chuyên chụp ảnh các nữ diễn viên. Ít lâu trước khi qua đời, ông mời thổ lộ với tôi rằng, tôi có mặt trên đời này là nhờ một nụ hôn điện ảnh.\"\n\nEric Fottorino tặng cuốn tiểu thuyết thứ tám những từ ngữ êm dịu, gần như mong manh, để tôn vinh điện ảnh, để kể về một thời đã qua, khi tình yêu vẫn còn có thể hiện ra như một trò chơi mạo hiểm.\n\nNhận định\n\n\"Eric Fottorino kể về thời thơ ấu của mình với một nghệ thuật sáng-tối tinh tế...\"',5,42000,'Những Nụ Hôn Điện Ảnh','Eric Fottorino',325),(20,'2018-01-30',5455453,370,5,'img/book/tinhyeukhongphailatatca-200x280.gif','Hãy đọc, để hiểu rằng nếu chẳng may tình yêu có tan vỡ, đấy chẳng phải là một thảm kịch đáng để bạn không sống tiếp. Hãy đọc, để nhận ra nếu mãi vẫn còn FA, đấy cũng chẳng khốn khổ đến mức bạn phải cầu mưa vào lễ tình nhân.\n\nTình yêu vốn dĩ không phải là tất cả mà!\n\nĐặc biệt, tất cả bạn đọc mua cuốn Tình yêu không phải là tất cả đều được tặng một cuốn sổ tay 100 trang, rất thời trang, ý nghĩa và tiện dụng. Cuốn sổ do họa sĩ Kim Duẩn thiết kế, sẽ có 2 phiên bản bìa đẹp, bên trong có thêm 100 câu quote truyền cảm hứng nhất do chính các tác giả dày công lựa chọn cho bạn.',5,167500,'Tình Yêu Không Phải Là Tất Cả','Nhiều tác giả',87),(21,'2017-12-05',3444345,241,5,'img/book/nhungconchimanminhchochet-200x280.gif','Thiên tiểu thuyết có sức ảnh hưởng sâu rộng của Colleen McCullough về những giấc mơ, những trăn trở, những đam mê thầm kín, và mối tình bị ngăn cấm ở nước Úc xa xôi đã mê hoặc độc giả khắp thế giới. Đây là biên niên sử ba thế hệ dòng họ Cleary, những người chăn nuôi gia súc từ một vùng đất khắc nghiệt nhưng xinh đẹp trong lúc đấu tranh với nghịch cảnh, sự yếu đuối, và những bí mật len lỏi trong gia đình. Quan trọng hơn hết, đây là câu chuyện về cô con gái duy nhất Meggie và mối quan hệ theo suốt cuộc đời giữa cô với linh mục Ralph de Bricassart - một sự hòa hợp của hai trái tim và hai tâm hồn vượt qua những giới hạn bất khả xâm phạm của đạo đức và giáo điều.',5,130500,'Những Con Chim Ẩn Mình Chờ Chết','Colleen Mccullough',876),(22,'2016-12-04',8776,23344,5,'img/book/taybuongtaytimthoinho-200x280.gif','Cuốn sách Tay buông tay và tim thôi nhớ đã thể hiện tất cả những lần ly biệt dù có mang theo tình yêu hay nỗi thù hận, cũng đều là một sự chia cắt đau khổ. Nếu chẳng thể mỉm cười nói lời tiễn biệt, cúi chào rời đi, vậy liệu có nên âm thầm quay bước, cố ngăn giọt nước mắt tuôn rơi, rồi cúi đầu bước vội? Ai khiến ta chìm đắm trong tình yêu thuở trước?\n\nRồi sớm muộn cũng có một ngày, bạn sẽ mỉm cười khi đối diện với những vết thương của quá khứ. Bạn sẽ biết ơn người khi xưa đã rời bỏ bạn, anh ta không sững với tình yêu, sự thuần khiết, nỗi đắm say của bạn. Anh ta xét cho cùng không phải là người mà số phận gán định cho bạn...\n\nThật may là không phải!',5,49000,'Tay Buông Tay Và Tim Thôi Nhớ','Trương Tiểu Nhàn',456),(23,'2017-09-13',65464,343,6,'img/book/gianaocungyeu-200x280.gif','Lần thứ ba gặp nhau, anh cao ngạo ngỏ lới cầu hôn cô. Bởi anh không đơn thuần muốn một cô nhân tình bé nhỏ, anh muốn một người vợ để có thể hưởng thụ mọi giá trị từ cái danh phận ấy.\n\nLần thứ ba gặp nhau, cô bình thản đồng ý làm vợ anh. Không phải bởi vẻ quyến rũ bề ngoài, hay sức hấp dẫn từ gia thế của anh. Cô chỉ muốn tránh một gã đàn ông khác.\n\nKhông hôn lễ tưng bừng, chỉ có việc ký tên, trao lời thề và trả phí trong văn phòng hộ tịch. Đôi bên còn lớn tiếng khẳng định, cuộc hôn nhân của mình hoàn toàn không có tình yêu.\n\nNhưng để sống cùng nhau, họ đã phải đương đầu với vô vàn sóng gió, kết thêm bao nhiêu kẻ thù, cùng lúc phải quay cuồng trước quá khứ tăm tối khốc liệt của đối phương. Vậy mà giá nào, họ cũng chẳng buông tay.',6,82500,'Giá Nào Cũng Yêu','Lisa Kleypas',656),(24,'2017-08-23',656,343,6,'img/book/chientranhgiuacacthegioi-200x280.gif','Một nỗi ám ảnh sâu xa của loài người: bị một nền văn minh từ hành tinh khác, phát triển cao hơn mình nhiều đấến xâm chiếm và đẩy đến chỗ diệt vong.\n\nChiến Tranh Giữa Các Thế Giới là cuốn tiểu thuyết về cuộc chiến tranh như thế. Được in lần đầu vào năm 1898, viết bằng giọng văn đầy gợi tả nhưng cũng hết sức tỉnh táo, lạnh lùng, cuốn sách đã làm chấn động người đọc với những mô tả cực kỳ chuẩn xác trên phương diện cơ khí - giải phẫu học về cơ cấu của những cỗ máy kinh khủng mà người Sao Hỏa dùng để hủy diệt những người Trái Đất vô phương tự vệ. Nhân vật chính - một trong những người Trái Đất nhỏ bé, sẽ làm gí để tự cứu mình và bảo vệ sinh mạng người vợ yêu quý của anh?',6,55500,'Chiến Tranh Giữa Các Thế Giới','H. G. Wells',765),(25,'2017-02-01',7676,535,6,'img/book/hoatuylipden-200x280.gif','Chàng - một nhà khoa học trẻ đã bỏ gần hết tuổi thanh xuân của mình để nghiên cứu, và khi đã tạo ra được ba củ giống có khả năng nở ra những bông hoa Tulip đen tuyền thì lại bị tống giam vào ngục tối.\n\nNàng - một cô gái có trái tim trong trắng và một tấm lòng nhân hậu như Đức mẹ đồng trinh lại được sinh ra bởi một viên cai ngục thô bạo, thi hành bổn phận như một cái máy.\n\nChàng và Nàng, một sự sự kết tinh tuyệt đẹp giữa đất trời, giữa một thời đại đang chịu nhiều xáo trộn của lịch sử, và là ngọn nến sáng nhất giúp vẻ đẹp của niềm đam mê được bùng cháy.\n\nNhưng điều gì sẽ xảy ra khi cái ác chiến thắng, liệu sự đồng hành, chia sẻ, giúp đỡ có đưa hai người đến gần hơn với sự tự do và thành công?\n\nHoa Tulip đen sẽ giúp bạn tìm được câu trả lời.',6,49500,'Hoa Tuylip Đen','Alexander Dumas',557),(26,'2018-05-02',454545,2343,6,'img/book/cuongphong-200x280.gif','Cuồng phong là cuốn tiểu thuyết để đời của nhà thơ, nhà văn Nguyễn Phan Hách. Tác phẩm được ông hoàn thành trong 10 năm, ra mắt độc giả lần đầu năm 2008. Thông qua câu chuyện trong một gia tộc bốn thế hệ, tiểu thuyết phản ánh chân thực giai đoạn thế kỷ 20 của đất nước.\n\nBốn thế hệ trong Cuồng phong đại diện cho các hệ tư tưởng khác nhau của người dân Việt Nam thời bấy giờ: người nông dân với lòng yêu nước bản năng tham gia khởi nghĩa chống Pháp; những ông Nghè khao khát Duy Tân xây dựng đất nước độc lập; chiến sĩ cách mạng tham gia kháng chiến giành độc lập thống nhất. Các thế hệ với những tư tưởng khác nhau cùng bước vào thời bình. Kỷ nguyên \"văn minh vật chất\" lấn át làm nảy sinh những bi kịch số phận cho những người thiếu bản lĩnh. Với Cuồng phong, Nguyễn Phan Hách đã đề cập đến nhiều vấn đề như: sai sót trong cải cách ruộng đất, những bất cập trong hợp tác hóa nông nghiệp... một cách sinh động.',6,115000,'Cuồng Phong (Tái Bản 2015)','Nguyễn Phan Hách',765),(27,'2018-03-24',43243432,467,1,'img/book/ngayayviaimadoithay-200x280.gif','Nếu bạn đang vội, có thể bình tâm trở lại không? Hãy để tâm hồn mình được “chậm” một chút rồi mở tiếp những trang sau đó.\n\nCâu chuyện trong cuốn sách này sẽ kể cho bạn nghe một cuộc sống rất vội, một tình yêu rất vội và một đổi thay rất vội. Một câu chuyện chẳng đầy bi thương nhưng tràn đầy tiếc nuối. Vì họ đều vội vã nên vô tình bỏ quên hết những điều đem lại hạnh phúc cho mình. Cuộc sống vội vã chẳng đợi ai, nhưng không phải vô tình mà đem đi của chúng ta tất cả. Mỗi chúng ta đều chỉ được sống một lần, vậy nên, chậm thôi bạn ạ, để chọn cho mình lựa chọn đúng đắn nhất. Để tương lai chẳng phải hối tiếc ngày ấy vì ai mà đổi thay.',7,68000,'Ngày Ây Vì Ai Mà Đổi Thay','Cẩm Thương',675),(28,'2017-09-23',4343,32321,1,'img/book/lacnhaugiuanganha-200x280.gif','Không phải là một cuốn truyện với những tình tiết gay cấn, không xin nước mắt, không làm đủ mọi cách chọc cười độc giả, Lạc nhau giữa ngân hà kể những câu chuyện khác nhau của những cung hoàng đạo khác nhau:\n\n“Câu chuyện giữa Bạch Dương và Song Tử - có cái nóng sực đến bỏng tay của cung Lửa, có cái mát lạnh đi cùng những ngọn gió mùa đông của cung Khí.\"\n\n“Mỗi khi \"sao Thủy đi lùi\" - đi ngược lại so với quỹ đạo bình thường của nó, đều kéo theo rất nhiều hệ lụy như trục trặc giấy tờ, thư tín, phương tiện truyền thông... Và nguy hiểm nhất phải kể đến, chính là việc những ký ức trong quá khứ bỗng được gọi về hay người yêu cũ bất thình lình... liên lạc lại. Liệu bạn có trải qua một mùa \"sao Thủy đi lùi\" yên ả?”\n\n“Muốn trải nghiệm mọi cung bậc cảm xúc của tình yêu đích thực, nhất định phải một lần yêu Thiên Bình. Nhưng một khi tình yêu tàn lụi, nàng Thiên Bình cũng là người lãnh đạm và dứt khoát hiếm ai bằng.”',7,63000,'Lạc Nhau Giữa Ngân Hà','Nhóm bút Lovedia',453),(29,'2018-05-23',6568,43246,1,'img/book/chungtaodocontinhyeuthikhong-200x280.gif','“Chúng ta ở đó, còn tình yêu thì không” là chuỗi những ngày tôi thấy mình giống hệt như nhiều cô gái khác. Chúng ta ở đó, còn tình yêu thì không cũng giống như một cuốn sổ ghi lại cuộc hành trình đi tìm những yêu thương lạc mất, từng đắm say, từng vụn vỡ. Lời văn trên trang sách như lời thì thầm của cô gái tuổi đang yêu, có tiếng nấc nhẹ thoáng hờn dỗi, có tiếng thở dài vương sầu trên hàng mi con gái. Nhưng trước khi những trang sách gấp lại - “Ở một thế giới phẳng khác”, là một ai đó đã sẵn lòng chở che để yêu thương được lấp đầy, được là của.nhau, bên nhau, đi cùng nhau. Đó hẳn là một cái kết vẹn tròn cho tình yêu đôi lứa, là bến bờ hạnh phúc mà bất cứ trái tim trẻ nào cũng vẫn hằng mong đợi.',7,64000,'Chúng Ta Ở Đó, Còn Tình Yêu Thì Không','Hạc Xanh',572),(30,'2018-02-22',686,766688,1,'img/book/dunghonohoian-200x280.gif','Tác giả Đinh Lê Vũ thì “khẳng định”: “Đừng hôn ở Hội An!” Hẳn đây không phải là một lời khuyên, cũng không hề là lời thách thức. Vâng, đây chỉ là một cuốn sách về những câu chuyện của những con người từng sinh ra và lớn lên ở Hội An, từng có rất nhiều kỉ niệm, từng rất yêu nơi ấy và rồi cho đến khi bạn đọc xong tác phẩm thì tình yêu đó sẽ chảy tràn đến con tim bạn. Nếu tình yêu ấy lây lan, bạn làm sao không thể không… hôn.\n\nNhưng, nếu trót phải lòng một nụ hôn, một nụ hôn không phải ở một nơi nào khác mà là Hội An thì như lời tác giả thú nhận: “…mãi cho đến nụ hôn của mối tình sau cuối ở Hội An. Sau nụ hôn đó, tôi lập gia đình…”, bạn đã vỡ lẽ thêm điều gì chưa? Hãy dừng lại một chút với tác phẩm, chuyện đã đến nước… khó mà đùa được rồi.',7,67500,'Đừng Hôn Ở Hội An','Đinh Lê Vũ',56),(31,'2018-05-02',435,11221,2,'img/book/Bia-sach-Tieng-Viet-123-200x280.jpg','Hiện nay trên thị trường có nhiều sách dạy tiếng Việt cho người nước ngoài, giáo trình phục vụ việc dạy – học tiếng Việt cho người nước ngoài. Nhìn chung, các tài liệu này đều đáp ứng được mong muốn của người nước ngoài ở các trình độ khác nhau. ',1,273000,'Tiếng Việt 123 (Tiếng Việt Dành Cho Người Nước Ngoài)','Tập Thể Giáo Viên 123Vietnamese',54),(32,'2018-03-11',645,2132,2,'img/book/Bia-sach_Tieng-Viet-cho-nguoi-Nhat-200x280.jpg','Trên thị trường ở cả Hà Nội và TP. Hồ Chí Minh hiện nay không có nhiều tài liệu, giáo trình học Tiếng Việt viết riêng cho người Nhật. Hiểu được điều đó, trung tâm 123VIETNAMESE đã rất nỗ lực để cho ra mắt cuốn giáo trình 123ベトナム語 này. ',1,245500,'Tiếng Việt 123 (Tiếng Việt Dành Cho Người Nhật)','Tập Thể Giáo Viên 123Vietnamese',5465),(33,'2017-09-23',75763,33,2,'img/book/Bìa-sách-bài-tập-200x280.jpg','Sách Bài Tập Tiếng Việt 123 (Tiếng Việt Dành Cho Người Nước Ngoài). Ngoài) là sách học Tiếng Việt dành cho người nước ngoài.. Ngoài) gồm 16 bài học:. ',1,126000,'Sách Bài Tập Tiếng Việt 123','Tập Thể Giáo Viên 123Vietnamese',768),(34,'2016-08-13',342,232,2,'img/book/Bia-sach_Tieng-Viet-cho-nguoi-Han-200x280.jpg','Hàn Quốc (501) Tiếng Triều Tiên (66) Giảng Dạy (7) Người Việt (5)',1,245000,'Tiếng Việt 123 (Tiếng Việt Dành Cho Người Hàn Quốc)','Tập Thể Giáo Viên 123Vietnamese',5),(35,'2018-03-17',432432,42,3,'img/book/IMG_0841-200x280.jpg','Cách Học Ngoại Ngữ Nhanh Và Không Bao Giờ Quên. Fluent Forever là cách dạy bất cứ ngoại ngữ nào bạn muốn một cách nhanh nhất, hiệu quả nhất. ',2,98000,'Fluent forever – Cách học ngoại ngữ nhanh và không bao giờ quên','Gabriel Wyner',4),(36,'2017-12-23',54546,434456,3,'img/book/img166_14-200x280.jpg','Một cuốn sách thú vị đưa ra một cách',2,56000,'Chiến Lược IELTS 7.0','Võ Trung Kiên',65),(37,'2017-01-30',765,56,3,'img/book/danba30-200x280.gif','Những năm tháng phải lòng, yêu đương, cuồng nhiệt đã trôi qua sau lưng lúc nào không nhận ra. Đàn bà ba mươi có hai cuộc sống. Một là gia đình, một là khao khát.',2,71000,'Đàn Bà 30 (Tái Bản 2015)','Trang Hạ',4),(38,'2018-06-24',654,55,3,'img/book/tinh-nhan-khong-bao-gio-cuoi-200x280.jpg','Tình nhân không bao giờ đòi cưới là cuốn sách mới nhất của Trang Hạ về tình yêu và sự chờ đợi tình yêu trong vô vọng. Trong cô đơn, chúng ta vẫn không ngừng bị giày vò bởi những khao khát tìm kiếm và mong ước mình được thuộc về một ai đó. ',2,59500,'Tình Nhân Không Bao Giờ Đòi Cưới','Trang Hạ',6),(39,'2017-07-07',45,43,4,'img/book/chipheovafacebook-200x280.gif','Ruộng dưa chuột nhà tôi năm nay được mùa, quả nào quả nấy đều dài, to, cong, đầu nhẵn mọng, cấu nhẹ phát là nhựa trắng chảy ra rin rỉn. Thế nhưng đành vứt ngoài ruộng cho mấy con bò cái nó ngậm, chả thèm thu hoạch',3,64500,'Chí Phèo Và Facebook','Võ Tòng Đánh Mèo',8),(40,'2017-05-11',43,34,4,'img/book/macnhien-200x280.gif','\"Mặc Nhiên\" là cuốn sách của tác giả Elvis Nguyễn viết về nỗi trống trải, cô đơn và tâm tình u uẩn của con người, dù yêu hay không yêu.',3,52000,'Mặc Nhiên','Elvis Nguyễn',4),(41,'2018-03-22',6,32,4,'img/book/dat-toi-ve-phia-mat-troi-200x280.jpg','Cuốn sách thấm đẫm hương vị của Đà Lạt – những rừng thông rực lên trong nắng sớm, mặt hồ óng ả như dát vàng, pha lẫn cả trong đó chút hương vị của những ngày mưa ủ ê của một chớm xuân Hà Nội…',3,58500,'Dắt Tôi Về Phía Mặt Trời','Ploy - Mèo Mốc',66),(42,'2018-06-29',87,54,4,'img/book/ivanhoe-200x280.jpg','Ivanhoe là một cuốn tiểu thuyết hư cấu lịch sử của nhà văn Walter Scott xuất bản vào năm 1820, cốt chuyện được xây dựng lấy bối cảnh của nước Anh thế kỷ 12.',3,96000,'Ivanhoe','Walter Scott',43),(43,'2017-05-30',87698,76,5,'img/book/doinaykhongdoithay-200x280.jpg','Anh vốn là kẻ ngông cuồng tự đại, khi còn nhỏ vì bị bức ép mà phải dồn cô bạn thanh mai trúc mã của mình vào biển lửa, từ đó về sau anh hao tâm tổn sức làm biết bao chuyện nhằm bù đắp cho cô, ngày cầu hôn cũng là ngày cô quay lưng phản bội anh. Tình nghĩa nhiều năm hóa ra cũng chỉ là lời nói dối.',4,54000,'Đời Này Không Đổi Thay',' Huyền Mặc',5),(44,'2018-01-28',45,87,5,'img/book/hkda_tran_nhan_tong-200x280.gif','Cuốn sách có 3 phần: Thời đại nhà Trần và Vua Trần, Nhân Tông; Vua Trần Nhân Tông – Anh hùng dân tộc trong sự nghiệp xây dựng và bảo vệ Tổ quốc; Di sản tư tưởng và văn hóa của thời đại nhà Trần của Vua Trần Nhân Tông.',4,78000,'Trần Nhân Tông','TS Nguyễn Quốc Tuấn',12),(45,'2018-02-12',3,5,5,'img/book/hoc-vien-quai-vat-200x280.jpeg','Cuốn sách thuộc bộ sách Disney đặc biệt dành cho «big fan» của những nàng công chúa Disney, những Quái nhí và anh hùng, bạn bè đồ chơi đại gia đình Disney.',4,123000,'Học Viện Quái Vật','Disney.',13),(46,'2017-06-11',323,43,5,'img/book/Huyen_Tran_cong_chua-200x280.gif','Việc nàng thuận theo ý phụ vương là thái thượng hoàng Trần Nhân Tông về làm phi của vua Chế Mân nước Chiêm Thành đã góp phần thắt chặt tình bang giao giữa hai nước',4,76000,'Huyền Trân Công Chúa','Trần Khắc Chung',34),(47,'2017-09-30',434,43,6,'img/book/lego10662-200x280.jpg','Với LEGO Books, bạn có thể dễ dàng tìm thấy Sách về các ý tưởng lắp ráp LEGO, những quyển truyện tranh hay nhất, đề can dán đẹp nhất và còn nhiều hơn nữa!',5,99000,'LeGo','LEGO BOOKS',54),(48,'2017-02-11',54,44,6,'img/book/mockhoathubongnici-200x280.jpg','Móc khoá được thiết kế với phong cách xinh xắn, đáng yêu đặc trưng của NICI. Chất liệu vải lông, bông gòn chất lượng cao và dễ dàng giặt sạch chiếc móc khoá khi cần thiết.',5,98000,'Móc Khóa Thú Bông Nici 35964 Moonville','Moonville',6),(49,'2017-04-25',65,32,6,'img/book/mongmongchucho-200x280.gif','Mong Mong tuy chỉ là một chú cún thôi',5,78000,'Mong Mong Chú Cún Ham Đọc Sách','Choi Eun-Ok',7),(50,'2018-02-11',455,43,6,'img/book/taybuongtaytimthoinho-200x280.gif','Cuốn sách Tay buông tay và tim thôi nhớ đã thể hiện tất cả những lần ly biệt dù có mang theo tình yêu hay nỗi thù hận, cũng đều là một sự chia cắt đau khổ.',5,56000,'TAY BUÔNG TAY VÀ TIM THÔI NHỚ','Trương Tiểu Nhàn',4354);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `VanHoc` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `KinhTe` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `TT-DS` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `SachNgoaiVan` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `SachThieuNhi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `BaoChi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `TapChi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Hài hước - Truyện cười','Doanh nhân','Kỹ năng sống','Từ điển','Kiến thức khoa học','Người lao động','Phụ nữ'),(2,'Huyền bí - Giả tưởng','Khởi nghiệp','Nghệ thuật sống đẹp','Văn học','Manga - Comic','Tiên phong','Thời trang'),(3,'Phê bình văn học','Kinh tế học','Chăm sóc sức khỏe','Kinh tế','Truyện tranh','Pháp luật','Văn hoá'),(4,'Phóng sự - Ký sự','Kỹ năng làm việc','Làm vườn - Vật nuôi','','Văn học','Tài chính','Ngày nay'),(5,'Tác phẩm kinh điển','Marketing - Bán hàng','Nấu ăn','',NULL,'Công an',NULL),(6,'Thơ','Quản trị - Lãnh đạo','Nuôi dạy con','',NULL,'Chứng khoán',NULL),(7,'Tiểu sử - Hồi ký','Tài chính - Kế toán','Chăm sóc gia đình',NULL,NULL,'Làm đẹp',NULL),(8,'Tiểu thuyết tình cảm',NULL,'Phong thủy - Nhà cửa',NULL,NULL,NULL,NULL),(9,'Truyện kiếm hiệp',NULL,'Tâm lý - Giới tính',NULL,NULL,NULL,NULL),(10,'Truyện ngắn - Tản văn',NULL,'Trò chơi - Giải trí',NULL,NULL,NULL,NULL),(11,'Truyện ngôn tình',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Truyện trinh thám',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Đam mỹ',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Phiêu lưu',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datsp`
--

DROP TABLE IF EXISTS `datsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datsp` (
  `idDatSP` int(11) NOT NULL AUTO_INCREMENT,
  `idMaSP` int(11) DEFAULT NULL,
  `sl` int(11) DEFAULT NULL,
  `idGioHang` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDatSP`),
  KEY `MSP_idx` (`idMaSP`),
  KEY `IDGH_idx` (`idGioHang`),
  CONSTRAINT `IDGH` FOREIGN KEY (`idGioHang`) REFERENCES `giohang` (`idgiohang`),
  CONSTRAINT `MSP` FOREIGN KEY (`idMaSP`) REFERENCES `book` (`idSach`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datsp`
--

LOCK TABLES `datsp` WRITE;
/*!40000 ALTER TABLE `datsp` DISABLE KEYS */;
INSERT INTO `datsp` VALUES (3,26,1,2),(4,20,2,2),(5,21,1,4),(6,6,3,5),(7,14,2,6),(8,19,1,7),(9,19,1,8),(10,15,1,21),(11,14,1,22),(12,14,1,23),(13,14,1,24),(14,14,1,25),(15,14,1,26),(16,14,1,27),(17,14,1,28),(18,14,1,29),(19,14,11,30),(20,29,1,31),(21,29,1,32),(22,29,1,33),(23,16,1,34),(24,16,1,35),(25,16,1,36),(26,16,1,37);
/*!40000 ALTER TABLE `datsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giohang` (
  `idGioHang` int(11) NOT NULL AUTO_INCREMENT,
  `tongGia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGioHang`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giohang`
--

LOCK TABLES `giohang` WRITE;
/*!40000 ALTER TABLE `giohang` DISABLE KEYS */;
INSERT INTO `giohang` VALUES (2,250000),(3,0),(4,130500),(5,256500),(6,117000),(7,52000),(8,52000),(9,324000),(10,189000),(11,63000),(12,58500),(13,71000),(14,71000),(15,71000),(16,71000),(17,71000),(18,71000),(19,134000),(20,54000),(21,61000),(22,58500),(23,58500),(24,58500),(25,58500),(26,58500),(27,58500),(28,58500),(29,58500),(30,643500),(31,54000),(32,54000),(33,54000),(34,63000),(35,63000),(36,63000),(37,63000);
/*!40000 ALTER TABLE `giohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khachhang` (
  `idKhachHang` int(11) NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(200) DEFAULT NULL,
  `diaChi` varchar(450) DEFAULT NULL,
  `soDT` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`idKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Nguyen Van A','Nguyen Van Cu, quan 5','0123456789'),(17,'nguyen huu than','18 Tran Van Thanh','1657409117'),(18,'nguyen huu than','18 Tran Van Thanh','1657409117'),(19,'trinh','123','123'),(20,'Nguyễn hữu Thân','Đại an đông 1','1657409117'),(21,'Hoàng Thương','123','0987654321'),(22,'Hod','fdf','21431345'),(23,'j','k','435'),(24,'hjhg','jh','866'),(25,'dsa','sa','23'),(26,'hjhg','23','0987654'),(27,'uuu','yyt','9876');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loai` (
  `idLoai` int(11) NOT NULL AUTO_INCREMENT,
  `tenLoai` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai`
--

LOCK TABLES `loai` WRITE;
/*!40000 ALTER TABLE `loai` DISABLE KEYS */;
INSERT INTO `loai` VALUES (1,'Văn học'),(2,'Kinh tế'),(3,'Thường thức - đời sống '),(4,'Sách ngoại văn'),(5,'Sách thiếu nhi'),(6,'Báo chí'),(7,'Tạp chí');
/*!40000 ALTER TABLE `loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoidung` (
  `userName` varchar(45) NOT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `loaiNguoiDung` int(11) DEFAULT NULL,
  `idNguoiSuDung` int(11) DEFAULT NULL,
  PRIMARY KEY (`userName`),
  KEY `QL_idx` (`idNguoiSuDung`),
  CONSTRAINT `KH1` FOREIGN KEY (`idNguoiSuDung`) REFERENCES `khachhang` (`idKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('1512529','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,20),('1512561','8356c920e58c197c3fcea76b9209aa789103b88ed84bdc7e58fb34bf24bc8552',0,17),('1512601','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',0,19),('hoaithuong','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0,21);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhasx`
--

DROP TABLE IF EXISTS `nhasx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhasx` (
  `idNhaSX` int(11) NOT NULL AUTO_INCREMENT,
  `tenNhaSX` varchar(200) DEFAULT NULL,
  `soLuongSP` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNhaSX`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhasx`
--

LOCK TABLES `nhasx` WRITE;
/*!40000 ALTER TABLE `nhasx` DISABLE KEYS */;
INSERT INTO `nhasx` VALUES (1,'Văn học',1200),(2,'Tổng hợp TPHCM',3000),(3,'Xuất bản trẻ',2000),(4,'Thế Giới',1000),(5,'Nhà xuất bản Lao động',500),(6,'Thanh niên',1234);
/*!40000 ALTER TABLE `nhasx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quanly`
--

DROP TABLE IF EXISTS `quanly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quanly` (
  `idQuanLy` int(11) NOT NULL AUTO_INCREMENT,
  `hoTenQL` varchar(100) DEFAULT NULL,
  `capQL` int(11) DEFAULT NULL,
  PRIMARY KEY (`idQuanLy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quanly`
--

LOCK TABLES `quanly` WRITE;
/*!40000 ALTER TABLE `quanly` DISABLE KEYS */;
/*!40000 ALTER TABLE `quanly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('-zv4iQ1RT2zJDKaLSDTRxakCu_JIy256',1530289974,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"cart\":[{\"idSach\":\"16\",\"ten_sach\":\"Bão\",\"giaBan\":63000,\"hinh\":\"img/book/bao-200x280.gif\",\"sl\":1,\"amount\":63000},{\"idSach\":\"14\",\"ten_sach\":\"Quá Trẻ Để Chết: Hành Trình Nước Mỹ\",\"giaBan\":58500,\"hinh\":\"img/book/quatredechet-200x280.gif\",\"sl\":1,\"amount\":58500}],\"user\":{\"userName\":\"1512601\",\"pass\":\"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92\",\"loaiNguoiDung\":0,\"idNguoiSuDung\":19},\"Authorized\":0,\"reUrl\":\"/tim-kiem/theo-gia/?giadau=200000&giacuoi=9999999\"}'),('H4FfFA7ikoyGvMfMZWZ3u8EpSYwMRsPU',1530227931,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"cart\":[],\"user\":{\"userName\":\"1512561\",\"pass\":\"8356c920e58c197c3fcea76b9209aa789103b88ed84bdc7e58fb34bf24bc8552\",\"loaiNguoiDung\":0,\"idNguoiSuDung\":17},\"Authorized\":0}'),('bnqHv2vW4Cok7NRWuY4KM05VeKhJVRDX',1530301541,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false,\"cart\":[{\"idSach\":\"15\",\"ten_sach\":\"Ba Muốn Nuôi Con Bằng Sữa Mẹ\",\"giaBan\":61000,\"hinh\":\"img/book/bamuonnuoiconbangsuame-200x280.gif\",\"sl\":1,\"amount\":61000}],\"reUrl\":\"/tim-kiem/theo-gia/?giadau=200000&giacuoi=9999999\"}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanhtoan`
--

DROP TABLE IF EXISTS `thanhtoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thanhtoan` (
  `idThanhToan` int(11) NOT NULL AUTO_INCREMENT,
  `idGioHang` int(11) DEFAULT NULL,
  `idKhachHang` int(11) DEFAULT NULL,
  `diaChiThanhToan` varchar(450) DEFAULT NULL,
  `ngayDatHang` datetime(6) DEFAULT NULL,
  `sdtNhanHang` varchar(11) DEFAULT NULL,
  `trangThai` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idThanhToan`),
  KEY `GH_idx` (`idGioHang`),
  KEY `KH_idx` (`idKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanhtoan`
--

LOCK TABLES `thanhtoan` WRITE;
/*!40000 ALTER TABLE `thanhtoan` DISABLE KEYS */;
INSERT INTO `thanhtoan` VALUES (2,2,20,'Đại an đông 1','2018-06-22 00:00:00.000000','1657409117',0),(3,4,20,'Đại an đông 1','2018-06-23 00:00:00.000000','1657409117',0),(4,5,20,'Đại an đông 1','2018-06-23 00:00:00.000000','1657409117',1),(5,8,20,'Đại an đông 1','2018-06-26 00:00:00.000000','1657409117',0),(6,9,17,'18 Tran Van Thanh','2018-06-26 00:00:00.000000','1657409117',0),(7,10,17,'18 Tran Van Thanh','2018-06-26 00:00:00.000000','1657409117',0),(8,11,17,'18 Tran Van Thanh','2018-06-26 00:00:00.000000','1657409117',0),(9,12,17,'18 Tran Van Thanh','2018-06-26 00:00:00.000000','1657409117',0),(10,19,17,'18 Tran Van Thanh','2018-06-26 00:00:00.000000','1657409117',0),(11,20,17,'18 Tran Van Thanh','2018-06-26 00:00:00.000000','1657409117',0),(12,21,17,'18 Tran Van Thanh','2018-06-26 00:00:00.000000','1657409117',0),(13,22,17,'18 Tran Van Thanh','2018-06-28 06:18:39.000000','1657409117',0);
/*!40000 ALTER TABLE `thanhtoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-29  2:46:16
