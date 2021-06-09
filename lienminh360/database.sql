/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.34-MariaDB : Database - lienminh360
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lienminh360` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lienminh360`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(100) DEFAULT NULL,
  `password` char(100) DEFAULT NULL,
  KEY `stt` (`stt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`stt`,`username`,`password`) values (1,'admin','admin'),(2,'vuvanbang','123456');

/*Table structure for table `tinchinh` */

DROP TABLE IF EXISTS `tinchinh`;

CREATE TABLE `tinchinh` (
  `matin` int(11) NOT NULL AUTO_INCREMENT,
  `loaitin` varchar(300) DEFAULT NULL,
  `tieude` varchar(300) DEFAULT NULL,
  `noidung` varchar(10000) DEFAULT NULL,
  `tacgia` varchar(30) DEFAULT NULL,
  `thoigian` date DEFAULT NULL,
  `imgbanner` int(11) DEFAULT NULL,
  PRIMARY KEY (`matin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tinchinh` */

insert  into `tinchinh`(`matin`,`loaitin`,`tieude`,`noidung`,`tacgia`,`thoigian`,`imgbanner`) values (1,NULL,'Khuyáº¿n mÃ£i cuá»‘i tuáº§n tá»« 23/12 Ä‘áº¿n 27/12','Nhanh tay chá»n ngay nhá»¯ng trang phá»¥c yÃªu thÃ­ch','Mr Solo','0000-00-00',NULL),(2,NULL,'CHÃNH THá»¨C: Ambition giáº£i nghá»‡ sau 8 nÄƒm thi Ä‘áº¥u chuyÃªn nghiá»‡p','Má»›i Ä‘Ã¢y, Kang â€œAmbitionâ€ Chan-Yong Ä‘Ã£ thÃ´ng bÃ¡o trÃªn kÃªnh Stream cá»§a mÃ¬nh ráº±ng anh sáº½ giáº£i nghá»‡ vÃ  khÃ´ng tiáº¿p tá»¥c thi Ä‘áº¥u chuyÃªn nghiá»‡p. rong buá»•i Stream thá»­ nghiá»‡m trÃªn Twitch, Ambiton Ä‘Ã£ gá»­i lá»i xin lá»—i vÃ  lá»i chÃ o táº¡m biá»‡t Ä‘áº¿n ngÆ°á»i hÃ¢m má»™ khi quyáº¿t Ä‘á»‹nh giáº£i nghá»‡. Ká»ƒ tá»« nÄƒm 2011 cho Ä‘áº¿n nay, Ambition lÃ  má»™t tÆ°á»£ng Ä‘Ã i thá»±c sá»± cá»§a LMHT HÃ n Quá»‘c khi gáº·t hÃ¡i Ä‘Æ°á»£c vÃ´ sá»‘ danh hiá»‡u lá»›n nhá». Khi cÃ²n thi Ä‘áº¥u Ä‘Æ°á»ng giá»¯a, Ambition lÃ  cÃ¡i tÃªn ná»•i báº­t nháº¥t trong thá»i Ä‘iá»ƒm 2012 â€“ giá»¯a nÄƒm 2013 vÃ  tá»«ng Ä‘áº¡i diá»‡n HÃ n Quá»‘c Ä‘i thi Ä‘áº¥u All-Star hay World Cyber Games 2013. Sau khi sa sÃºt phong Ä‘á»™ vÃ  khÃ´ng cÃ²n kháº£ nÄƒng tá»a sÃ¡ng á»Ÿ Ä‘Æ°á»ng giá»¯a, Ambition chuyá»ƒn sang Ä‘i rá»«ng vÃ  cÃ³ Ä‘Æ°á»£c cho mÃ¬nh danh hiá»‡u cao quÃ½ nháº¥t lÃ  chá»©c vÃ´ Ä‘á»‹ch tháº¿ giá»›i 2017 cÃ¹ng Samsung Galaxy.','Krystal','0000-00-00',NULL),(3,NULL,'Lá»±a chá»n dá»‹: â€œBan PhÆ°á»›câ€ vá»›i Lee Sin SiÃªu Há»— Trá»£','Trong phiÃªn báº£n 8.24b vá»«a rá»“i, Ä‘á»ƒ bÃ¹ Ä‘áº¯p cho nhá»¯ng thiá»‡t thÃ²i mÃ  nhá»¯ng Há»— Trá»£ buff thuáº§n tÃºy pháº£i chá»‹u Ä‘á»±ng so vá»›i nhá»¯ng há»— trá»£ mang thiÃªn hÆ°á»›ng sÃ¡t thÆ°Æ¡ng, cÃ¡c trang bá»‹ thuáº§n há»— trá»£ Ä‘Ã£ Ä‘Æ°á»£c tÄƒng láº¡i sá»©c máº¡nh má»™t cÃ¡ch khÃ¡ Ä‘Ã¡ng ká»ƒ. Xem chi tiáº¿t phiÃªn báº£n táº¡i Ä‘Ã¢y nhÃ©!  NhÆ°ng trÃ¡i vá»›i cÃ¡c vá»‹ tÆ°á»›ng Há»— Trá»£ thuáº§n tÃºy pháº£i tráº£i qua Ä‘á»§ thá»© náº¯ng mÆ°a giÃ´ng bÃ£o cá»§aâ€¦ Riot, cÃ³ má»™t thanh niÃªn dÃ¹ sá»Ÿ há»¯u má»™t kÄ© nÄƒng táº¡o lÃ¡ cháº¯n cá»±c khá»§ng láº¡i Ä‘Æ°á»£c miá»…n nhiá»…m táº¥t, cÃ²n ai khÃ¡c ngoÃ i biá»ƒu tÆ°á»£ng cá»§a vá»‹ trÃ­ Ä‘i rá»«ng á»Ÿ má»i mÃ¡y chá»§ trÃªn tháº¿ giá»›iâ€¦ DÃ¹ lÃ  má»™t vá»‹ tÆ°á»›ng thuáº§n Äáº¥u SÄ© â€“ Äi Rá»«ng, Ã­t ai biáº¿t Ä‘Æ°á»£c ráº±ng Lee Sin lÃ  káº» sá»Ÿ há»¯u kÄ© nÄƒng buff lÃ¡ cháº¯n máº¡nh báº­c nháº¥t LiÃªn Minh Huyá»n Thoáº¡i. ÄÃºng tháº¿, báº¡n khÃ´ng nghe láº§m Ä‘Ã¢u, Há»™ Thá»ƒ cá»§a Lee Sin cÃ³ kháº£ nÄƒng táº¡o ra lÃ¡ cháº¯n máº¡nh hÆ¡n háº³n nhá»¯ng Lulu, Janna, 55/110/165/220/275 + 80% SMPT, vÃ  chá»‰ pháº£i chá»‹u thua má»—i combo Kinh Mantra â€“ Linh GiÃ¡p cá»§a Karma mÃ  thÃ´i . Tuy nhiÃªn, Há»™ Thá»ƒ cá»§a Lee Sin láº¡i cÃ³ kÄ© nÄƒng há»“i cá»±c nhanh náº¿u sá»­ dá»¥ng lÃªn Ä‘á»“ng minh â€“ 3.6 giÃ¢y (vá» khoáº£ng nÃ y thÃ¬ khÃ´ng ngÃ¡n bá»‘ con Ä‘á»©a nÃ o luÃ´n, chá»‰ Sona cáº¥p 16 má»›i ngang cÆ¡ Ä‘Æ°á»£c thÃ´i Ä‘áº¥y).  HÆ¡n ná»¯a, Lee Sin luÃ´n táº¡o lÃ¡ cháº¯n cho cáº£ 2 ngÆ°á»i, Ä‘iá»u nÃ y cho phÃ©p Tháº§y Tu MÃ¹ cÃ³ thá»ƒ thoáº£i mÃ¡i báº­t lÃ¡ cháº¯n cho Ä‘á»“ng Ä‘á»™i mÃ  khÃ´ng pháº£i quÃ¡ lo láº¯ng vá» viá»‡c báº£n thÃ¢n bá»‹ dá»“n sÃ¡t thÆ°Æ¡ng.','Devil','0000-00-00',NULL),(4,NULL,'ÄÃ¡nh giÃ¡ loáº¡t Trang Bá»‹ Xáº¡ Thá»§ má»›i: máº¡nh lÃªn hay yáº¿u Ä‘i?','Sau Ä‘á»£t hÃ© lá»™ káº¿ hoáº¡ch lÃ m láº¡i trang bá»‹ Xáº¡ Thá»§ trong phiÃªn báº£n tiáº¿p theo cá»§a Riot PhRoXzOn, toÃ n cá»™ng Ä‘á»“ng LiÃªn Minh Huyá»n Thoáº¡i Ä‘Ã£ vÃ  Ä‘ang sÃ´i sá»¥c vá»›i nhá»¯ng thay Ä‘á»•i nÃ y. Nhá»¯ng cuá»™c tranh cÃ£i khÃ´ng há»“i káº¿t váº«n Ä‘ang diá»…n ra; váº­y vá»›i cÃ¡c Ä‘á»™c giáº£ thÃ¢n yÃªu cá»§a LiÃªn Minh 360, cÃ¡c báº¡n nghÄ© ráº±ng thay Ä‘á»•i trang bá»‹ nhÆ° tháº¿ nÃ o lÃ  tá»‘t nháº¥t? CÃ¹ng bÃ¬nh chá»n vÃ  tháº£o luáº­n vá»›i má»i ngÆ°á»i sau bÃ i viáº¿t dÆ°á»›i Ä‘Ã¢y nhÃ©! VÃ´ Cá»±c Kiáº¿m â€“ nhÃ¢n váº­t bá»‹ Ä‘á»• lá»—i nhiá»u nháº¥t cho tiáº¿n trÃ¬nh tÄƒng trÆ°á»Ÿngâ€¦ Ã¢m cá»§a lá»›p tÆ°á»›ng xáº¡ thá»§ trong suá»‘t mÃ¹a giáº£i vá»«a rá»“i sáº½ lÃ  tÃ¢m Ä‘iá»ƒm cá»§a Ä‘á»£t cáº­p nháº­t trang bá»‹ láº§n nÃ y. Ná»™i táº¡i gÃ¢y sÃ¡t thÆ°Æ¡ng chuáº©n Ä‘Æ°á»£c thÃªm má»›i vÃ o trong báº£n 8.11 khÃ´ng Ä‘em láº¡i sá»± thá»a mÃ£n cáº§n cÃ³ trong má»¥c tiÃªu diá»‡t-Äá»¡-ÄÃ²n, trong khi tÃ¡c Ä‘á»™ng lÃªn cÃ¡c má»¥c tiÃªu giÃ¡p má»ng cÅ©ngâ€¦ gáº§n nhÆ° lÃ  khÃ´ng cÃ³.  Tin tá»‘t Ä‘Ã¢y: VÃ´ Cá»±c Kiáº¿m â€œmá»›iâ€ sáº½ cÃ³ láº¡i ná»™i táº¡i gÃ¢y thÃªm sÃ¡t thÆ°Æ¡ng nhÆ° phiÃªn báº£n trÆ°á»›c Ä‘Ã¢y. Riot Ä‘ang cÃ¢n nháº¯c giá»¯a viá»‡c tráº£ láº¡i cÃ´ng thá»©c cÅ© vÃ  giá»¯ nguyÃªn giÃ¡ 3400 vÃ ng; hoáº·c Ä‘áº©y nÃ³ lÃªn giÃ¡ tá»›i 5000 vÃ ng vÃ  mang láº¡i má»i chá»‰ sá»‘ mÃ  má»™t xáº¡ thá»§ cáº§n.','MÅ© Tráº¯ng','0000-00-00',NULL);

/*Table structure for table `tinesport` */

DROP TABLE IF EXISTS `tinesport`;

CREATE TABLE `tinesport` (
  `matin` int(11) NOT NULL AUTO_INCREMENT,
  `loaitin` varchar(300) DEFAULT NULL,
  `tieude` varchar(300) DEFAULT NULL,
  `noidung` varchar(10000) DEFAULT NULL,
  `tacgia` varchar(30) DEFAULT NULL,
  `thoigian` date DEFAULT NULL,
  `imgbanner` int(11) DEFAULT NULL,
  PRIMARY KEY (`matin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tinesport` */

insert  into `tinesport`(`matin`,`loaitin`,`tieude`,`noidung`,`tacgia`,`thoigian`,`imgbanner`) values (1,NULL,'Bang nÃ³i vá» khoáº£ng thá»i gian Ã¡p lá»±c khi cÃ²n trong mÃ u Ã¡o SKT: â€œTÃ´i khÃ´ng há» muá»‘n tráº£i qua nÃ³ má»™t láº§n ná»¯aâ€','SK Telecom T1 Ä‘Æ°á»£c biáº¿t Ä‘áº¿n lÃ  Ä‘á»™i tuyá»ƒn LMHT xuáº¥t sáº¯c nháº¥t tháº¿ giá»›i. Sau khi vÃ´ Ä‘á»‹ch CKTG 2013 , há» cÃ³ Ä‘Æ°á»£c Ä‘á»™i hÃ¬nh máº¡nh nháº¥t vÃ  tiáº¿p tá»¥c vÃ´ Ä‘á»‹ch 2 láº§n liÃªn tiáº¿p vÃ o nÄƒm 2015 vÃ  2016, táº¡o nÃªn má»™t triá»u Ä‘áº¡i chÆ°a tá»«ng cÃ³ trong lá»‹ch sá»­ LMHT.  NhÆ°ng má»™t tuyá»ƒn thá»§ á»Ÿ má»™t Ä‘á»™i tuyá»ƒn liÃªn tiáº¿p vÃ´ Ä‘á»‹ch láº¡i cÃ ng Ã­t cÃ³ kinh nghiá»‡m. NgÆ°á»i Ä‘i Ä‘Æ°á»ng dÆ°á»›i Bae â€œBangâ€ Junsik Ä‘Ã£ chia sáº» tháº³ng tháº¯n vá» Ã¡p lá»±c trong mÃ u Ã¡o SKT. Trong má»™t AMA (Ask Me Anything) trÃªn Reddit gáº§n Ä‘Ã¢y, anh Ä‘Ã£ gá»i Ä‘Ã³ lÃ  khoáº£ng thá»i gian â€œkhÃ³ khÄƒnâ€.  â€œNhá»¯ng khoáº£nh kháº¯c tá»a sÃ¡ng mÃ  ngÆ°á»i hÃ¢m má»™ nhÃ¬n tháº¥y, Ä‘Ã³ lÃ  nhá»¯ng khoáº£nh kháº¯c mÃ  tÃ´i khÃ´ng muá»‘n nháº¯c tá»›iâ€, anh nÃ³i. â€œTrong suá»‘t 2 nÄƒm 2015 vÃ  2016, khi chÃºng tÃ´i giÃ nh Ä‘Æ°á»£c má»i danh hiá»‡u, tÃ´i Ä‘Ã£ cÃ³ nhiá»u cÆ¡n stress vÃ  Ã¡p lá»±c cÃ´ng viá»‡c Ä‘iÃªn cuá»“ng Ä‘áº¿n má»©c tÃ´i tháº¥y ngay cáº£ viá»‡c nhá»› láº¡i cÅ©ng vÃ´ cÃ¹ng khÃ³ khÄƒn. ÄÃºng lÃ  quÃ£ng thá»i gian Ä‘Ã³ Ä‘Ã£ dáº¡y tÃ´i nhiá»u bÃ i há»c Ä‘á»ƒ trá»Ÿ thÃ nh ngÆ°á»i tá»‘t hÆ¡n, nhÆ°ng tÃ´i váº«n khÃ´ng há» muá»‘n tráº£i qua má»™t láº§n ná»¯a.â€','Luna','0000-00-00',NULL),(2,NULL,'VIT Jiizuke: â€œNhá»¯ng Ä‘á»‹nh kiáº¿n â€‹â€‹vÃ  Ã½ kiáº¿n chá»§ quan trÆ°á»›c khi mÃ¹a giáº£i khá»Ÿi tranh Ä‘á»u lÃ  nhá»¯ng thá»© vÃ´ Ã­ch!â€','MÃ¹a giáº£i 2018 cá»§a Team Vitality lÃ  má»™t trong nhá»¯ng cÃ¢u chuyá»‡n thÃº vá»‹ nháº¥t trong nÄƒm vá»«a qua. Vá»›i lá»‘i chÆ¡i khÃ´ng ngáº¡i va cháº¡m, luÃ´n sáºµn sÃ ng giao tranh á»Ÿ báº¥t cá»© nÆ¡i Ä‘Ã¢u vÃ  báº¥t cá»© khi nÃ o, cÃ¹ng vá»›i Ä‘Ã³ lÃ  má»™t sá»± tá»± tin Ä‘áº¿n kinh ngáº¡c, Vitality Ä‘Ã£ Ä‘á»ƒ láº¡i má»™t áº¥n tÆ°á»£ng sÃ¢u sáº¯c trong lÃ²ng nhá»¯ng ai Ä‘Ã£ theo dÃµi Chung Káº¿t Tháº¿ Giá»›i 2018.  Vá»‹ thuyá»n trÆ°á»Ÿng cá»§a con tÃ u mang tÃªn Vitality khÃ´ng ai khÃ¡c ngoÃ i Daniele â€œJiizukeâ€ di Mauro. ChÃ ng tÃ¢n binh ngÆ°á»i Ã váº«n chá»‰ lÃ  má»™t cÃ¡i tÃªn Ä‘áº§y láº¡ láº«m vá»›i má»i ngÆ°á»i khi anh Ä‘áº¿n vá»›i giáº£i Ä‘áº¥u ChÃ¢u Ã‚u vÃ o ná»­a Ä‘áº§u cá»§a giáº£i mÃ¹a xuÃ¢n. Tháº¿ nhÆ°ng á»Ÿ thá»i Ä‘iá»ƒm hiá»‡n táº¡i, con tÃ u Vitality chá»‰ cÃ³ thá»ƒ khá»Ÿi hÃ nh háº¿t tá»‘c lá»±c khi Jiizuke khiáº¿n ngÆ°á»i hÃ¢m má»™ pháº£i choÃ¡ng vÃ¡ng vá»›i nhá»¯ng mÃ n trÃ¬nh diá»…n cÃ¡ nhÃ¢n háº¿t sá»©c áº¥n tÆ°á»£ng cá»§a anh.  Jiizuke Ä‘Ã£ cÃ³ má»™t mÃ¹a giáº£i tÃ¢n binh vÃ´ cÃ¹ng xuáº¥t sáº¯c, vÃ  nhá» Ä‘Ã³ anh Ä‘Ã£ kiáº¿m vá» cho mÃ¬nh má»™t vá»‹ trÃ­ tham dá»± giáº£i Ä‘áº¥u SiÃªu Sao Äáº¡i Chiáº¿n 2018 diá»…n ra táº¡i Las Vegas. Táº¡i Ä‘Ã³, anh Ä‘Ã£ cÃ¹ng vá»›i Inven Ä‘á»ƒ nhÃ¬n láº¡i má»™t nÄƒm 2018 vÃ´ cÃ¹ng thÃ nh cÃ´ng vÃ  hÆ°á»›ng vá» nhá»¯ng má»¥c tiÃªu trong nÄƒm 2019.','Sparkles','0000-00-00',NULL);

/*Table structure for table `tinhot` */

DROP TABLE IF EXISTS `tinhot`;

CREATE TABLE `tinhot` (
  `matin` int(11) NOT NULL AUTO_INCREMENT,
  `loaitin` varchar(300) DEFAULT NULL,
  `tieude` varchar(300) DEFAULT NULL,
  `noidung` varchar(10000) DEFAULT NULL,
  `tacgia` varchar(30) DEFAULT NULL,
  `thoigian` date DEFAULT NULL,
  `imgbanner` int(11) DEFAULT NULL,
  PRIMARY KEY (`matin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tinhot` */

insert  into `tinhot`(`matin`,`loaitin`,`tieude`,`noidung`,`tacgia`,`thoigian`,`imgbanner`) values (1,NULL,'Khan tiáº¿t lá»™ lÃ½ do Ä‘áº¿n vá»›i SKT: â€œTÃ´i nháº­n lá»i bá»Ÿi SKT lÃ  Ä‘á»™i tuyá»ƒn cÃ³ tiÃªu chuáº©n caoâ€','Báº£n há»£p Ä‘á»“ng giá»¯a Ä‘á»™i tuyá»ƒn tá»«ng 3 láº§n vÃ´ Ä‘á»‹ch tháº¿ giá»›i SK Telecom T1 vÃ  tuyá»ƒn thá»§ Ä‘Æ°á»ng trÃªn Kim â€œKhanâ€ Dongha lÃ  má»™t trong nhá»¯ng Ä‘iá»ƒm nháº¥n sÃ¡ng nháº¥t trong kÃ¬ chuyá»ƒn nhÆ°á»£ng tiá»n mÃ¹a giáº£i 2019. Sau khi tháº¥y nhá»¯ng cÃ¡i tÃªn â€œkhá»§ngâ€ trong Ä‘á»™i hÃ¬nh á»Ÿ cÃ¡c vá»‹ trÃ­ cÃ²n láº¡i nhÆ° Kang â€œHaruâ€ Minseung, Cho â€œMataâ€ Sehyeong, vÃ  Ä‘Æ°Æ¡ng nhiÃªn, cáº£ Lee â€œFakerâ€ Sanghyeok, cÃ¢u há»i Ä‘áº·t ra lÃ  vÃ¬ sao Khan láº¡i cháº¥p nháº­n kÃ­ há»£p Ä‘á»“ng?','Luna','0000-00-00',NULL),(2,NULL,'Faker: â€œNÄƒm nay Trung Quá»‘c Ä‘Ã£ láº¥y Ä‘i táº¥t cáº£ nhá»¯ng vinh quang cá»§a chÃºng tÃ´i, vÃ  chÃºng tÃ´i sáº½ Ä‘Ã²i láº¡i táº¥t cáº£ trong nÄƒm tá»›iâ€','Táº¡i sÃ¢n váº­n Ä‘á»™ng Munhak á»Ÿ Incheon, Ä‘á»™i tuyá»ƒn Invictus Gaming cá»§a Trung Quá»‘c Ä‘Ã£ Ä‘Ã¨ báº¹p Fnatic trong má»™t tráº­n Ä‘áº¥u chá»‰ kÃ©o dÃ i â€¦ 3 vÃ¡n Ä‘á»ƒ dÃ nh chá»©c vÃ´ Ä‘á»‹ch tháº¿ giá»›i nÄƒm 2018 vÃ  nÃ¢ng cao chiáº¿c cÃºp Summoner Cup Ä‘áº§y danh giÃ¡. HÆ¡n 20.000 ngÆ°á»i hÃ¢m má»™ Ä‘Ã£ cÃ³ máº·t táº¡i sÃ¢n váº­n Ä‘á»™ng ngÃ y hÃ´m Ä‘Ã³ Ä‘á»ƒ theo dÃµi mÃ n Ä‘Äƒng quang cá»§a Ä‘á»™i tuyá»ƒn xuáº¥t sáº¯c nháº¥t tháº¿ giá»›i.  Gáº§n Ä‘Ã¢y, Riot Games Ä‘Ã£ thÃ´ng bÃ¡o ráº±ng sá»‘ ngÆ°á»i theo dÃµi Chung Káº¿t Tháº¿ Giá»›i 2018 lÃªn tá»›i con sá»‘ 99,6 triá»‡u ngÆ°á»i, phÃ¡ vá»¡ táº¥t cáº£ nhá»¯ng ká»· lá»¥c Ä‘Æ°á»£c thiáº¿t láº­p tá»« trÆ°á»›c Ä‘áº¿n nay. Tháº¿ nhÆ°ng tuyá»ƒn thá»§ vÄ© Ä‘áº¡i nháº¥t trong lá»‹ch sá»­ LMHT, Lee â€œFakerâ€ Sang-hyeok, khÃ´ng pháº£i lÃ  má»™t trong sá»‘ Ä‘Ã³.  â€œTÃ´i Ä‘Ã£ khÃ´ng theo dÃµi Chung Káº¿t Tháº¿ Giá»›iâ€œ, Faker nÃ³i vá»›i tÃ´i táº¡i giáº£i Ä‘áº¥u SiÃªu Sao Äáº¡i Chiáº¿n nÄƒm nay diá»…n ra á»Ÿ HyperX Esports Arena, Las Vegas. â€œTÃ´i khÃ´ng cáº£m tháº¥y á»•n khi theo dÃµi Chung Káº¿t Tháº¿ Giá»›i khi mÃ  tÃ´i khÃ´ng cÃ³ máº·t táº¡i Ä‘Ã³. Thay vÃ o Ä‘Ã³, tÃ´i Ä‘Ã£ dÃ nh thá»i gian Ä‘á»ƒ nghá»‰ ngÆ¡i, vÃ  sau Ä‘Ã³ tÃ´i Ä‘Ã£ nghÄ© vá» ráº¥t nhiá»u cÃ¡ch Ä‘á»ƒ tÃ´i cÃ³ thá»ƒ cáº£i thiá»‡n báº£n thÃ¢n trong nÄƒm tá»›i.â€  Chung Káº¿t Tháº¿ Giá»›i Ä‘Ã£ Ä‘Æ°á»£c tá»• chá»©c táº¡i HÃ n Quá»‘c, quÃª nhÃ  cá»§a Faker trong 2 láº§n, vÃ  trong cáº£ 2 láº§n Ä‘Ã³ anh láº¡i khÃ´ng thá»ƒ gÃ³p máº·t táº¡i giáº£i Ä‘áº¥u vÃ´ cÃ¹ng danh giÃ¡ nÃ y. Trong suá»‘t 6 nÄƒm thi Ä‘áº¥u chuyÃªn nghiá»‡p, 2 láº§n váº¯ng máº·t Ä‘Ã³ lÃ  2 láº§n duy nháº¥t mÃ  anh váº¯ng máº·t táº¡i CKTG. VÃ  trong 4 láº§n Ä‘Æ°á»£c tham dá»± Chung Káº¿t Tháº¿ Giá»›i, Faker Ä‘Ã£ dÃ nh Ä‘Æ°á»£c tá»›i 3 chá»©c Ä‘á»‹ch.','Sparkles','0000-00-00',NULL);

/*Table structure for table `tinmoi` */

DROP TABLE IF EXISTS `tinmoi`;

CREATE TABLE `tinmoi` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` char(255) DEFAULT NULL,
  `noidung` mediumtext,
  `tacgia` char(200) DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`stt`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tinmoi` */

insert  into `tinmoi`(`stt`,`tieude`,`noidung`,`tacgia`,`ngaytao`) values (2,'CHÃNH THá»¨C: GAM thay tháº¿ Noway báº±ng cá»±u xáº¡ thá»§ cá»§a Vikings','Má»›i Ä‘Ã¢y trÃªn kÃªnh stream riÃªng cá»§a mÃ¬nh thÃ¬ Ä‘á»™i tuyá»ƒn GAM Esports Ä‘Ã£ cÃ´ng bá»‘ Ä‘á»™i hÃ¬nh chÃ­nh thá»©c tham dá»± mÃ¹a giáº£i 2019. Vá»›i quyáº¿t tÃ¢m gÃ¢y dá»±ng trá»Ÿ láº¡i sau má»™t mÃ¹a HÃ¨ tháº¥t báº¡i, GAM Ä‘Ã£ chiÃªu má»™ thÃªm má»™t sá»‘ cÃ¡i tÃªn má»›i:  ÄÆ°á»ng trÃªn: Kiaya / Hope Äi rá»«ng: Spot ÄÆ°á»ng giá»¯a: Blazes Xáº¡ thá»§: Police / Yin Há»— trá»£: Sya HLV: Archie. Vá»›i viá»‡c xáº¡ thá»§ danh tiáº¿ng Noway khÃ´ng cÃ²n thuá»™c biÃªn cháº¿ GAM ná»¯a thÃ¬ HLV Archie Ä‘Ã£ bá»• sung 2 xáº¡ thá»§ má»›i: Yin lÃ  xáº¡ thá»§ hoÃ n toÃ n má»›i sáº½ xuáº¥t hiá»‡n táº¡i VCS 2019; trong khi Ä‘Ã³ Police lÃ  xáº¡ thá»§ tá»›i tá»« Ä‘á»™i tuyá»ƒn Vikings vá»«a má»›i thi Ä‘áº¥u táº¡i VÃ²ng thÄƒng háº¡ng VCS vá»«a qua. Police tá»«ng thi Ä‘áº¥u bÃªn cáº¡nh Cacon (CR) vÃ  Kiaya vÃ´ Ä‘á»‹ch giáº£i U17 â€“ ÄÃ²n báº©y tÃ i nÄƒng.','Mr Solo','2018-12-19'),(8,'CHÃNH THá»¨C: EVOS cÃ´ng bá»‘ Ä‘á»™i hÃ¬nh cho mÃ¹a XuÃ¢n 2019 vá»›i tham vá»ng láº­t Ä‘á»• PVB!',' EVOS Ä‘Ã£ cÃ´ng bá»‘ Ä‘á»™i hÃ¬nh tham dá»± VCS MÃ¹a XuÃ¢n 2019 vá»›i bá»™ khung khÃ¡ quen thuá»™c. CÃ¡ch Ä‘Ã¢y gáº§n 1 nÄƒm, EVOS tá»«ng lÃ m mÆ°a lÃ m giÃ³ táº¡i VCS MÃ¹a XuÃ¢n 2018 vá»›i viá»‡c lÃªn ngÃ´i vÆ°Æ¡ng báº±ng lá»‘i chÆ¡i vÃ´ cÃ¹ng cháº¯c cháº¯n. Váº­y nhÆ°ng tháº¥t báº¡i cá»§a nhÃ  vÃ´ Ä‘á»‹ch giai Ä‘oáº¡n mÃ¹a xuÃ¢n 2018 táº¡i VCS MÃ¹a HÃ¨ 2018 dáº«n Ä‘áº¿n viá»‡c EVOS buá»™c pháº£i thay Ä‘á»•i Ä‘á»™i hÃ¬nh vá»›i sá»± gÃ³p máº·t cá»§a Petland thay tháº¿ cho Warzone. BÃªn cáº¡nh Ä‘Ã³, tuyá»ƒn thá»§ tráº» Ä‘Æ°á»ng giá»¯a Dia cÅ©ng sáº½ láº§n Ä‘áº§u tham dá»± VCS vá»›i vá»‹ trÃ­ dá»± bá»‹ cho Petland. CHÃNH THá»¨C: EVOS cÃ´ng bá»‘ Ä‘á»™i hÃ¬nh cho mÃ¹a XuÃ¢n 2019 vá»›i tham vá»ng láº­t Ä‘á»• PVB! EVOS sáº½ thá»ƒ hiá»‡n bá»™ máº·t ra sao táº¡i VCS MÃ¹a XuÃ¢n 2019?  VCS |  December 27, 2018 |  By Mr Solo  Share EVOS Ä‘Ã£ cÃ´ng bá»‘ Ä‘á»™i hÃ¬nh tham dá»± VCS MÃ¹a XuÃ¢n 2019 vá»›i bá»™ khung khÃ¡ quen thuá»™c. CÃ¡ch Ä‘Ã¢y gáº§n 1 nÄƒm, EVOS tá»«ng lÃ m mÆ°a lÃ m giÃ³ táº¡i VCS MÃ¹a XuÃ¢n 2018 vá»›i viá»‡c lÃªn ngÃ´i vÆ°Æ¡ng báº±ng lá»‘i chÆ¡i vÃ´ cÃ¹ng cháº¯c cháº¯n. Váº­y nhÆ°ng tháº¥t báº¡i cá»§a nhÃ  vÃ´ Ä‘á»‹ch giai Ä‘oáº¡n mÃ¹a xuÃ¢n 2018 táº¡i VCS MÃ¹a HÃ¨ 2018 dáº«n Ä‘áº¿n viá»‡c EVOS buá»™c pháº£i thay Ä‘á»•i Ä‘á»™i hÃ¬nh vá»›i sá»± gÃ³p máº·t cá»§a Petland thay tháº¿ cho Warzone. BÃªn cáº¡nh Ä‘Ã³, tuyá»ƒn thá»§ tráº» Ä‘Æ°á»ng giá»¯a Dia cÅ©ng sáº½ láº§n Ä‘áº§u tham dá»± VCS vá»›i vá»‹ trÃ­ dá»± bá»‹ cho Petland.  EVS1  Äiá»ƒm Ä‘áº·c biá»‡t trong Ä‘á»™i hÃ¬nh EVOS lÃ  viá»‡c há» gáº§n nhÆ° giá»¯ nguyÃªn bá»™ khung cá»§a mÃ¹a giáº£i 2018 vá»›i nhá»¯ng cÃ¡i tÃªn ráº¥t cháº¥t lÆ°á»£ng á»Ÿ tá»«ng vá»‹ trÃ­. ÄÃ³ lÃ  â€œÄáº¡i Ä‘áº¿â€ Stark, Ä‘i rá»«ng YiJin cÅ©ng nhÆ° cáº·p Ä‘Ã´i Slay â€“ RonOP Ä‘Æ°á»ng dÆ°á»›i. Hai HLV cá»§a há» váº«n lÃ  Violet vÃ  HLV ngÆ°á»i Singapore Jensen Goh.  EVS2  Äá»™i hÃ¬nh tham dá»± VCS MÃ¹a XuÃ¢n 2019 cá»§a EVOS bao gá»“m:  ÄÆ°á»ng trÃªn: Phan â€œStarkâ€ CÃ´ng Minh Äi rá»«ng: Nguyá»…n LÃª â€œYi Jinâ€ Háº£i ÄÄƒng ÄÆ°á»ng giá»¯a: VÃµ Huá»³nh â€œPetlandâ€ Quang Huy Xáº¡ thá»§: Nguyá»…n â€œSlayâ€ Ngá»c HÃ¹ng Há»— trá»£: LÃª â€œRonOPâ€ ThiÃªn HÃ n Dá»± bá»‹ Ä‘Æ°á»ng giá»¯a: LÃª â€œDiaâ€ PhÃº QuÃ½ Dá»± bá»‹ há»— trá»£: ÄoÃ n â€œHarbingerâ€ NguyÃªn DÆ°Æ¡ng Huáº¥n luyá»‡n viÃªn: Jensen Goh vÃ  NgÃ´ â€œVioletâ€ Máº¡nh Quyá»n','Mr Solo','0000-00-00'),(9,'[Tin váº¯n] AmazingJ gia nháº­p RNG, Afreeca Freecs hoÃ n táº¥t Ä‘á»™i hÃ¬nh 10 ngÆ°á»i','rong thÃ´ng bÃ¡o má»›i nháº¥t cá»§a mÃ¬nh, AFs Ä‘Ã£ cÃ´ng bá»‘ 10 tuyá»ƒn thá»§ cá»§a Ä‘Ã´i táº¡i giáº£i mÃ¹a xuÃ¢n 2019. VÃ  sá»± thay Ä‘á»•i duy nháº¥t náº±m á»Ÿ Ä‘Æ°á»ng trÃªn vá»›i sá»± gia nháº­p cá»§a Lee â€œBrookâ€ Jang-hoon. BÃªn cáº¡nh Ä‘Ã³,  Park â€œSummitâ€ Woo-tae cÅ©ng Ä‘Ã£ Ä‘Æ°á»£c thÃ´ng bÃ¡o chuyá»ƒn tá»›i SANDBOX Gaming â€“ hay cÃ²n Ä‘Æ°á»£c biáº¿t tá»›i lÃ  Team BattleComics.','Krystal','0000-00-00'),(10,'VIT Jiizuke: â€œNhá»¯ng Ä‘á»‹nh kiáº¿n â€‹â€‹vÃ  Ã½ kiáº¿n chá»§ quan trÆ°á»›c khi mÃ¹a giáº£i khá»Ÿi tranh Ä‘á»u lÃ  nhá»¯ng thá»© vÃ´ Ã­ch!â€','MÃ¹a giáº£i 2018 cá»§a Team Vitality lÃ  má»™t trong nhá»¯ng cÃ¢u chuyá»‡n thÃº vá»‹ nháº¥t trong nÄƒm vá»«a qua. Vá»›i lá»‘i chÆ¡i khÃ´ng ngáº¡i va cháº¡m, luÃ´n sáºµn sÃ ng giao tranh á»Ÿ báº¥t cá»© nÆ¡i Ä‘Ã¢u vÃ  báº¥t cá»© khi nÃ o, cÃ¹ng vá»›i Ä‘Ã³ lÃ  má»™t sá»± tá»± tin Ä‘áº¿n kinh ngáº¡c, Vitality Ä‘Ã£ Ä‘á»ƒ láº¡i má»™t áº¥n tÆ°á»£ng sÃ¢u sáº¯c trong lÃ²ng nhá»¯ng ai Ä‘Ã£ theo dÃµi Chung Káº¿t Tháº¿ Giá»›i 2018.  Vá»‹ thuyá»n trÆ°á»Ÿng cá»§a con tÃ u mang tÃªn Vitality khÃ´ng ai khÃ¡c ngoÃ i Daniele â€œJiizukeâ€ di Mauro. ChÃ ng tÃ¢n binh ngÆ°á»i Ã váº«n chá»‰ lÃ  má»™t cÃ¡i tÃªn Ä‘áº§y láº¡ láº«m vá»›i má»i ngÆ°á»i khi anh Ä‘áº¿n vá»›i giáº£i Ä‘áº¥u ChÃ¢u Ã‚u vÃ o ná»­a Ä‘áº§u cá»§a giáº£i mÃ¹a xuÃ¢n. Tháº¿ nhÆ°ng á»Ÿ thá»i Ä‘iá»ƒm hiá»‡n táº¡i, con tÃ u Vitality chá»‰ cÃ³ thá»ƒ khá»Ÿi hÃ nh háº¿t tá»‘c lá»±c khi Jiizuke khiáº¿n ngÆ°á»i hÃ¢m má»™ pháº£i choÃ¡ng vÃ¡ng vá»›i nhá»¯ng mÃ n trÃ¬nh diá»…n cÃ¡ nhÃ¢n háº¿t sá»©c áº¥n tÆ°á»£ng cá»§a anh.  Jiizuke Ä‘Ã£ cÃ³ má»™t mÃ¹a giáº£i tÃ¢n binh vÃ´ cÃ¹ng xuáº¥t sáº¯c, vÃ  nhá» Ä‘Ã³ anh Ä‘Ã£ kiáº¿m vá» cho mÃ¬nh má»™t vá»‹ trÃ­ tham dá»± giáº£i Ä‘áº¥u SiÃªu Sao Äáº¡i Chiáº¿n 2018 diá»…n ra táº¡i Las Vegas. Táº¡i Ä‘Ã³, anh Ä‘Ã£ cÃ¹ng vá»›i Inven Ä‘á»ƒ nhÃ¬n láº¡i má»™t nÄƒm 2018 vÃ´ cÃ¹ng thÃ nh cÃ´ng vÃ  hÆ°á»›ng vá» nhá»¯ng má»¥c tiÃªu trong nÄƒm 2019.','Báº±nng','0000-00-00'),(11,'HOT: Adonis Ä‘á»•i tÃªn thÃ nh Cerberus, Lee In-cheol trá»Ÿ thÃ nh Huáº¥n luyá»‡n viÃªn trÆ°á»Ÿng','HOT: Adonis Ä‘á»•i tÃªn thÃ nh Cerberus, Lee In-cheol trá»Ÿ thÃ nh Huáº¥n luyá»‡n viÃªn trÆ°á»Ÿng Tham vá»ng quÃ¡ ta :3  VCS |  December 17, 2018 |  By Krystal  Share Má»›i Ä‘Ã¢y, Ä‘á»™i tuyá»ƒn Adonis Ä‘Ã£ nháº­n Ä‘Æ°á»£c má»™t sá»± Ä‘áº§u tÆ° lá»›n vÃ  sáº½ thi Ä‘áº¥u dÆ°á»›i cÃ¡i tÃªn má»›i lÃ  Cerberus tá»« mÃ¹a giáº£i 2019.  48395349_249623412600966_1854029492104724480_n  ÄÃ¢y lÃ  pháº§n thÆ°á»Ÿng xá»©ng Ä‘Ã¡ng cho cÃ¡c tuyá»ƒn thá»§ tráº» cá»§a ADN bá»Ÿi sau giai Ä‘oáº¡n mÃ¹a xuÃ¢n 2018 cá»§a VCS suÃ½t pháº£i xuá»‘ng háº¡ng, Ä‘á»™i tuyá»ƒn nÃ y Ä‘Ã£ vÆ°Æ¡n lÃªn máº¡nh máº½ vÃ  trá»Ÿ thÃ nh Ã QuÃ¢n cá»§a VCS mÃ¹a hÃ¨ 2018. NgoÃ i viá»‡c Ä‘Æ°á»£c Ä‘áº§u tÆ° máº¡nh vá» kinh táº¿, Ä‘á»™i tuyá»ƒn nÃ y cÃ²n cÃ³ Ä‘Æ°á»£c sá»± phá»¥c vá»¥ cá»§a Lee In Cheol â€“ huáº¥n luyá»‡n viÃªn ráº¥t ná»•i tiáº¿ng vá»›i ná»n LMHT Viá»‡t Nam.  1  Lee In Cheol aka HLV Lee lÃ  má»™t nhÃ¢n váº­t ráº¥t ná»•i tiáº¿ng vÃ  lÃ  ngÆ°á»i Ä‘á»©ng sau thÃ nh cÃ´ng cá»§a cÃ¡c Ä‘á»™i tuyá»ƒn huyá»n thoáº¡i Saigon Jokers vÃ  Saigon Fantastic Five trong quÃ¡ khá»©. Vá»›i thÆ°Æ¡ng hiá»‡u Ä‘Ã£ Ä‘Æ°á»£c kháº³ng Ä‘á»‹nh, HLV Lee cháº¯c cháº¯n lÃ  sá»± bá»• sung tuyá»‡t vá»i Ä‘á»ƒ Cerberus cÃ³ thá»ƒ vÆ°Æ¡n lÃªn vá»‹ trÃ­ cao nháº¥t cá»§a VCS trong nÄƒm 2019. BÃªn cáº¡nh HLV Lee, má»™t cÃ¡i tÃªn ráº¥t quen thuá»™c vá»›i khÃ¡n giáº£ LMHT Viá»‡t Nam lÃ  tuyá»ƒn thá»§ VÄƒn â€œHaiseâ€ Há»¯u Báº£o (Potm) cÅ©ng sáº½ gÃ³p máº·t trong Ä‘á»™i hÃ¬nh Cerberus. Anh Tuáº¥n Koo â€“ cá»±u HLV cá»§a FapTV sáº½ lÃ  phiÃªn dá»‹ch cho HLV Lee nhÆ° thá»i cÃ²n cÃ¹ng nhau lÃ m viá»‡c táº¡i Saigon Jokers. Trong khi Ä‘Ã³, Sergh â€“ HLV cá»§a Ä‘á»™i vÃ o giai Ä‘oáº¡n mÃ¹a hÃ¨ 2018 sáº½ trá»Ÿ thÃ nh HLV phÃ³ cá»§a Cerberus bÃªn cáº¡nh HLV trÆ°á»Ÿng Lee In Cheol.',' Krystal','0000-00-00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
