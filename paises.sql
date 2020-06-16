/*
SQLyog Ultimate v9.63 
MySQL - 5.5.5-10.3.16-MariaDB : Database - paises
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`paises` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `paises`;

/*Table structure for table `api_pais` */

DROP TABLE IF EXISTS `api_pais`;

CREATE TABLE `api_pais` (
  `codigo_pais` int(11) NOT NULL AUTO_INCREMENT,
  `capital_pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitud_pais` float DEFAULT NULL,
  `longitud_pais` float DEFAULT NULL,
  `nombre_pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poblacion_pais` int(11) DEFAULT NULL,
  `region_pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`codigo_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `api_pais` */

insert  into `api_pais`(`codigo_pais`,`capital_pais`,`latitud_pais`,`longitud_pais`,`nombre_pais`,`poblacion_pais`,`region_pais`) values (1,'Ottawa',60,-95,'Canada',36155487,'Americas'),(2,'Moscow',60,100,'Russian Federation',146599183,'Europe'),(3,'Cairo',27,30,'Egypt',91290000,'Africa'),(4,'Pretoria',-29,24,'South Africa',55653654,'Africa'),(5,'Athens',39,22,'Greece',10858018,'Europe'),(6,'Amsterdam',52,5,'Netherlands',17019800,'Europe'),(7,'Brussels',50,4,'Belgium',11319511,'Europe'),(8,'Paris',46,2,'France',66710000,'Europe'),(9,'Madrid',40,-4,'Spain',46438422,'Europe'),(10,'Budapest',47,20,'Hungary',9823000,'Europe'),(11,'Rome',42,12,'Italy',60665551,'Europe'),(12,'Bucharest',46,25,'Romania',19861408,'Europe'),(13,'Bern',47,8,'Switzerland',8341600,'Europe'),(14,'Vienna',47,13,'Austria',8725931,'Europe'),(15,'St. Peter Port',49,-2,'Guernsey',62999,'Europe'),(16,'Copenhagen',56,10,'Denmark',5717014,'Europe'),(17,'Stockholm',62,15,'Sweden',9894888,'Europe'),(18,'Oslo',62,10,'Norway',5223256,'Europe'),(19,'Warsaw',52,20,'Poland',38437239,'Europe'),(20,'Berlin',51,9,'Germany',81770900,'Europe'),(21,'Lima',-10,-76,'Peru',31488700,'Americas'),(22,'Mexico City',23,-102,'Mexico',122273473,'Americas'),(23,'Havana',21,-80,'Cuba',11239004,'Americas'),(24,'Buenos Aires',-34,-64,'Argentina',43590400,'Americas'),(25,'Brasília',-10,-55,'Brazil',206135893,'Americas'),(26,'Santiago',-30,-71,'Chile',18191900,'Americas'),(27,'Bogotá',4,-72,'Colombia',48759958,'Americas'),(28,'Caracas',8,-66,'Venezuela (Bolivarian Republic of)',31028700,'Americas'),(29,'Kuala Lumpur',2,112,'Malaysia',31405416,'Asia'),(30,'Canberra',-27,133,'Australia',24117360,'Oceania'),(31,'Jakarta',-5,120,'Indonesia',258705000,'Asia'),(32,'Manila',13,122,'Philippines',103279800,'Asia'),(33,'Wellington',-41,174,'New Zealand',4697854,'Oceania'),(34,'Singapore',1,103,'Singapore',5535000,'Asia'),(35,'Bangkok',15,100,'Thailand',65327652,'Asia'),(36,'Astana',48,68,'Kazakhstan',17753200,'Asia'),(37,'Astana',48,68,'Kazakhstan',17753200,'Asia'),(38,'Tokyo',36,138,'Japan',126960000,'Asia'),(39,'Seoul',37,127,'Korea (Republic of)',50801405,'Asia'),(40,'Hanoi',16,107,'Viet Nam',92700000,'Asia'),(41,'Beijing',35,105,'China',1377422166,'Asia'),(42,'Ankara',39,35,'Turkey',78741053,'Asia'),(43,'New Delhi',20,77,'India',1295210000,'Asia'),(44,'Islamabad',30,70,'Pakistan',194125062,'Asia'),(45,'Kabul',33,65,'Afghanistan',27657145,'Asia'),(46,'Colombo',7,81,'Sri Lanka',20966000,'Asia'),(47,'Naypyidaw',22,98,'Myanmar',51419420,'Asia'),(48,'Tehran',32,53,'Iran (Islamic Republic of)',79369900,'Asia'),(49,'Juba',7,30,'South Sudan',12131000,'Africa'),(50,'Rabat',32,-5,'Morocco',33337529,'Africa'),(51,'Algiers',28,3,'Algeria',40400000,'Africa'),(52,'Tunis',34,9,'Tunisia',11154400,'Africa'),(53,'Tripoli',25,17,'Libya',6385000,'Africa'),(54,'Banjul',13,-16,'Gambia',1882450,'Africa'),(55,'Dakar',14,-14,'Senegal',14799859,'Africa'),(56,'Nouakchott',20,-12,'Mauritania',3718678,'Africa'),(57,'Bamako',17,-4,'Mali',18135000,'Africa'),(58,'Conakry',11,-10,'Guinea',12947000,'Africa'),(59,'Yamoussoukro',8,-5,'Côte d\'Ivoire',22671331,'Africa'),(60,'Ouagadougou',13,-2,'Burkina Faso',19034397,'Africa'),(61,'Niamey',16,8,'Niger',20715000,'Africa'),(62,'Lomé',8,1,'Togo',7143000,'Africa'),(63,'Porto-Novo',9,2,'Benin',10653654,'Africa'),(64,'Port Louis',-20,57,'Mauritius',1262879,'Africa'),(65,'Monrovia',6,-9,'Liberia',4615000,'Africa'),(66,'Freetown',8,-11,'Sierra Leone',7075641,'Africa'),(67,'Accra',8,-2,'Ghana',27670174,'Africa'),(68,'Abuja',10,8,'Nigeria',186988000,'Africa'),(69,'N\'Djamena',15,19,'Chad',14497000,'Africa'),(70,'Bangui',7,21,'Central African Republic',4998000,'Africa'),(71,'Yaoundé',6,12,'Cameroon',22709892,'Africa'),(72,'Praia',16,-24,'Cabo Verde',531239,'Africa'),(73,'São Tomé',1,7,'Sao Tome and Principe',187356,'Africa'),(74,'Malabo',2,10,'Equatorial Guinea',1222442,'Africa'),(75,'Libreville',-1,11,'Gabon',1802278,'Africa'),(76,'Brazzaville',-1,15,'Congo',4741000,'Africa'),(77,'Kinshasa',0,25,'Congo (Democratic Republic of the)',85026000,'Africa'),(78,'Luanda',-12,18,'Angola',25868000,'Africa'),(79,'Bissau',12,-15,'Guinea-Bissau',1547777,'Africa'),(80,'Diego Garcia',-6,71,'British Indian Ocean Territory',3000,'Africa'),(81,'Victoria',-4,55,'Seychelles',91400,'Africa'),(82,'Khartoum',15,30,'Sudan',39598700,'Africa'),(83,'Kigali',-2,30,'Rwanda',11553188,'Africa'),(84,'Addis Ababa',8,38,'Ethiopia',92206005,'Africa'),(85,'Mogadishu',10,49,'Somalia',11079000,'Africa'),(86,'Djibouti',11,43,'Djibouti',900000,'Africa'),(87,'Nairobi',1,38,'Kenya',47251000,'Africa'),(88,'Dodoma',-6,35,'Tanzania, United Republic of',55155000,'Africa'),(89,'Kampala',1,32,'Uganda',33860700,'Africa'),(90,'Bujumbura',-3,30,'Burundi',10114505,'Africa'),(91,'Maputo',-18,35,'Mozambique',26423700,'Africa'),(92,'Lusaka',-15,30,'Zambia',15933883,'Africa'),(93,'Antananarivo',-20,47,'Madagascar',22434363,'Africa'),(94,'Mamoudzou',-12,45,'Mayotte',226915,'Africa'),(95,'Harare',-20,30,'Zimbabwe',14240168,'Africa'),(96,'Windhoek',-22,17,'Namibia',2324388,'Africa'),(97,'Lilongwe',-13,34,'Malawi',16832910,'Africa'),(98,'Maseru',-29,28,'Lesotho',1894194,'Africa'),(99,'Gaborone',-22,24,'Botswana',2141206,'Africa'),(100,'Lobamba',-26,31,'Swaziland',1132657,'Africa'),(101,'Moroni',-12,44,'Comoros',806153,'Africa'),(102,'Jamestown',-15,-5,'Saint Helena, Ascension and Tristan da Cunha',4255,'Africa'),(103,'Asmara',15,39,'Eritrea',5352000,'Africa'),(104,'Oranjestad',12,-69,'Aruba',107394,'Americas'),(105,'Tórshavn',62,-7,'Faroe Islands',49376,'Europe'),(106,'Nuuk',72,-40,'Greenland',55847,'Americas');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
