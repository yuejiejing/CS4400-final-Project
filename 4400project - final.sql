CREATE DATABASE  IF NOT EXISTS `4400project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `4400project`;
-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: 4400project
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrator` (
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `administrator_idfk_1` FOREIGN KEY (`username`) REFERENCES `employee` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('james.smith');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `another_view28`
--

DROP TABLE IF EXISTS `another_view28`;
/*!50001 DROP VIEW IF EXISTS `another_view28`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `another_view28` AS SELECT 
 1 AS `staffname`,
 1 AS `eventshift`,
 1 AS `Date`,
 1 AS `Site`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `assign_to`
--

DROP TABLE IF EXISTS `assign_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `assign_to` (
  `staffusername` varchar(50) NOT NULL,
  `eventname` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `sitename` varchar(50) NOT NULL,
  PRIMARY KEY (`staffusername`,`sitename`,`startdate`,`eventname`),
  KEY `assign_to_idfk_1` (`eventname`,`startdate`,`sitename`),
  CONSTRAINT `assign_to_idfk_1` FOREIGN KEY (`eventname`, `startdate`, `sitename`) REFERENCES `event` (`name`, `startdate`, `sitename`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `assign_to_idfk_2` FOREIGN KEY (`staffusername`) REFERENCES `staff` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_to`
--

LOCK TABLES `assign_to` WRITE;
/*!40000 ALTER TABLE `assign_to` DISABLE KEYS */;
INSERT INTO `assign_to` VALUES ('staff3','Arboretum Walking Tour','2019-02-08','Inman Park'),('michael.smith','Bus Tour','2019-02-01','Inman Park'),('staff2','Bus Tour','2019-02-01','Inman Park'),('michael.smith','Bus Tour','2019-02-08','Inman Park'),('robert.smith','Bus Tour','2019-02-08','Inman Park'),('robert.smith','Eastside Trail','2019-02-04','Inman Park'),('staff2','Eastside Trail','2019-02-04','Inman Park'),('michael.smith','Eastside Trail','2019-02-04','Piedmont Park'),('staff1','Eastside Trail','2019-02-04','Piedmont Park'),('michael.smith','Eastside Trail','2019-02-13','Historic Fourth Ward Park'),('staff1','Eastside Trail','2019-03-01','Inman Park'),('staff1','Official Atlanta BeltLine Bike Tour','2019-02-09','Atlanta BeltLine Center'),('robert.smith','Private Bus Tour','2019-02-01','Inman Park'),('staff1','Westside Trail','2019-02-18','Westview Cemetery'),('staff3','Westside Trail','2019-02-18','Westview Cemetery');
/*!40000 ALTER TABLE `assign_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connect`
--

DROP TABLE IF EXISTS `connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `connect` (
  `sitename` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `route` varchar(50) NOT NULL,
  PRIMARY KEY (`type`,`sitename`,`route`),
  KEY `connect_idfk_1` (`sitename`),
  KEY `connect_idfk_2` (`type`,`route`),
  CONSTRAINT `connect_idfk_1` FOREIGN KEY (`sitename`) REFERENCES `site` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `connect_idfk_2` FOREIGN KEY (`type`, `route`) REFERENCES `transit` (`type`, `route`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connect`
--

LOCK TABLES `connect` WRITE;
/*!40000 ALTER TABLE `connect` DISABLE KEYS */;
INSERT INTO `connect` VALUES ('Historic Fourth Ward Park','Bike','Relay'),('Historic Fourth Ward Park','Bus','152'),('Historic Fourth Ward Park','MARTA','Blue'),('Inman Park','Bus','152'),('Inman Park','MARTA','Blue'),('Piedmont Park','Bike','Relay'),('Piedmont Park','Bus','152'),('Piedmont Park','MARTA','Blue'),('Westview Cemetery','MARTA','Blue');
/*!40000 ALTER TABLE `connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `datelist`
--

DROP TABLE IF EXISTS `datelist`;
/*!50001 DROP VIEW IF EXISTS `datelist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `datelist` AS SELECT 
 1 AS `selected_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `datelist1`
--

DROP TABLE IF EXISTS `datelist1`;
/*!50001 DROP VIEW IF EXISTS `datelist1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `datelist1` AS SELECT 
 1 AS `selected_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `employeeid` varchar(9) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(90) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `employeeid` (`employeeid`),
  UNIQUE KEY `phone` (`phone`),
  CONSTRAINT `employee_idfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('000000005','5124776435','350 Ferst Drive','Atlanta','GA','30332','david.smith'),('000000001','4043721234','123 East Main Street','Rochester','NY','14604','james.smith'),('000000006','8045126767','123 East Main Street','Rochester','NY','14604','manager1'),('000000007','9876543210','123 East Main Street','Rochester','NY','14604','manager2'),('000000008','5432167890','350 Ferst Drive','Atlanta','GA','30332','manager3'),('000000009','8053467565','123 East Main Street','Columbus','OH','43215','manager4'),('000000010','8031446782','801 Atlantic Drive','Atlanta','GA','30332','manager5'),('000000004','7890123456','123 East Main Street','Richland','PA','17987','maria.garcia'),('000000002','4043726789','350 Ferst Drive','Atlanta','GA','30332','michael.smith'),('000000003','1234567890','123 East Main Street','Columbus','OH','43215','robert.smith'),('000000011','8024456765','266 Ferst Drive Northwest','Atlanta','GA','30332','staff1'),('000000012','8888888888','266 Ferst Drive Northwest','Atlanta','GA','30332','staff2'),('000000013','3333333333','801 Atlantic Drive','Atlanta','GA','30332','staff3');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `name` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `enddate` date NOT NULL,
  `price` decimal(2,0) NOT NULL,
  `capacity` decimal(6,0) NOT NULL,
  `minstaffreq` decimal(1,0) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`name`,`startdate`,`sitename`),
  KEY `event_idfk_1_idx` (`sitename`),
  CONSTRAINT `event_idfk_1` FOREIGN KEY (`sitename`) REFERENCES `site` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('Arboretum Walking Tour','2019-02-08','Inman Park','2019-02-11',5,5,1,'A combination of multi-use trail and linear greenspace, the Eastside Trail was the first finished section of the Atlanta BeltLine trail in the old rail corridor. The Eastside Trail, which was funded by a combination of public and private philanthropic sources, runs from the tip of Piedmont Park to Reynoldstown. More details at https://beltline.org/explore-atlanta-beltline-trails/eastside-trail/'),('Bus Tour','2019-02-01','Inman Park','2019-02-02',25,6,2,'The Atlanta BeltLine Partnership’s tour program operates with a natural gas-powered, ADA accessible tour bus funded through contributions from 10th & Monroe, LLC, SunTrust Bank Trusteed Foundations – Florence C. and Harry L. English Memorial Fund and Thomas Guy Woolford Charitable Trust, and AGL Resources'),('Bus Tour','2019-02-08','Inman Park','2019-02-10',25,6,2,'The Atlanta BeltLine Partnership’s tour program operates with a natural gas-powered, ADA accessible tour bus funded through contributions from 10th & Monroe, LLC, SunTrust Bank Trusteed Foundations – Florence C. and Harry L. English Memorial Fund and Thomas Guy Woolford Charitable Trust, and AGL Resources'),('Eastside Trail','2019-02-04','Inman Park','2019-02-05',0,99999,1,'A combination of multi-use trail and linear greenspace, the Eastside Trail was the first finished section of the Atlanta BeltLine trail in the old rail corridor. The Eastside Trail, which was funded by a combination of public and private philanthropic sources, runs from the tip of Piedmont Park to Reynoldstown. More details at https://beltline.org/explore-atlanta-beltline-trails/eastside-trail/'),('Eastside Trail','2019-02-04','Piedmont Park','2019-02-05',0,99999,1,'A combination of multi-use trail and linear greenspace, the Eastside Trail was the first finished section of the Atlanta BeltLine trail in the old rail corridor. The Eastside Trail, which was funded by a combination of public and private philanthropic sources, runs from the tip of Piedmont Park to Reynoldstown. More details at https://beltline.org/explore-atlanta-beltline-trails/eastside-trail/'),('Eastside Trail','2019-02-13','Historic Fourth Ward Park','2019-02-14',0,99999,1,'A combination of multi-use trail and linear greenspace, the Eastside Trail was the first finished section of the Atlanta BeltLine trail in the old rail corridor. The Eastside Trail, which was funded by a combination of public and private philanthropic sources, runs from the tip of Piedmont Park to Reynoldstown. More details at https://beltline.org/explore-atlanta-beltline-trails/eastside-trail/'),('Eastside Trail','2019-03-01','Inman Park','2019-03-02',0,99999,1,'A combination of multi-use trail and linear greenspace, the Eastside Trail was the first finished section of the Atlanta BeltLine trail in the old rail corridor. The Eastside Trail, which was funded by a combination of public and private philanthropic sources, runs from the tip of Piedmont Park to Reynoldstown. More details at https://beltline.org/explore-atlanta-beltline-trails/eastside-trail/'),('Official Atlanta BeltLine Bike Tour','2019-02-09','Atlanta BeltLine Center','2019-02-14',5,5,1,'Official Atlanta BeltLine Arboretum Walking Tours provide an up-close view of the Westside Trail and the Atlanta BeltLine Arboretum led by Trees Atlanta Docents. The one and a half hour tours step off at at 10am (Oct thru May), and 9am (June thru September). Departure for all tours is from Rose Circle Park near Brown Middle School. More details at: https://beltline.org/visit/atlanta-beltline-tours/#arboretum-walking'),('Private Bus Tour','2019-02-01','Inman Park','2019-02-02',40,4,1,'Private tours are available most days, pending bus and tour guide availability. Private tours can accommodate up to 4 guests per tour, and are subject to a tour fee (nonprofit rates are available). As a nonprofit organization with limited resources, we are unable to offer free private tours. We thank you for your support and your understanding as we try to provide as many private group tours as possible. The Atlanta BeltLine Partnership’s tour program operates with a natural gas-powered, ADA accessible tour bus funded through contributions from 10th & Monroe, LLC, SunTrust Bank Trusteed Foundations – Florence C. and Harry L. English Memorial Fund and Thomas Guy Woolford Charitable Trust, and AGL Resources'),('Westside Trail','2019-02-18','Westview Cemetery','2019-02-21',0,99999,1,'The Westside Trail is a free amenity that offers a bicycle and pedestrian-safe corridor with a 14-foot-wide multi-use trail surrounded by mature trees and grasses thanks to Trees Atlanta’s Arboretum. With 16 points of entry, 14 of which will be ADA-accessible with ramp and stair systems, the trail provides numerous access points for people of all abilities. More details at: https://beltline.org/explore-atlanta-beltline-trails/westside-trail/');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `event_daily_price`
--

DROP TABLE IF EXISTS `event_daily_price`;
/*!50001 DROP VIEW IF EXISTS `event_daily_price`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `event_daily_price` AS SELECT 
 1 AS `name`,
 1 AS `selected_date`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `event_daily_price_visit`
--

DROP TABLE IF EXISTS `event_daily_price_visit`;
/*!50001 DROP VIEW IF EXISTS `event_daily_price_visit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `event_daily_price_visit` AS SELECT 
 1 AS `name`,
 1 AS `selected_date`,
 1 AS `price`,
 1 AS `daily_visits`,
 1 AS `daily_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `event_staff`
--

DROP TABLE IF EXISTS `event_staff`;
/*!50001 DROP VIEW IF EXISTS `event_staff`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `event_staff` AS SELECT 
 1 AS `eventname`,
 1 AS `event_staff_count`,
 1 AS `startdate`,
 1 AS `sitename`,
 1 AS `enddate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `event_staff_datelist`
--

DROP TABLE IF EXISTS `event_staff_datelist`;
/*!50001 DROP VIEW IF EXISTS `event_staff_datelist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `event_staff_datelist` AS SELECT 
 1 AS `selected_date`,
 1 AS `event_staff_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `eventcount`
--

DROP TABLE IF EXISTS `eventcount`;
/*!50001 DROP VIEW IF EXISTS `eventcount`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `eventcount` AS SELECT 
 1 AS `selected_date`,
 1 AS `eventcount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `manage_event`
--

DROP TABLE IF EXISTS `manage_event`;
/*!50001 DROP VIEW IF EXISTS `manage_event`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `manage_event` AS SELECT 
 1 AS `name`,
 1 AS `startdate`,
 1 AS `enddate`,
 1 AS `sitename`,
 1 AS `price`,
 1 AS `staff_count`,
 1 AS `durations`,
 1 AS `total_visits`,
 1 AS `total_revenue`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `manage_transit`
--

DROP TABLE IF EXISTS `manage_transit`;
/*!50001 DROP VIEW IF EXISTS `manage_transit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `manage_transit` AS SELECT 
 1 AS `route`,
 1 AS `type`,
 1 AS `price`,
 1 AS `connected_sites`,
 1 AS `transit_logged`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `manager_idfk_1` FOREIGN KEY (`username`) REFERENCES `employee` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('david.smith'),('manager1'),('manager2'),('manager3'),('manager4'),('manager5'),('maria.garcia');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new3`
--

DROP TABLE IF EXISTS `new3`;
/*!50001 DROP VIEW IF EXISTS `new3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `new3` AS SELECT 
 1 AS `Event_Name`,
 1 AS `Staff_Name`,
 1 AS `Visits`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `s33_explore_event`
--

DROP TABLE IF EXISTS `s33_explore_event`;
/*!50001 DROP VIEW IF EXISTS `s33_explore_event`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `s33_explore_event` AS SELECT 
 1 AS `Event Name`,
 1 AS `Site Name`,
 1 AS `Ticket Price`,
 1 AS `Ticket Remaining`,
 1 AS `Total Visits`,
 1 AS `description`,
 1 AS `startdate`,
 1 AS `enddate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `s35_explore_site`
--

DROP TABLE IF EXISTS `s35_explore_site`;
/*!50001 DROP VIEW IF EXISTS `s35_explore_site`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `s35_explore_site` AS SELECT 
 1 AS `name`,
 1 AS `Event Count`,
 1 AS `Total Visits`,
 1 AS `openeveryday`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `s35_site_event`
--

DROP TABLE IF EXISTS `s35_site_event`;
/*!50001 DROP VIEW IF EXISTS `s35_site_event`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `s35_site_event` AS SELECT 
 1 AS `name`,
 1 AS `Event Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `s35_site_visit`
--

DROP TABLE IF EXISTS `s35_site_visit`;
/*!50001 DROP VIEW IF EXISTS `s35_site_visit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `s35_site_visit` AS SELECT 
 1 AS `name`,
 1 AS `Total Visits`,
 1 AS `openeveryday`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `s35_totalvisit`
--

DROP TABLE IF EXISTS `s35_totalvisit`;
/*!50001 DROP VIEW IF EXISTS `s35_totalvisit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `s35_totalvisit` AS SELECT 
 1 AS `username`,
 1 AS `sitename`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `s35_transitdetail`
--

DROP TABLE IF EXISTS `s35_transitdetail`;
/*!50001 DROP VIEW IF EXISTS `s35_transitdetail`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `s35_transitdetail` AS SELECT 
 1 AS `route`,
 1 AS `type`,
 1 AS `price`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `s38_visit_history`
--

DROP TABLE IF EXISTS `s38_visit_history`;
/*!50001 DROP VIEW IF EXISTS `s38_visit_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `s38_visit_history` AS SELECT 
 1 AS `username`,
 1 AS `ename`,
 1 AS `startdate`,
 1 AS `sitename`,
 1 AS `date`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `site` (
  `name` varchar(50) NOT NULL,
  `address` varchar(90) DEFAULT NULL,
  `zipcode` varchar(5) NOT NULL,
  `openeveryday` varchar(1) NOT NULL,
  `managerusername` varchar(50) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `site_idfk_1` (`managerusername`),
  CONSTRAINT `site_idfk_1` FOREIGN KEY (`managerusername`) REFERENCES `manager` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES ('Atlanta Beltline Center','112 Krog Street Northeast','30307','N','manager3'),('Historic Fourth Ward Park','680 Dallas Street Northeast','30308','Y','manager4'),('Inman Park','','30307','Y','david.smith'),('Piedmont Park','400 Park Drive Northeast','30306','Y','manager2'),('Westview Cemetery','1680 Westview Drive Southwest','30310','N','manager5');
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff` (
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `staff_idfk_1` FOREIGN KEY (`username`) REFERENCES `employee` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('michael.smith'),('robert.smith'),('staff1'),('staff2'),('staff3');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `take`
--

DROP TABLE IF EXISTS `take`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `take` (
  `username` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `route` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`date`,`username`,`type`,`route`),
  KEY `take_idfk_1` (`username`),
  KEY `take_idfk_2` (`type`,`route`),
  CONSTRAINT `take_idfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `take_idfk_2` FOREIGN KEY (`type`, `route`) REFERENCES `transit` (`type`, `route`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `take`
--

LOCK TABLES `take` WRITE;
/*!40000 ALTER TABLE `take` DISABLE KEYS */;
INSERT INTO `take` VALUES ('manager2','Bus','152','2019-03-20'),('manager2','MARTA','Blue','2019-03-20'),('manager2','MARTA','Blue','2019-03-21'),('manager2','MARTA','Blue','2019-03-22'),('manager3','Bike','Relay','2019-03-20'),('maria.hernandez','Bike','Relay','2019-03-20'),('maria.hernandez','Bus','152','2019-03-20'),('maria.hernandez','Bus','152','2019-03-22'),('mary.smith','Bike','Relay','2019-03-23'),('visitor1','MARTA','Blue','2019-03-21');
/*!40000 ALTER TABLE `take` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_revenues_visit`
--

DROP TABLE IF EXISTS `total_revenues_visit`;
/*!50001 DROP VIEW IF EXISTS `total_revenues_visit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `total_revenues_visit` AS SELECT 
 1 AS `selected_date`,
 1 AS `totalrevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalvisits`
--

DROP TABLE IF EXISTS `totalvisits`;
/*!50001 DROP VIEW IF EXISTS `totalvisits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `totalvisits` AS SELECT 
 1 AS `date`,
 1 AS `totalvisit`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transit`
--

DROP TABLE IF EXISTS `transit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transit` (
  `type` varchar(50) NOT NULL,
  `route` varchar(50) NOT NULL,
  `price` decimal(3,2) NOT NULL,
  PRIMARY KEY (`type`,`route`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transit`
--

LOCK TABLES `transit` WRITE;
/*!40000 ALTER TABLE `transit` DISABLE KEYS */;
INSERT INTO `transit` VALUES ('Bike','Relay',1.00),('Bus','152',2.00),('MARTA','Blue',2.00);
/*!40000 ALTER TABLE `transit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('david.smith','David','Smith','Approved','dsmith456'),('﻿james.smith','James','Smith','Approved','jsmith123'),('manager1','Manager','One','Pending','manager1'),('manager2','Manager','Two','Approved','manager2'),('manager3','Manager','Three','Approved','manager3'),('manager4','Manager','Four','Approved','manager4'),('manager5','Manager','Five','Approved','manager5'),('maria.garcia','Maria','Garcia','Approved','mgarcia123'),('maria.hernandez','Maria','Hernandez','Approved','mhernandez'),('maria.rodriguez','Maria','Rodriguez','Declined','mrodriguez'),('mary.smith','Mary','Smith','Approved','msmith789'),('michael.smith','Michael','Smith','Approved','msmith456'),('robert.smith','Robert ','Smith','Approved','rsmith789'),('staff1','Staff','One','Approved','staff1234'),('staff2','Staff','Two','Approved','staff4567'),('staff3','Staff','Three','Approved','staff7890'),('user1','User','One','Pending','user123456'),('visitor1','Visitor','One','Approved','visitor123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_admin`
--

DROP TABLE IF EXISTS `user_admin`;
/*!50001 DROP VIEW IF EXISTS `user_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_admin` AS SELECT 
 1 AS `username`,
 1 AS `email_count`,
 1 AS `usertype`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_combine`
--

DROP TABLE IF EXISTS `user_combine`;
/*!50001 DROP VIEW IF EXISTS `user_combine`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_combine` AS SELECT 
 1 AS `username`,
 1 AS `email_count`,
 1 AS `usertype`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_manager`
--

DROP TABLE IF EXISTS `user_manager`;
/*!50001 DROP VIEW IF EXISTS `user_manager`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_manager` AS SELECT 
 1 AS `username`,
 1 AS `email_count`,
 1 AS `usertype`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_staff`
--

DROP TABLE IF EXISTS `user_staff`;
/*!50001 DROP VIEW IF EXISTS `user_staff`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_staff` AS SELECT 
 1 AS `username`,
 1 AS `email_count`,
 1 AS `usertype`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_user`
--

DROP TABLE IF EXISTS `user_user`;
/*!50001 DROP VIEW IF EXISTS `user_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_user` AS SELECT 
 1 AS `username`,
 1 AS `email_count`,
 1 AS `usertype`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_visitor`
--

DROP TABLE IF EXISTS `user_visitor`;
/*!50001 DROP VIEW IF EXISTS `user_visitor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_visitor` AS SELECT 
 1 AS `username`,
 1 AS `email_count`,
 1 AS `usertype`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `useremail`
--

DROP TABLE IF EXISTS `useremail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `useremail` (
  `emailaddress` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`emailaddress`,`username`),
  KEY `useremail_idfk_1` (`username`),
  CONSTRAINT `useremail_idfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useremail`
--

LOCK TABLES `useremail` WRITE;
/*!40000 ALTER TABLE `useremail` DISABLE KEYS */;
INSERT INTO `useremail` VALUES ('dsmith@outlook.com','david.smith'),('jsmith@gatech.edu','james.smith'),('jsmith@gmail.com','james.smith'),('jsmith@hotmail.com','james.smith'),('jsmith@outlook.com','james.smith'),('m1@beltline.com','manager1'),('m2@beltline.com','manager2'),('m3@beltline.com','manager3'),('m4@beltline.com','manager4'),('m5@beltline.com','manager5'),('mgarcia@gatech.edu','maria.garcia'),('mgarcia@yahoo.com','maria.garcia'),('mh@gatech.edu','maria.hernandez'),('mh123@gmail.com','maria.hernandez'),('mrodriguez@gmail.com','maria.rodriguez'),('mary@outlook.com','mary.smith'),('msmith@gmail.com','michael.smith'),('rsmith@hotmail.com','robert.smith'),('s1@beltline.com','staff1'),('s2@beltline.com','staff2'),('s3@beltline.com','staff3'),('u1@beltline.com','user1'),('v1@beltline.com','visitor1');
/*!40000 ALTER TABLE `useremail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view28`
--

DROP TABLE IF EXISTS `view28`;
/*!50001 DROP VIEW IF EXISTS `view28`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view28` AS SELECT 
 1 AS `Staff_Name`,
 1 AS `Event_Shift`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view31`
--

DROP TABLE IF EXISTS `view31`;
/*!50001 DROP VIEW IF EXISTS `view31`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view31` AS SELECT 
 1 AS `scount`,
 1 AS `eventname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `visitevent`
--

DROP TABLE IF EXISTS `visitevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `visitevent` (
  `username` varchar(50) NOT NULL,
  `ename` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`date`,`username`,`ename`,`startdate`,`sitename`),
  KEY `visitevent_idfk_1` (`ename`,`startdate`,`sitename`),
  KEY `visitevent_idfk_2` (`username`),
  CONSTRAINT `visitevent_idfk_1` FOREIGN KEY (`ename`, `startdate`, `sitename`) REFERENCES `event` (`name`, `startdate`, `sitename`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visitevent_idfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitevent`
--

LOCK TABLES `visitevent` WRITE;
/*!40000 ALTER TABLE `visitevent` DISABLE KEYS */;
INSERT INTO `visitevent` VALUES ('manager2','Bus Tour','2019-02-01','Inman Park','2019-02-02'),('manager4','Bus Tour','2019-02-01','Inman Park','2019-02-01'),('manager5','Bus Tour','2019-02-01','Inman Park','2019-02-02'),('maria.garcia','Bus Tour','2019-02-01','Inman Park','2019-02-02'),('mary.smith','Bus Tour','2019-02-01','Inman Park','2019-02-01'),('mary.smith','Private Bus Tour','2019-02-01','Inman Park','2019-02-01'),('mary.smith','Private Bus Tour','2019-02-01','Inman Park','2019-02-02'),('mary.smith','Eastside Trail','2019-02-04','Piedmont Park','2019-02-04'),('mary.smith','Arboretum Walking Tour','2019-02-08','Inman Park','2019-02-10'),('mary.smith','Official Atlanta BeltLine Bike Tour','2019-02-09','Atlanta BeltLine Center','2019-02-10'),('mary.smith','Eastside Trail','2019-02-13','Historic Fourth Ward Park','2019-02-13'),('mary.smith','Eastside Trail','2019-02-13','Historic Fourth Ward Park','2019-02-14'),('mary.smith','Westside Trail','2019-02-18','Westview Cemetery','2019-02-19'),('staff2','Bus Tour','2019-02-01','Inman Park','2019-02-02'),('visitor1','Official Atlanta BeltLine Bike Tour','2019-02-09','Atlanta BeltLine Center','2019-02-10'),('visitor1','Eastside Trail','2019-02-13','Historic Fourth Ward Park','2019-02-14'),('visitor1','Westside Trail','2019-02-18','Westview Cemetery','2019-02-19');
/*!40000 ALTER TABLE `visitevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `visitor` (
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `visitor_idfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES ('manager2'),('manager4'),('manager5'),('maria.garcia'),('maria.rodriguez'),('mary.smith'),('michael.smith'),('staff2'),('staff3'),('visitor1');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitsite`
--

DROP TABLE IF EXISTS `visitsite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `visitsite` (
  `username` varchar(50) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`date`,`username`,`sitename`),
  KEY `visitsite_idfk_1` (`username`),
  KEY `visitsite_idfk_2` (`sitename`),
  CONSTRAINT `visitsite_idfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visitsite_idfk_2` FOREIGN KEY (`sitename`) REFERENCES `site` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitsite`
--

LOCK TABLES `visitsite` WRITE;
/*!40000 ALTER TABLE `visitsite` DISABLE KEYS */;
INSERT INTO `visitsite` VALUES ('mary.smith','Atlanta Beltline Center','2019-02-01'),('mary.smith','Inman Park','2019-02-01'),('mary.smith','Historic Fourth Ward Park','2019-02-02'),('mary.smith','Inman Park','2019-02-02'),('mary.smith','Piedmont Park','2019-02-02'),('mary.smith','Inman Park','2019-02-03'),('mary.smith','Atlanta Beltline Center','2019-02-10'),('visitor1','Inman Park','2019-02-01'),('visitor1','Piedmont Park','2019-02-01'),('visitor1','Westview Cemetery','2019-02-06'),('visitor1','Atlanta Beltline Center','2019-02-09'),('visitor1','Historic Fourth Ward Park','2019-02-11'),('visitor1','Piedmont Park','2019-02-11'),('visitor1','Atlanta Beltline Center','2019-02-13');
/*!40000 ALTER TABLE `visitsite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database '4400project'
--

--
-- Dumping routines for database '4400project'
--
/*!50003 DROP PROCEDURE IF EXISTS `s35_filter_site` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `s35_filter_site`(in myusername varchar(50),in mysitename varchar(500), in isopeneveryday varchar(50), in startdate date, in enddate date, in lowvisit decimal(6,0), in uppervisit decimal(6,0), in lowevent decimal(6,0), in upperevent decimal(6,0), in notvisit decimal(1,0))
BEGIN
select name, `Event Count`, `Total Visits`, count(*) as `My Visit`
from s35_explore_site join s35_totalvisit on name = sitename
where username = myusername and `Total Visits` >= lowvisit and  `Total Visits` <= uppervisit and `Event Count` >= lowevent and `Event Count` <= upperevent and find_in_set(openeveryday,isopeneveryday) and date >= startdate and date <= enddate and find_in_set(name,mysitename)
group by name
having count(*) > 1000000 * notvisit
union
select name, `Event Count`, `Total Visits`, 0 as `My Visit`
from s35_explore_site join s35_totalvisit on name = sitename
where `Total Visits` >= lowvisit and  `Total Visits` <= uppervisit and `Event Count` >= lowevent and `Event Count` <= upperevent and find_in_set(openeveryday,isopeneveryday) and date >= startdate and date <= enddate and find_in_set(name,mysitename) and (name) not in (select name
from s35_explore_site join s35_totalvisit on name = sitename
where username = myusername and `Total Visits` >= lowvisit and  `Total Visits` <= uppervisit and `Event Count` >= lowevent and `Event Count` <= upperevent and find_in_set(openeveryday,isopeneveryday) and date >= startdate and date <= enddate and find_in_set(name,mysitename) group by name)
group by name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc15_filter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc15_filter`(in input_sitename varchar(50), in lower_price decimal(5,0), in upper_price decimal(5,0), in input_transport varchar(50))
BEGIN
set global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
select c.sitename, t.route,t.type,t.price,count(*) as connected_sites
from connect as c, transit as t
where price between lower_price and upper_price
and c.type = t.type
and c.sitename = input_sitename	
and c.type = input_transport
group by c.type;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc15_log_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc15_log_date`(in input_username varchar(50), in input_type varchar(50), in input_route varchar(50), in input_date date)
BEGIN
insert into take(username, type, route, date)
values(input_username,input_type,input_route,input_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc16_Transit_History` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc16_Transit_History`(in Username varchar(100), in Transport_Type varchar(100), 
in Contain_Site varchar(100), in Route varchar(100), in Start_Date date, in End_Date date)
BEGIN
select distinct a.date, a.route, a.type, b.price 
from take a 
left join transit b 
on a.route = b.route and a.type = b.type 
left join connect c 
on a.route = c.route and a.type = c.type
where a.username = Username and a.route = Route and a.date >= Start_Date and a.date <= End_Date
union
select distinct a.date, a.route, a.type, b.price 
from take a 
left join transit b 
on a.route = b.route and a.type = b.type 
left join connect c 
on a.route = c.route and a.type = c.type
where a.username = Username and c.sitename = Contain_Site and a.date >= Start_Date and a.date <= End_Date
union
select distinct a.date, a.route, a.type, b.price 
from take a 
left join transit b 
on a.route = b.route and a.type = b.type 
left join connect c 
on a.route = c.route and a.type = c.type
where a.username = Username and a.type = Transport_Type and a.date >= Start_Date and a.date <= End_Date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc17_add to visitor account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc17_add to visitor account`(in myUsername varchar(100))
BEGIN
insert into visitor(username) values (myUsername);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc17_add_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc17_add_email`(in myUsername varchar(100),  newEmail varchar(100))
BEGIN
insert into useremail(emailaddress, username) value (newEmail, myUsername);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc17_delete email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc17_delete email`(in myUsername varchar(100), in deleteEmail varchar(100))
BEGIN
delete from useremail where username = myUsername and emailaddress = deleteEmail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc17_not_visitor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc17_not_visitor`(in myUsername varchar(100))
BEGIN
delete from visitor where username = myUsername;
delete from visitevent where username = myUsername;
delete from visitsite where username = myUsername;
delete from take where username = myUsername;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc17_update name and phone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc17_update name and phone`(in myUsername varchar(100), in newFirstname varchar(100), in newLastname varchar(100), 
	in newPhone decimal(10,0) )
BEGIN
update user set firstname = newFirstname,  lastname = newLastname where username = myUsername;
update employee set phone = newPhone where username = myUsername;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc17_view` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc17_view`(in myUsername varchar(100))
BEGIN
select u.firstname as 'First Name', u.lastname as 'Last Name', u.username as 'Username', s.name as 'Site Name', e.employeeid as 'Employee ID', e.phone as 'Phone Number', e.address as 'Address', 
!isnull((select username from visitor where exists(select username from employee) and username = myUsername)) as 'Is Visitor Account?'
from user u 
left join site s 
on u.username = s.managerusername
left join employee e
on u.username = e.username
left join visitor v
on u.username = v.username
where u.username = myUsername;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc17_view emails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc17_view emails`(in myUsername varchar(100))
BEGIN
select emailaddress as 'Email Address' from useremail
where username = myUsername;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc18_approve` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc18_approve`(in myUsername varchar(100), in checkUsername varchar(100))
BEGIN
update user set status = 'Approved' where username = checkUsername and exists(select * from administrator where username = myUsername);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc18_decline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc18_decline`(in myUsername varchar(100), in checkUsername varchar(100))
BEGIN
update user set status = 'Declined' where username = checkUsername and exists(select * from administrator where username = myUsername) and status != 'Approved';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc18_view` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc18_view`(in myUsername varchar(100), in chooseUsername varchar(100), 
in chooseType varchar(100), in chooseStatus varchar(100))
BEGIN
select distinct username, email_count, usertype, status
from user_combine c
where username = chooseUsername and myUsername = (select username from user_combine where usertype = 'administrator')
union
select distinct username, email_count, usertype, status
from user_combine c
where usertype = chooseType and myUsername = (select username from user_combine where usertype = 'administrator')
union
select distinct username, email_count, usertype, status
from user_combine c
where status = chooseStatus and myUsername = (select username from user_combine where usertype = 'administrator');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc19_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc19_delete`(in myUsername varchar(100), in mySitename varchar(100), in myManagername varchar(100), in myOpen varchar(100))
BEGIN
delete from site where name = mySitename and managerusername = myManagername and openeveryday = myOpen and exists(select myUsername from administrator);
delete from assign_to where sitename = mySitename and exists(select myUsername from administrator) and exists(select * from site 
where name = mySitename and managerusername = myManagername and openeveryday = myOpen);
delete from visitevent where sitename = mySitename and exists(select myUsername from administrator) and exists(select * from site 
where name = mySitename and managerusername = myManagername and openeveryday = myOpen);
delete from visitsite where sitename = mySitename and exists(select myUsername from administrator) and exists(select * from site 
where name = mySitename and managerusername = myManagername and openeveryday = myOpen);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc19_filter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc19_filter`(in myUsername varchar(100), in mySite varchar(100), in myManager varchar(100), 
in myOpen varchar(100))
BEGIN
select distinct s.name, concat(u.firstname, ' ', u.lastname) as 'manager',  s.openeveryday
from site s
left join user u
on s.managerusername = u.username
where s.managerusername = myManager and exists(select myUsername from administrator)
union
select distinct s.name, concat(u.firstname, ' ', u.lastname) as 'manager',  s.openeveryday
from site s
left join user u
on s.managerusername = u.username
where s.name = mySite and exists(select myUsername from administrator)
union
select distinct s.name, concat(u.firstname, ' ', u.lastname) as 'manager',  s.openeveryday
from site s
left join user u
on s.managerusername = u.username
where s.openeveryday = myOpen and exists(select myUsername from administrator);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc1_email_exist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc1_email_exist`(in input_email varchar(50))
BEGIN
SELECT emailaddress 
FROM useremail
where emailaddress = input_email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc1_login_verify` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc1_login_verify`(in input_email varchar(50), input_password varchar(50), input_status varchar(50))
BEGIN
select * from user, useremail
where emailaddress = input_email and password = input_password and status = input_status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc20_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc20_update`(in oldSitename varchar(100), in oldManagerFirstName varchar(100), 
in oldManagerLastName varchar(100), in oldOpen varchar(100), in newSitename varchar(100), in newZipcode decimal(5,0), in newOpen varchar(100))
BEGIN
update site set name = newSitename and zipcode = newSitename and address = newSitename and openeveryday = newOpen
where name = oldSitename and zipcode = oldZipcode and address = oldOpen and openeveryday = oldOpen;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc21_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc21_add`(in newName varchar(100), in newZip decimal(5,0), in newAdd varchar(100), in newOpen varchar(100), in newManageruser varchar(100))
BEGIN
insert into site (name, zipcode, address, openeveryday, managerusername) values
(newName, newZip, newAdd, newOpen, newManageruser);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc22_Manage_Transit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc22_Manage_Transit`(in Contain_Site varchar(50), in Route varchar(50), in Transport_Type varchar(50), Price_High decimal(3,2), Price_Low decimal(3, 2))
BEGIN
SELECT *
FROM Manage_Transit
WHERE Contain_Site in  (SELECT sitename 
			            FROM Manage_Transit, connect
                        WHERE Manage_Transit.route = connect.route and Manage_Transit.type = connect.type)
	  and route = Route and type = Transport_Type and  price >= Price_Low and price <= Price_High;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc23_Display_Current_Connected_Sites` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc23_Display_Current_Connected_Sites`(in Transport_Type varchar(50), in Route varchar(50), in Price decimal(3,2))
BEGIN
SELECT connect.sitename
FROM Manage_Transit, connect
WHERE Manage_Transit.type = Transport_Type and Manage_Transit.route = Route and Manage_Transit.price = Price and 
	 connect.type = Manage_Transit.type and connect.route = Manage_Transit.route;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc23_Edit_Connected_Sites` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc23_Edit_Connected_Sites`(in Site_Name varchar(50), in Transport_Type varchar(50), in Route varchar(50))
BEGIN
DELETE FROM connect
WHERE sitename = Site_Name and connect.type = Transport_Type and connect.route = Route;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc24_Create_Transit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc24_Create_Transit`(in Transport_Type varchar(50), in Route varchar(50), in Price decimal(3, 2), in Site_Name varchar(50))
BEGIN
INSERT INTO transit
VALUE (Transport_Type, Route, Price);
INSERT INTO connect
VALUE (Site_Name, Transport_Type, Route);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc25_Manage_Event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc25_Manage_Event`(in Event_Name varchar(50), in Description_Keyword longtext, in Start_Date date, in End_Date date,  in Duration_Low int(8), in Duration_High int(8), in Total_Visit_Low int(8), in Total_Visit_High bigint(21))
BEGIN
Select name, staff_count, durations, total_visits, total_revenue
FROM Manage_Event
WHERE name = Event_Name and startdate = Start_Date and enddate = End_Date 
	  and durations >= Duration_Low and durations <= Duration_High 
      and total_visits >= Total_Visit_Low and total_visits <= Total_Visit_High
      and description = "%" + Description_Keyword + "%";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc26_Edit_Event_Description` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc26_Edit_Event_Description`(in Event_Description longtext,
in Event_Name varchar(50), in Start_Date date, in Site_Name varchar(50))
BEGIN
UPDATE event
SET description = Event_Description
WHERE name=Event_Name and startdate=Start_Date and sitename=Site_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc26_Edit_Event_Staff(Delete)` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc26_Edit_Event_Staff(Delete)`(
in Staff_Name varchar(50), in Event_Name varchar(50), in Start_Date date)
BEGIN
DELETE FROM assign_to
WHERE assign_to.eventname = Event_Name and assign_to.staffusername = Staff_Name 
and assign_to.startdate = Start_Date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc26_Edit_Event_Staff(Insert)` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc26_Edit_Event_Staff(Insert)`(
in Staff_Name varchar(50), in Event_Name varchar(50), in Start_Date date, in Site_Name varchar(50))
BEGIN
INSERT INTO assign_to
VALUE (Staff_Name, Event_Name, Start_Date, Site_Name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc26_View Event Staff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc26_View Event Staff`(in Event_Name varchar(25), in Price decimal(2, 0), in Start_Date date, in End_Date date)
BEGIN
(SELECT username as staff_assigned
FROM staff
WHERE username not in (SELECT distinct staffusername FROM assign_to))
UNION
(SELECT Q.staffusername as staff_assigned
FROM (SELECT M.name, M.startdate, M.enddate, M.sitename, M.price, A.staffusername 
	FROM (assign_to as A join Manage_Event as M on A.eventname=M.name and A.startdate=M.startdate and A.sitename=M.sitename)) as Q
WHERE Q.name = Event_Name and Q.price = Price and Q.startdate = Start_Date and Q.enddate = End_Date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc26_View_Event_Visit&Revenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc26_View_Event_Visit&Revenue`(
in Event_Name varchar(50), in Price decimal(2,0), in Start_Date date, in End_Date date,
in Daily_Visit_Low int(8), in Daily_Visit_High int(8), in Daily_Revenue_Low int(8), in Daily_Revenue_High int(8))
BEGIN
SELECT name, selected_date, daily_visits, daily_revenue
FROM event_daily_price_visit
WHERE name = Event_Name and price = Price
and daily_revenue >= Daily_Revenue_Low and daily_revenue <= Daily_Revenue_High
and daily_visits >= Daily_Visit_Low and daily_visits <= Daily_Visit_High
and selected_date >= Start_Date and selected_date <= End_Date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc27_Create_Event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc27_Create_Event`(
in Event_Name varchar(50), in Site_Name varchar(50), 
in Start_Date date, in End_Date date,
in Price decimal(2,0), in Capacity decimal(6,0),
in Min_Staff_Required decimal(1,0), in Event_Description longtext,
in Assigned_Staff varchar(50))
BEGIN
INSERT INTO event 
VALUE (Event_Name, Start_Date, Site_Name, End_Date, Price, Capacity, Min_Staff_Required, Event_Description);
INSERT INTO assign_to
VALUE (Assigned_Staff, Event_Name, Start_Date, Site_Name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc28` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc28`(in input_site varchar(100), in input_FirstName varchar(100), in input_LastName varchar(100), in input_startdate date, in input_enddate date)
BEGIN
SELECT distinct user.firstname AS First_Name, user.lastname as Last_Name, another_view28.eventshift AS Event_Shift
FROM another_view28, user 
where another_view28.staffname = user.username
	and another_view28.Date > input_startdate and another_view28.Date < input_enddate and user.firstname LIKE concat('%',input_FirstName,'%') and user.lastname LIKE concat('%',input_LastName,'%') and another_view28.Site = input_site;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc29` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc29`(in input_startdate date, in input_enddate date, in input_eventCountRange_min int, in input_eventCountRange_max int, in input_staffCountRange_min int, in input_staffCountRange_max int, in input_totalVisitCountRange_min int, in input_totalVisitCountRange_max int, in input_totalRevenueCountRange_min int, in input_totalRevenueCountRange_max int)
BEGIN
SELECT eventcount.selected_date, eventcount.eventcount AS Event_Count, event_staff_datelist.event_staff_count AS Staff_Count, totalvisits.totalvisit AS Total_Visits, total_revenues_visit.totalrevenue AS Total_Revenue
from eventcount, event_staff_datelist, totalvisits, total_revenues_visit
where eventcount.selected_date = event_staff_datelist.selected_date and eventcount.selected_date = totalvisits.date and eventcount.selected_date = total_revenues_visit.selected_date 
	and eventcount.selected_date > input_startdate and eventcount.selected_date < input_enddate and eventcount.eventcount > input_eventCountRange_min and eventcount.eventcount < input_eventCountRange_max
	and event_staff_datelist.event_staff_count > input_staffCountRange_min and event_staff_datelist.event_staff_count < input_staffCountRange_max and totalvisits.totalvisit >= input_totalVisitCountRange_min and totalvisits.totalvisit <= input_totalVisitCountRange_max and total_revenues_visit.totalrevenue >= input_totalRevenueCountRange_min and total_revenues_visit.totalrevenue <= input_totalRevenueCountRange_max;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc30` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc30`(in input_date date)
BEGIN
SELECT new3.Event_Name, new3.Staff_Name, new3.Visits, event.price*new3.Visits AS Revenue, event.startdate as date
FROM new3, event
WHERE event.name = new3.Event_Name and event.startdate = input_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc31` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc31`(in input_EventName varchar(50), in input_descriptionKeyword longtext, in input_startdate date, in input_enddate date)
BEGIN
SELECT distinct E.name AS eventname, E.sitename AS sitename, E.startdate AS startdate, E.enddate AS enddate, E.description as description, view31.scount AS Staff_Count
FROM 
event AS E
JOIN
view31
where view31.eventname = E.name
and eventname = input_EventName and description like concat('%',input_descriptionKeyword,'%') and startdate > input_startdate and enddate < input_enddate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc32` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc32`(in input_eventname varchar(50), in input_staffname varchar(50))
BEGIN
SELECT E.name AS Event, E.sitename AS Site, E.startdate AS Start_Date, E.enddate AS End_Date, (E.enddate - E.startdate) AS Duration_Days, VE.staffusername AS Staff_Assigned, E.capacity AS Capacity, E.price AS Price, E.description AS Description
FROM event AS E, assign_to AS VE
WHERE VE.eventname = E.name AND VE.startdate = E.startdate AND E.name = input_eventname and VE.staffusername = input_staffname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc33_event_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc33_event_detail`(in eventname varchar(50), in sitename  varchar(50), in mystartdate date)
BEGIN
SELECT `Event Name`, `Site Name`, `Ticket Price`, `Ticket RemaIning`, description, startdate, enddate FROM s33_explore_event
where`Event Name` = eventname and `Site Name` = sitename and startdate = mystartdate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc33_filter_event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc33_filter_event`(in myusername varchar(50), in eventname varchar(50), in keyword longtext, in mysitename varchar(500), in mystartdate date, in myenddate date, in lowvisit decimal(6,0), in uppervisit decimal(6,0), in lowprice decimal(2,0), in upperprice decimal(2,0), in notvisit decimal(1,0), in notsoldout decimal(1,0))
BEGIN
select `Event Name`, `Site Name`, `Ticket Price`, `Ticket RemaIning`, `Total Visits`, count(*) as `My Visits`
from s33_explore_event left join visitevent on `Event Name` = ename and `Site Name` = sitename and s33_explore_event.startdate = visitevent.startdate
where  `Event Name` like eventname and description like keyword and find_in_set(`Site Name`,mysitename) and s33_explore_event.startdate >= mystartdate and s33_explore_event.enddate <= myenddate and `Ticket Price` >= lowprice and `Ticket Price` <= upperprice and `Total Visits` >= lowvisit and `Total Visits` <= uppervisit and username = myusername and `Ticket RemaIning` > notsoldout + 1
group by `Event Name`, s33_explore_event.startdate, `Site Name`
having count(*) > 1000000 * notvisit
union
select `Event Name`, `Site Name`, `Ticket Price`, `Ticket RemaIning`, `Total Visits`, 0 as `My Visits`
from s33_explore_event left join visitevent on `Event Name` = ename and `Site Name` = sitename and s33_explore_event.startdate = visitevent.startdate
where  `Event Name` like eventname and description like keyword and find_in_set(`Site Name`,mysitename) and s33_explore_event.startdate >= mystartdate and s33_explore_event.enddate <= myenddate and `Ticket Price` >= lowprice and `Ticket Price` <= upperprice and `Total Visits` >= lowvisit and `Total Visits` <= uppervisit and `Ticket RemaIning` > notsoldout + 1 and (`Event Name`,`Site Name`, `Ticket Price`, `Ticket RemaIning`, `Total Visits`) not in (select `Event Name`, `Site Name`, `Ticket Price`, `Ticket RemaIning`, `Total Visits`
from s33_explore_event left join visitevent on `Event Name` = ename and `Site Name` = sitename and s33_explore_event.startdate = visitevent.startdate
where  `Event Name` like eventname and description like keyword and find_in_set(`Site Name`,mysitename) and s33_explore_event.startdate >= mystartdate and s33_explore_event.enddate <= myenddate and `Ticket Price` >= lowprice and `Ticket Price` <= upperprice and `Total Visits` >= lowvisit and `Total Visits` <= uppervisit and username = myusername and `Ticket RemaIning` > notsoldout + 1
group by `Event Name`, s33_explore_event.startdate, `Site Name`)
group by `Event Name`, s33_explore_event.startdate, `Site Name`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc33_site_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc33_site_list`()
BEGIN
select name 
from site;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc34_new_visit_event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc34_new_visit_event`(in my_event varchar(50), in my_site varchar(50), in my_startdate DATE, in my_username varchar(50), my_date DATE)
BEGIN
insert into visitevent values(my_username, my_event, my_startdate, my_site, my_date);
delete from visitevent where date < startdate or date > (select enddate from event where name = my_event and startdate = my_startdate and sitename = my_site) and username = my_username and startdate = my_startdate and ename = my_event and sitename = my_site;
delete from visitevent where date = my_date and username = my_username and startdate = my_startdate and ename = my_event and sitename = my_site and exists(select * from s33_explore_event where `Ticket Remaining` < 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc35_site_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc35_site_detail`(in my_site varchar(50))
BEGIN
select name, openeveryday, address
from site
where name = my_site;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc35_transit_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc35_transit_detail`(in my_site varchar(50), in my_type varchar(50))
BEGIN
select connect.route, connect.type, price, count(*) as `Connected Sites`
from connect join s35_transitdetail on connect.route = s35_transitdetail.route and connect.type = s35_transitdetail.type
where s35_transitdetail.name =my_site and s35_transitdetail.type = my_type;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc36_new_visit_transit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc36_new_visit_transit`(in my_username varchar(50), in my_type varchar(50), in my_route varchar(50),in my_date DATE)
BEGIN
insert into take values(my_username, my_type, my_route, my_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc37_new_visit_site` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc37_new_visit_site`(in my_username varchar(50), in my_site varchar(50), in my_date DATE)
BEGIN
insert into visitsite values(my_username, my_site, my_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc38_filter_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc38_filter_date`(in my_username varchar(50), in my_event varchar(500), in my_site varchar(500), in my_start date, in my_end date)
BEGIN
select date, `ename`, sitename, price
from s38_visit_history
where username = my_username and date >= my_start and date <= my_end and `ename` = my_event and find_in_set(sitename,my_site)
union
select date, `ename`, sitename, price
from s38_visit_history
where username = my_username and date >= my_start and date <= my_end and `ename` <=> null and find_in_set(sitename,my_site);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc38_filter_nodate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc38_filter_nodate`(in my_username varchar(50), in my_event varchar(500), in my_site varchar(500))
BEGIN
select date, `ename`, sitename, price
from s38_visit_history
where username = my_username and `ename` = my_event and find_in_set(sitename,my_site)
union
select date, `ename`, sitename, price
from s38_visit_history
where username = my_username and `ename` <=> null and find_in_set(sitename,my_site);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc38_visitor_site` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc38_visitor_site`(in my_username varchar(50))
BEGIN
select distinct sitename
from visitsite
where username = my_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc3_delete_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc3_delete_email`(in input_email varchar(50))
BEGIN
delete
from useremail
where emailaddress=input_email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc3_display_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc3_display_email`(in input_username varchar(50))
BEGIN
select emailaddress
from useremail
where username=input_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc3_user_registration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc3_user_registration`(in input_username varchar(50), in input_firstname varchar(50), in input_lastname varchar(50), in input_password varchar(50), in input_email varchar(50))
BEGIN
insert into user (username, firstname, lastname, status,password)
values(input_username, input_firstname, input_lastname,'pending',input_password);
insert into useremail(emailaddress, username)
values(input_email,input_username);
delete from useremail where emailaddress not like '_%@_%._%';
delete from user  where length(password) < 8;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc4_delete_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc4_delete_email`(in input_email varchar(50))
BEGIN
delete
from useremail
where emailaddress=input_email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc4_display_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc4_display_email`(in input_username varchar (50))
BEGIN
select emailaddress
from useremail
where username=input_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc4_visitor_registration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc4_visitor_registration`(in input_username varchar(50), in input_firstname varchar(50), in input_lastname varchar (50), in input_password varchar(50),in input_email varchar(50))
BEGIN
insert into user (username, firstname, lastname, status,password)
values(input_username, input_firstname, input_lastname,'pending',input_password);
insert into useremail(emailaddress, username)
values(input_email,input_username);
delete from useremail where emailaddress not like '_%@_%._%';
insert into visitor(username)
values(input_username);
delete from user  where length(password) < 8;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc5_delete_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc5_delete_email`(in input_email varchar(50))
BEGIN
delete 
from useremail
where emailaddress=input_email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc5_display_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc5_display_email`(in input_username varchar(50))
BEGIN
select emailaddress
from useremail
where username=input_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc5_manager_registration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc5_manager_registration`(in input_username varchar(50), in input_firstname varchar(50), in input_lastname varchar(50), in input_password varchar(50), in input_id varchar(9), in input_phone varchar(10), in input_address varchar(90), in input_city varchar(50), in input_state varchar(50), in input_zipcode varchar(5), input_email varchar(50))
BEGIN
insert into user (username, firstname, lastname, status,password)
values(input_username, input_firstname, input_lastname,'pending',input_password);
insert into employee(employeeid, phone, address, city, state, zipcode, username)
values (input_id,input_phone,input_address,input_city,input_state,input_zipcode,input_username);
insert into useremail(emailaddress, username)
values(input_email,input_username);
insert into manager(username)
values(input_username);
delete from user where length(password)<8 or username in
(select username from employee where  length(phone)!=10 or length(zipcode)!=5)
or username in (select username from useremail where emailaddress not like '_%@_%._%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc5_staff_registration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc5_staff_registration`(in input_username varchar(50), in input_firstname varchar(50), in input_lastname varchar(50), in input_password varchar(50), in input_id varchar(9), in input_phone varchar(10), in input_address varchar(90), in input_city varchar(50), in input_state varchar(50), in input_zipcode varchar(5), input_email varchar(50))
BEGIN
insert into user (username, firstname, lastname, status,password)
values(input_username, input_firstname, input_lastname,'pending',input_password);
insert into employee(employeeid, phone, address, city, state, zipcode, username)
values (input_id,input_phone,input_address,input_city,input_state,input_zipcode,input_username);
insert into useremail(emailaddress, username)
values(input_email,input_username);
insert into staff(username)
values(input_username);
delete from user where length(password)<8 or username in
(select username from employee where  length(phone)!=10 or length(zipcode)!=5)
or username in (select username from useremail where emailaddress not like '_%@_%._%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc6_delete_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc6_delete_email`(in input_email varchar(50))
BEGIN
delete 
from useremail
where emailaddress=input_email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc6_display_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc6_display_email`(in input_username varchar(50))
BEGIN
select emailaddress
from useremail
where username=input_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc6_manager_registration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc6_manager_registration`(in input_username varchar(50), in input_firstname varchar(50), in input_lastname varchar(50), in input_password varchar(50), in input_id varchar(9), in input_phone varchar(10), in input_address varchar(90), in input_city varchar(50), in input_state varchar(50), in input_zipcode varchar(5), input_email varchar(50))
BEGIN
insert into user (username, firstname, lastname, status,password)
values(input_username, input_firstname, input_lastname,'pending',input_password);
insert into employee(employeeid, phone, address, city, state, zipcode, username)
values (input_id,input_phone,input_address,input_city,input_state,input_zipcode,input_username);
insert into useremail(emailaddress, username)
values(input_email,input_username);
insert into manager(username)
values(input_username);
insert into visitor(username)
values(input_username);
delete from user where length(password)<8 or username in
(select username from employee where  length(phone)!=10 or length(zipcode)!=5)
or username in (select username from useremail where emailaddress not like '_%@_%._%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sc6_staff_registration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sc6_staff_registration`(in input_username varchar(50), in input_firstname varchar(50), in input_lastname varchar(50), in input_password varchar(50), in input_id varchar(9), in input_phone varchar(10), in input_address varchar(90), in input_city varchar(50), in input_state varchar(50), in input_zipcode varchar(5), input_email varchar(50))
BEGIN
insert into user (username, firstname, lastname, status,password)
values(input_username, input_firstname, input_lastname,'pending',input_password);
insert into employee(employeeid, phone, address, city, state, zipcode, username)
values (input_id,input_phone,input_address,input_city,input_state,input_zipcode,input_username);
insert into useremail(emailaddress, username)
values(input_email,input_username);
insert into staff(username)
values(input_username);
insert into visitor(username)
values(input_username);
delete from user where length(password)<8 or username in
(select username from employee where  length(phone)!=10 or length(zipcode)!=5)
or username in (select username from useremail where emailaddress not like '_%@_%._%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `another_view28`
--

/*!50001 DROP VIEW IF EXISTS `another_view28`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `another_view28` AS select `assign_to`.`staffusername` AS `staffname`,`view28`.`Event_Shift` AS `eventshift`,`assign_to`.`startdate` AS `Date`,`assign_to`.`sitename` AS `Site` from (`view28` join `assign_to`) where (`assign_to`.`staffusername` = `view28`.`Staff_Name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `datelist`
--

/*!50001 DROP VIEW IF EXISTS `datelist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `datelist` AS select `v`.`selected_date` AS `selected_date` from (select ('1970-01-01' + interval (((((`t4`.`i` * 10000) + (`t3`.`i` * 1000)) + (`t2`.`i` * 100)) + (`t1`.`i` * 10)) + `t0`.`i`) day) AS `selected_date` from (((((select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t0` join (select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t1`) join (select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t2`) join (select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t3`) join (select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t4`)) `v` where (`v`.`selected_date` between '2019-01-01' and '2019-02-19') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `datelist1`
--

/*!50001 DROP VIEW IF EXISTS `datelist1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `datelist1` AS select `v`.`selected_date` AS `selected_date` from (select ('1970-01-01' + interval (((((`t4`.`i` * 10000) + (`t3`.`i` * 1000)) + (`t2`.`i` * 100)) + (`t1`.`i` * 10)) + `t0`.`i`) day) AS `selected_date` from (((((select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t0` join (select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t1`) join (select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t2`) join (select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t3`) join (select 0 AS `i` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t4`)) `v` where (`v`.`selected_date` between '2019-02-01' and '2019-02-19') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `event_daily_price`
--

/*!50001 DROP VIEW IF EXISTS `event_daily_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `event_daily_price` AS select `event`.`name` AS `name`,`datelist`.`selected_date` AS `selected_date`,`event`.`price` AS `price` from (`event` join `datelist`) where ((`datelist`.`selected_date` >= `event`.`startdate`) and (`datelist`.`selected_date` <= `event`.`enddate`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `event_daily_price_visit`
--

/*!50001 DROP VIEW IF EXISTS `event_daily_price_visit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `event_daily_price_visit` AS select `q`.`name` AS `name`,`q`.`selected_date` AS `selected_date`,`q`.`price` AS `price`,count(0) AS `daily_visits`,(count(0) * `q`.`price`) AS `daily_revenue` from (`event_daily_price` `q` join `visitevent`) where ((`q`.`name` = `visitevent`.`ename`) and (`q`.`selected_date` >= `visitevent`.`startdate`) and (`q`.`selected_date` <= `visitevent`.`date`)) group by `q`.`name`,`q`.`selected_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `event_staff`
--

/*!50001 DROP VIEW IF EXISTS `event_staff`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `event_staff` AS select `assign_to`.`eventname` AS `eventname`,count(0) AS `event_staff_count`,`assign_to`.`startdate` AS `startdate`,`assign_to`.`sitename` AS `sitename`,`event`.`enddate` AS `enddate` from (`event` join `assign_to`) where ((`event`.`name` = `assign_to`.`eventname`) and (`event`.`sitename` = `assign_to`.`sitename`) and (`event`.`startdate` = `assign_to`.`startdate`)) group by `assign_to`.`eventname`,`assign_to`.`sitename`,`assign_to`.`startdate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `event_staff_datelist`
--

/*!50001 DROP VIEW IF EXISTS `event_staff_datelist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `event_staff_datelist` AS select `datelist1`.`selected_date` AS `selected_date`,sum(`event_staff`.`event_staff_count`) AS `event_staff_count` from (`event_staff` join `datelist1` on((`datelist1`.`selected_date` between `event_staff`.`startdate` and `event_staff`.`enddate`))) group by `datelist1`.`selected_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `eventcount`
--

/*!50001 DROP VIEW IF EXISTS `eventcount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `eventcount` AS select `datelist1`.`selected_date` AS `selected_date`,count(0) AS `eventcount` from (`datelist1` join `event` on((`datelist1`.`selected_date` between `event`.`startdate` and `event`.`enddate`))) group by `datelist1`.`selected_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `manage_event`
--

/*!50001 DROP VIEW IF EXISTS `manage_event`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `manage_event` AS select `event`.`name` AS `name`,`event`.`startdate` AS `startdate`,`event`.`enddate` AS `enddate`,`event`.`sitename` AS `sitename`,`event`.`price` AS `price`,`q`.`staff_count` AS `staff_count`,((to_days(`event`.`enddate`) - to_days(`event`.`startdate`)) + 1) AS `durations`,`q`.`total_visits` AS `total_visits`,(`q`.`total_visits` * `event`.`price`) AS `total_revenue`,`event`.`description` AS `description` from (`event` join (select `q_sc`.`name` AS `name`,`q_sc`.`startdate` AS `startdate`,`q_sc`.`sitename` AS `sitename`,`q_sc`.`staff_count` AS `staff_count`,`q_tv`.`total_visits` AS `total_visits` from ((select `assign_to`.`eventname` AS `name`,`assign_to`.`startdate` AS `startdate`,`assign_to`.`sitename` AS `sitename`,count(0) AS `staff_count` from `assign_to` group by `assign_to`.`eventname`,`assign_to`.`startdate`,`assign_to`.`sitename`) `q_sc` join (select `visitevent`.`ename` AS `name`,`visitevent`.`startdate` AS `startdate`,`visitevent`.`sitename` AS `sitename`,count(0) AS `total_visits` from `visitevent` group by `visitevent`.`ename`,`visitevent`.`startdate`,`visitevent`.`sitename`) `q_tv` on(((`q_sc`.`name` = `q_tv`.`name`) and (`q_sc`.`startdate` = `q_tv`.`startdate`) and (`q_sc`.`sitename` = `q_tv`.`sitename`))))) `q`) where ((`event`.`name` = `q`.`name`) and (`event`.`startdate` = `q`.`startdate`) and (`event`.`sitename` = `q`.`sitename`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `manage_transit`
--

/*!50001 DROP VIEW IF EXISTS `manage_transit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `manage_transit` AS select `q`.`route` AS `route`,`q`.`type` AS `type`,`q`.`price` AS `price`,`q`.`connected_sites` AS `connected_sites`,count(0) AS `transit_logged` from ((select `transit`.`route` AS `route`,`transit`.`type` AS `type`,`transit`.`price` AS `price`,count(0) AS `connected_sites` from (`transit` join `connect`) where ((`transit`.`type` = `connect`.`type`) and (`transit`.`route` = `connect`.`route`)) group by `transit`.`route`,`transit`.`type`) `q` join `take`) where ((`q`.`route` = `take`.`route`) and (`q`.`type` = `take`.`type`)) group by `q`.`route`,`q`.`type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new3`
--

/*!50001 DROP VIEW IF EXISTS `new3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new3` AS select `n1`.`eventname` AS `Event_Name`,`n2`.`username` AS `Staff_Name`,`n1`.`visit` AS `Visits` from ((select count(0) AS `visit`,`VE`.`ename` AS `eventname` from `visitevent` `VE` group by `VE`.`ename`) `n1` join (select `S`.`username` AS `username` from `staff` `S`) `n2`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `s33_explore_event`
--

/*!50001 DROP VIEW IF EXISTS `s33_explore_event`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s33_explore_event` AS select `event`.`name` AS `Event Name`,`event`.`sitename` AS `Site Name`,`event`.`price` AS `Ticket Price`,(`event`.`capacity` - count(0)) AS `Ticket Remaining`,count(0) AS `Total Visits`,`event`.`description` AS `description`,`event`.`startdate` AS `startdate`,`event`.`enddate` AS `enddate` from (`event` join `visitevent` on(((`event`.`name` = `visitevent`.`ename`) and (`event`.`startdate` = `visitevent`.`startdate`) and (`event`.`sitename` = `visitevent`.`sitename`)))) group by `event`.`name`,`event`.`startdate`,`event`.`sitename` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `s35_explore_site`
--

/*!50001 DROP VIEW IF EXISTS `s35_explore_site`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s35_explore_site` AS select `s35_site_event`.`name` AS `name`,`s35_site_event`.`Event Count` AS `Event Count`,`s35_site_visit`.`Total Visits` AS `Total Visits`,`s35_site_visit`.`openeveryday` AS `openeveryday` from (`s35_site_event` join `s35_site_visit` on((`s35_site_visit`.`name` = `s35_site_event`.`name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `s35_site_event`
--

/*!50001 DROP VIEW IF EXISTS `s35_site_event`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s35_site_event` AS select `site`.`name` AS `name`,count(0) AS `Event Count` from (`site` join `event` on((`event`.`sitename` = `site`.`name`))) group by `site`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `s35_site_visit`
--

/*!50001 DROP VIEW IF EXISTS `s35_site_visit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s35_site_visit` AS select `site`.`name` AS `name`,count(0) AS `Total Visits`,`site`.`openeveryday` AS `openeveryday`,`s35_totalvisit`.`date` AS `date` from (`site` join `s35_totalvisit` on((`s35_totalvisit`.`sitename` = `site`.`name`))) group by `site`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `s35_totalvisit`
--

/*!50001 DROP VIEW IF EXISTS `s35_totalvisit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s35_totalvisit` AS select `visitsite`.`username` AS `username`,`visitsite`.`sitename` AS `sitename`,`visitsite`.`date` AS `date` from `visitsite` union all select `visitevent`.`username` AS `username`,`visitevent`.`sitename` AS `sitename`,`visitevent`.`date` AS `date` from `visitevent` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `s35_transitdetail`
--

/*!50001 DROP VIEW IF EXISTS `s35_transitdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s35_transitdetail` AS select `transit`.`route` AS `route`,`transit`.`type` AS `type`,`transit`.`price` AS `price`,`site`.`name` AS `name` from ((`site` join `transit`) join `connect` on(((`site`.`name` = `connect`.`sitename`) and (`connect`.`type` = `transit`.`type`) and (`connect`.`route` = `transit`.`route`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `s38_visit_history`
--

/*!50001 DROP VIEW IF EXISTS `s38_visit_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s38_visit_history` AS select `visitsite`.`username` AS `username`,NULL AS `ename`,NULL AS `startdate`,`visitsite`.`sitename` AS `sitename`,`visitsite`.`date` AS `date`,0 AS `price` from `visitsite` union select `visitevent`.`username` AS `username`,`visitevent`.`ename` AS `ename`,`visitevent`.`startdate` AS `startdate`,`visitevent`.`sitename` AS `sitename`,`visitevent`.`date` AS `date`,`event`.`price` AS `price` from (`visitevent` join `event` on(((`event`.`name` = `visitevent`.`ename`) and (`event`.`startdate` = `visitevent`.`startdate`) and (`event`.`sitename` = `visitevent`.`sitename`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_revenues_visit`
--

/*!50001 DROP VIEW IF EXISTS `total_revenues_visit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_revenues_visit` AS select `datelist1`.`selected_date` AS `selected_date`,sum(`event`.`price`) AS `totalrevenue` from ((`datelist1` join `event`) join `visitevent` on(((`event`.`name` = `visitevent`.`ename`) and (`visitevent`.`startdate` = `event`.`startdate`) and (`visitevent`.`sitename` = `event`.`sitename`) and (`datelist1`.`selected_date` = `visitevent`.`date`)))) group by `datelist1`.`selected_date` union select `datelist1`.`selected_date` AS `selected_date`,0 AS `0` from `datelist1` where (not(`datelist1`.`selected_date` in (select `datelist1`.`selected_date` AS `selected_date` from ((`datelist1` join `event`) join `visitevent` on(((`event`.`name` = `visitevent`.`ename`) and (`visitevent`.`startdate` = `event`.`startdate`) and (`visitevent`.`sitename` = `event`.`sitename`) and (`datelist1`.`selected_date` = `visitevent`.`date`)))) group by `datelist1`.`selected_date`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalvisits`
--

/*!50001 DROP VIEW IF EXISTS `totalvisits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalvisits` AS select `datelist1`.`selected_date` AS `date`,count(0) AS `totalvisit` from ((`datelist1` join `visitevent`) join `visitsite` on(((`visitevent`.`sitename` = `visitsite`.`sitename`) and (`visitevent`.`startdate` = `datelist1`.`selected_date`)))) group by `datelist1`.`selected_date` union select `datelist1`.`selected_date` AS `selected_date`,0 AS `0` from `datelist1` where (not(`datelist1`.`selected_date` in (select `datelist1`.`selected_date` AS `date` from ((`datelist1` join `visitevent`) join `visitsite` on(((`visitevent`.`sitename` = `visitsite`.`sitename`) and (`visitevent`.`startdate` = `datelist1`.`selected_date`)))) group by `datelist1`.`selected_date`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_admin`
--

/*!50001 DROP VIEW IF EXISTS `user_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_admin` AS select `a`.`username` AS `username`,count(`e`.`emailaddress`) AS `email_count`,'administrator' AS `usertype`,`u`.`status` AS `status` from ((`administrator` `a` left join `user` `u` on((`u`.`username` = `a`.`username`))) left join `useremail` `e` on((`e`.`username` = `a`.`username`))) group by `a`.`username` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_combine`
--

/*!50001 DROP VIEW IF EXISTS `user_combine`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_combine` AS select `user_manager`.`username` AS `username`,`user_manager`.`email_count` AS `email_count`,`user_manager`.`usertype` AS `usertype`,`user_manager`.`status` AS `status` from `user_manager` union select `user_staff`.`username` AS `username`,`user_staff`.`email_count` AS `email_count`,`user_staff`.`usertype` AS `usertype`,`user_staff`.`status` AS `status` from `user_staff` union select `user_user`.`username` AS `username`,`user_user`.`email_count` AS `email_count`,`user_user`.`usertype` AS `usertype`,`user_user`.`status` AS `status` from `user_user` union select `user_visitor`.`username` AS `username`,`user_visitor`.`email_count` AS `email_count`,`user_visitor`.`usertype` AS `usertype`,`user_visitor`.`status` AS `status` from `user_visitor` union select `user_admin`.`username` AS `username`,`user_admin`.`email_count` AS `email_count`,`user_admin`.`usertype` AS `usertype`,`user_admin`.`status` AS `status` from `user_admin` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_manager`
--

/*!50001 DROP VIEW IF EXISTS `user_manager`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_manager` AS select `m`.`username` AS `username`,count(`e`.`emailaddress`) AS `email_count`,'manager' AS `usertype`,`u`.`status` AS `status` from ((`manager` `m` left join `user` `u` on((`u`.`username` = `m`.`username`))) left join `useremail` `e` on((`e`.`username` = `m`.`username`))) group by `m`.`username` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_staff`
--

/*!50001 DROP VIEW IF EXISTS `user_staff`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_staff` AS select `s`.`username` AS `username`,count(`e`.`emailaddress`) AS `email_count`,'staff' AS `usertype`,`u`.`status` AS `status` from ((`staff` `s` left join `user` `u` on((`u`.`username` = `s`.`username`))) left join `useremail` `e` on((`e`.`username` = `s`.`username`))) group by `s`.`username` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_user`
--

/*!50001 DROP VIEW IF EXISTS `user_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_user` AS select `u`.`username` AS `username`,count(`e`.`emailaddress`) AS `email_count`,'user' AS `usertype`,`u`.`status` AS `status` from (`user` `u` left join `useremail` `e` on((`e`.`username` = `u`.`username`))) group by `u`.`username` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_visitor`
--

/*!50001 DROP VIEW IF EXISTS `user_visitor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_visitor` AS select `v`.`username` AS `username`,count(`e`.`emailaddress`) AS `email_count`,'visitor' AS `usertype`,`u`.`status` AS `status` from ((`visitor` `v` left join `user` `u` on((`u`.`username` = `v`.`username`))) left join `useremail` `e` on((`e`.`username` = `v`.`username`))) group by `v`.`username` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view28`
--

/*!50001 DROP VIEW IF EXISTS `view28`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view28` AS select `assign_to`.`staffusername` AS `Staff_Name`,count(0) AS `Event_Shift` from `assign_to` group by `assign_to`.`staffusername` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view31`
--

/*!50001 DROP VIEW IF EXISTS `view31`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view31` AS select count(0) AS `scount`,`VE`.`eventname` AS `eventname` from `assign_to` `VE` group by `VE`.`eventname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21 16:59:15
