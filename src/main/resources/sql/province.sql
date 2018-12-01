-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: province
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(20) NOT NULL,
  `city_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'北京市',2),(2,'天津市',3),(3,'上海市',4),(4,'重庆市',5),(5,'香港市',6),(6,'澳门市',7),(7,'台北市',8),(8,'新北市',8),(9,'桃园市',8),(10,'台中市',8),(11,'台南市',8),(12,'高雄市',8),(13,'基隆市',8),(14,'新竹市',8),(15,'嘉义市',8),(16,'广州市',9),(17,'深圳市',9),(18,'珠海市',9),(19,'汕头市',9),(20,'佛山市',9),(21,'韶关市',9),(22,'湛江市',9),(23,'肇庆市',9),(24,'江门市',9),(25,'茂名市',9),(26,'惠州市',9),(27,'梅州市',9),(28,'汕尾市',9),(29,'河源市',9),(30,'阳江市',9),(31,'清远市',9),(32,'东莞市',9),(33,'中山市',9),(34,'潮州市',9),(35,'揭阳市',9),(36,'云浮市',9),(37,'南京市',10),(38,'苏州市',10),(39,'无锡市',10),(40,'常州市',10),(41,'南通市',10),(42,'泰州市',10),(43,'扬州市',10),(44,'盐城市',10),(45,'镇江市',10),(46,'宿迁市',10),(47,'淮安市',10),(48,'徐州市',10),(49,'连云港市',10),(50,'杭州市',11),(51,'温州市',11),(52,'绍兴市',11),(53,'湖州市',11),(54,'嘉兴市',11),(55,'金华市',11),(56,'舟山市',11),(57,'台州市',11),(58,'丽水市',11),(59,'宁波市',11),(60,'衢州市',11),(61,'济南市',12),(62,'青岛市',12),(63,'淄博市',12),(64,'枣庄市',12),(65,'东营市',12),(66,'烟台市',12),(67,'潍坊市',12),(68,'济宁市',12),(69,'泰安市',12),(70,'威海市',12),(71,'日照市',12),(72,'滨州市',12),(73,'德州市',12),(74,'聊城市',12),(75,'临沂市',12),(76,'菏泽市',12),(77,'莱芜市',12),(78,'福州市',13),(79,'厦门市',13),(80,'宁德市',13),(81,'莆田市',13),(82,'泉州市',13),(83,'漳州市',13),(84,'龙岩市',13),(85,'三明市',13),(86,'南平市',13),(87,'沈阳市',14),(88,'大连市',14),(89,'鞍山市',14),(90,'抚顺市',14),(91,'本溪市',14),(92,'丹东市',14),(93,'锦州市',14),(94,'营口市',14),(95,'阜新市',14),(96,'辽阳市',14),(97,'盘锦市',14),(98,'铁岭市',14),(99,'朝阳市',14),(100,'葫芦岛市',14),(101,'哈尔滨市',15),(102,'齐齐哈尔市',15),(103,'佳木斯市',15),(104,'鹤岗市',15),(105,'大庆市',15),(106,'鸡西市',15),(107,'双鸭山市',15),(108,'伊春市',15),(109,'牡丹江市',15),(110,'黑河市',15),(111,'七台河市',15),(112,'绥化市',15),(113,'石家庄市',16),(114,'唐山市',16),(115,'秦皇岛市',16),(116,'邯郸市',16),(117,'邢台市',16),(118,'保定市',16),(119,'张家口市',16),(120,'承德市',16),(121,'沧州市',16),(122,'廊坊市',16),(123,'衡水市',16),(124,'武汉市',17),(125,'黄石市',17),(126,'十堰市',17),(127,'宜昌市',17),(128,'襄阳市',17),(129,'鄂州市',17),(130,'荆门市',17),(131,'孝感市',17),(132,'荆州市',17),(133,'黄冈市',17),(134,'咸宁市',17),(135,'随州市',17),(136,'恩师土家族苗族自治州',17),(137,'长沙市',18),(138,'株洲市',18),(139,'湘潭市',18),(140,'衡阳市',18),(141,'邵阳市',18),(142,'岳阳市',18),(143,'常德市',18),(144,'张家界市',18),(145,'益阳市',18),(146,'娄底市',18),(147,'郴州市',18),(148,'永州市',18),(149,'怀化市',18),(150,'湘西土家族苗族自治区',18),(151,'合肥市',19),(152,'宿州市',19),(153,'淮北市',19),(154,'亳州市',19),(155,'阜阳市',19),(156,'蚌埠市',19),(157,'淮南市',19),(158,'滁州市',19),(159,'六安市',19),(160,'马鞍山市',19),(161,'安庆市',19),(162,'芜湖市',19),(163,'铜陵市',19),(164,'宣城市',19),(165,'池州市',19),(166,'黄山市',19),(167,'长春市',20),(168,'吉林市',20),(169,'四平市',20),(170,'辽源市',20),(171,'通化市',20),(172,'白山市',20),(173,'松原市',20),(174,'白城市',20),(175,'海口市',21),(176,'三亚市',21),(177,'三沙市',21),(178,'儋州市',21),(179,'成都市',22),(180,'绵阳市',22),(181,'自贡市',22),(182,'攀枝花市',22),(183,'泸州市',22),(184,'德阳市',22),(185,'广元市',22),(186,'遂宁市',22),(187,'内江市',22),(188,'乐山市',22),(189,'资阳市',22),(190,'宜宾市',22),(191,'南充市',22),(192,'达州市',22),(193,'雅安市',22),(194,'广安市',22),(195,'巴中市',22),(196,'眉山市',22),(197,'阿坝藏族羌族自治州',22),(198,'甘孜藏族自治州',22),(199,'凉山彝族自治州',22),(200,'西安市',23),(201,'渭南市',23),(202,'咸阳市',23),(203,'铜川市',23),(204,'宝鸡市',23),(205,'榆林市',23),(206,'延安市',23),(207,'汉中市',23),(208,'安康市',23),(209,'商洛市',23),(210,'太原市',24),(211,'大同市',24),(212,'阳泉市',24),(213,'长治市',24),(214,'晋城市',24),(215,'朔州市',24),(216,'晋中市',24),(217,'运城市',24),(218,'忻州市',24),(219,'临汾市',24),(220,'吕梁市',24),(221,'郑州市',25),(222,'开封市',25),(223,'洛阳市',25),(224,'平顶山市',25),(225,'安阳市',25),(226,'鹤壁市',25),(227,'新乡市',25),(228,'焦作市',25),(229,'濮阳市',25),(230,'许昌市',25),(231,'漯河市',25),(232,'三门峡市',25),(233,'南阳市',25),(234,'商丘市',25),(235,'信阳市',25),(236,'周口市',25),(237,'驻马店市',25),(238,'乌鲁木齐市',26),(239,'克拉玛依市',26),(240,'吐鲁番市',26),(241,'哈密市',26),(242,'南昌市',27),(243,'景德镇市',27),(244,'萍乡市',27),(245,'九江市',27),(246,'新余市',27),(247,'鹰潭市',27),(248,'赣州市',27),(249,'吉安市',27),(250,'宜春市',27),(251,'抚州市',27),(252,'上饶市',27),(253,'南宁市',28),(254,'柳州市',28),(255,'桂林市',28),(256,'梧州市',28),(257,'北海市',28),(258,'防城港市',28),(259,'钦州市',28),(260,'贵港市',28),(261,'玉林市',28),(262,'百色市',28),(263,'贺州市',28),(264,'河池市',28),(265,'来宾市',28),(266,'崇左市',28),(267,'呼和浩特市',29),(268,'包头市',29),(269,'乌海市',29),(270,'赤峰市',29),(271,'通辽市',29),(272,'鄂尔多斯市',29),(273,'呼伦贝尔市',29),(274,'巴彦淖尔市',29),(275,'乌兰察布市',29),(276,'昆明市',30),(277,'曲靖市',30),(278,'玉溪市',30),(279,'保山市',30),(280,'昭通市',30),(281,'丽江市',30),(282,'普洱市',30),(283,'临沧市',30),(284,'银川市',31),(285,'石嘴山市',31),(286,'吴忠市',31),(287,'固原市',31),(288,'中卫市',31),(289,'西宁市',32),(290,'海东市',32),(291,'拉萨市',33),(292,'日喀则市',33),(293,'昌都市',33),(294,'林芝市',33),(295,'山南市',33),(296,'兰州市',34),(297,'嘉峪关市',34),(298,'金昌市',34),(299,'白银市',34),(300,'天水市',34),(301,'武威市',34),(302,'张掖市',34),(303,'平凉市',34),(304,'酒泉市',34),(305,'庆阳市',34),(306,'定西市',34),(307,'陇南市',34);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinces` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `province` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (2,'北京市'),(3,'天津市'),(4,'上海市'),(5,'重庆市'),(6,'香港特别行政区'),(7,'澳门特别行政区'),(8,'台湾省'),(9,'广东省'),(10,'江苏省'),(11,'浙江省'),(12,'山东省'),(13,'福建省'),(14,'辽宁省'),(15,'黑龙江省'),(16,'河北省'),(17,'湖北省'),(18,'湖南省'),(19,'安徽省'),(20,'吉林省'),(21,'海南省'),(22,'四川省'),(23,'陕西省'),(24,'山西省'),(25,'河南省'),(26,'新疆维吾尔族自治区'),(27,'江西省'),(28,'广西壮族自治区'),(29,'内蒙古自治区'),(30,'云南省'),(31,'宁夏回族自治区'),(32,'青海省'),(33,'贵州省'),(34,'西藏自治区'),(35,'甘肃省');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 13:57:51
