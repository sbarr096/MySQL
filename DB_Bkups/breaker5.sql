-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: breaker5
-- ------------------------------------------------------
-- Server version	5.5.52-0+deb8u1

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
-- Table structure for table `monthly_kWh`
--

DROP TABLE IF EXISTS `monthly_kWh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_kWh` (
  `Month` varchar(50) NOT NULL,
  `Watts` int(10) unsigned NOT NULL,
  `Year` int(10) unsigned NOT NULL,
  `Quarter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_kWh`
--

LOCK TABLES `monthly_kWh` WRITE;
/*!40000 ALTER TABLE `monthly_kWh` DISABLE KEYS */;
INSERT INTO `monthly_kWh` VALUES ('Feb',80,2011,'Q1'),('Jan',90,2011,'Q1'),('Mar',80,2011,'Q1'),('Apr',120,2011,'Q2'),('Jun',80,2011,'Q2'),('May',100,2011,'Q2'),('Aug',130,2011,'Q3'),('Jul',133,2011,'Q3'),('Sep',136,2011,'Q3'),('Dec',80,2011,'Q4'),('Nov',70,2011,'Q4'),('Oct',101,2011,'Q4'),('Feb',83,2012,'Q1'),('Jan',80,2012,'Q1'),('Mar',87,2012,'Q1'),('Apr',65,2012,'Q2'),('Jun',75,2012,'Q2'),('May',60,2012,'Q2'),('Aug',90,2012,'Q3'),('Jul',80,2012,'Q3'),('Sep',80,2012,'Q3'),('Dec',95,2012,'Q4'),('Nov',107,2012,'Q4'),('Oct',98,2012,'Q4'),('Feb',90,2013,'Q1'),('Jan',220,2013,'Q1'),('Mar',90,2013,'Q1'),('Apr',75,2013,'Q2'),('Jun',148,2013,'Q2'),('May',77,2013,'Q2'),('Aug',95,2013,'Q3'),('Jul',59,2013,'Q3'),('Sep',96,2013,'Q3'),('Dec',200,2013,'Q4'),('Nov',120,2013,'Q4'),('Oct',230,2013,'Q4'),('Feb',90,2014,'Q1'),('Jan',220,2014,'Q1'),('Mar',90,2014,'Q1'),('Apr',75,2014,'Q2'),('Jun',148,2014,'Q2'),('May',77,2014,'Q2'),('Aug',95,2014,'Q3'),('Jul',59,2014,'Q3'),('Sep',96,2014,'Q3'),('Dec',200,2014,'Q4'),('Nov',120,2014,'Q4'),('Oct',230,2014,'Q4'),('Feb',83,2015,'Q1'),('Jan',80,2015,'Q1'),('Mar',87,2015,'Q1'),('Apr',65,2015,'Q2'),('Jun',75,2015,'Q2'),('May',60,2015,'Q2'),('Aug',90,2015,'Q3'),('Jul',80,2015,'Q3'),('Sep',80,2015,'Q3'),('Dec',95,2015,'Q4'),('Nov',107,2015,'Q4'),('Oct',98,2015,'Q4'),('Feb',80,2016,'Q1'),('Jan',90,2016,'Q1'),('Mar',80,2016,'Q1'),('Apr',120,2016,'Q2'),('Jun',80,2016,'Q2'),('May',100,2016,'Q2'),('Aug',130,2016,'Q3'),('Jul',133,2016,'Q3'),('Sep',136,2016,'Q3'),('Dec',80,2016,'Q4'),('Nov',70,2016,'Q4'),('Oct',101,2016,'Q4');
/*!40000 ALTER TABLE `monthly_kWh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarterly_kWh`
--

DROP TABLE IF EXISTS `quarterly_kWh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarterly_kWh` (
  `Quarter` varchar(20) NOT NULL,
  `Watts` varchar(20) NOT NULL,
  `Year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarterly_kWh`
--

LOCK TABLES `quarterly_kWh` WRITE;
/*!40000 ALTER TABLE `quarterly_kWh` DISABLE KEYS */;
INSERT INTO `quarterly_kWh` VALUES ('Q1','250','2011'),('Q2','300','2011'),('Q3','399','2011'),('Q4','251','2011'),('Q1','250','2012'),('Q2','200','2012'),('Q3','250','2012'),('Q4','300','2012'),('Q1','400','2013'),('Q2','300','2013'),('Q3','250','2013'),('Q4','550','2013'),('Q1','400','2014'),('Q2','300','2014'),('Q3','250','2014'),('Q4','550','2014'),('Q1','250','2015'),('Q2','200','2015'),('Q3','250','2015'),('Q4','300','2015'),('Q1','250','2016'),('Q2','300','2016'),('Q3','399','2016'),('Q4','251','2016');
/*!40000 ALTER TABLE `quarterly_kWh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_kWh`
--

DROP TABLE IF EXISTS `weekly_kWh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly_kWh` (
  `Week` varchar(50) NOT NULL,
  `Watts` int(10) unsigned NOT NULL,
  `Year` int(10) unsigned NOT NULL,
  `Quarter` varchar(50) NOT NULL,
  `Month` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Year`,`Quarter`,`Month`,`Week`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_kWh`
--

LOCK TABLES `weekly_kWh` WRITE;
/*!40000 ALTER TABLE `weekly_kWh` DISABLE KEYS */;
INSERT INTO `weekly_kWh` VALUES ('05',23,2011,'Q1','Feb'),('06',20,2011,'Q1','Feb'),('07',20,2011,'Q1','Feb'),('08',20,2011,'Q1','Feb'),('01',20,2011,'Q1','Jan'),('02',20,2011,'Q1','Jan'),('03',20,2011,'Q1','Jan'),('04',20,2011,'Q1','Jan'),('09',22,2011,'Q1','Mar'),('10',24,2011,'Q1','Mar'),('11',20,2011,'Q1','Mar'),('12',21,2011,'Q1','Mar'),('13',15,2011,'Q2','Apr'),('14',16,2011,'Q2','Apr'),('15',17,2011,'Q2','Apr'),('16',17,2011,'Q2','Apr'),('21',15,2011,'Q2','Jun'),('22',15,2011,'Q2','Jun'),('23',15,2011,'Q2','Jun'),('24',15,2011,'Q2','Jun'),('17',18,2011,'Q2','May'),('18',20,2011,'Q2','May'),('19',17,2011,'Q2','May'),('20',21,2011,'Q2','May'),('29',15,2011,'Q3','Aug'),('30',14,2011,'Q3','Aug'),('31',29,2011,'Q3','Aug'),('32',32,2011,'Q3','Aug'),('25',20,2011,'Q3','Jul'),('26',16,2011,'Q3','Jul'),('27',15,2011,'Q3','Jul'),('28',29,2011,'Q3','Jul'),('33',25,2011,'Q3','Sep'),('34',20,2011,'Q3','Sep'),('35',20,2011,'Q3','Sep'),('36',15,2011,'Q3','Sep'),('45',20,2011,'Q4','Dec'),('46',22,2011,'Q4','Dec'),('47',19,2011,'Q4','Dec'),('48',35,2011,'Q4','Dec'),('41',21,2011,'Q4','Nov'),('42',27,2011,'Q4','Nov'),('43',22,2011,'Q4','Nov'),('44',26,2011,'Q4','Nov'),('37',15,2011,'Q4','Oct'),('38',17,2011,'Q4','Oct'),('39',21,2011,'Q4','Oct'),('40',45,2011,'Q4','Oct');
/*!40000 ALTER TABLE `weekly_kWh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yearly_kWh`
--

DROP TABLE IF EXISTS `yearly_kWh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yearly_kWh` (
  `Year` varchar(20) NOT NULL,
  `Watts` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yearly_kWh`
--

LOCK TABLES `yearly_kWh` WRITE;
/*!40000 ALTER TABLE `yearly_kWh` DISABLE KEYS */;
INSERT INTO `yearly_kWh` VALUES ('2011','1200'),('2012','1000'),('2013','1500'),('2014','1500'),('2015','1000'),('2016','1200');
/*!40000 ALTER TABLE `yearly_kWh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28 19:36:06
