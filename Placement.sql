-- MySQL dump 10.13  Distrib 5.7.11, for Linux (x86_64)
--
-- Host: localhost    Database: Admin
-- ------------------------------------------------------
-- Server version	5.7.11-0ubuntu6

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
-- Table structure for table `Applied`
--

DROP TABLE IF EXISTS `Applied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Applied` (
  `JobID` int(11) NOT NULL,
  `RollNo` char(9) NOT NULL,
  PRIMARY KEY (`JobID`,`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applied`
--

LOCK TABLES `Applied` WRITE;
/*!40000 ALTER TABLE `Applied` DISABLE KEYS */;
/*!40000 ALTER TABLE `Applied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CompanyUsers`
--

DROP TABLE IF EXISTS `CompanyUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyUsers` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompanyUsers`
--

LOCK TABLES `CompanyUsers` WRITE;
/*!40000 ALTER TABLE `CompanyUsers` DISABLE KEYS */;
INSERT INTO `CompanyUsers` VALUES ('1','sssss123*'),('2','bat75^'),('3','mat&239'),('4','hat10&rat'),('5','cat55'),('6','fat0909'),('7','oat7575'),('8','pat44'),('9','sat*123');
/*!40000 ALTER TABLE `CompanyUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Offers`
--

DROP TABLE IF EXISTS `Offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Offers` (
  `JobID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `Status` char(1) DEFAULT 'P',
  PRIMARY KEY (`JobID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Offers`
--

LOCK TABLES `Offers` WRITE;
/*!40000 ALTER TABLE `Offers` DISABLE KEYS */;
INSERT INTO `Offers` VALUES (1,1,'C'),(2,1,'O'),(3,1,'A'),(4,7,'A'),(5,2,'O'),(6,3,'O'),(7,6,'C'),(8,7,'R'),(9,5,'C'),(10,7,'A'),(11,2,'A'),(12,4,'O'),(13,2,'A'),(14,1,'P'),(15,4,'P'),(16,9,'C'),(17,1,'O'),(18,8,'O');
/*!40000 ALTER TABLE `Offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Placed`
--

DROP TABLE IF EXISTS `Placed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Placed` (
  `JobID` int(11) NOT NULL,
  `RollNo` char(9) NOT NULL,
  PRIMARY KEY (`JobID`,`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Placed`
--

LOCK TABLES `Placed` WRITE;
/*!40000 ALTER TABLE `Placed` DISABLE KEYS */;
/*!40000 ALTER TABLE `Placed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academic_details`
--

DROP TABLE IF EXISTS `academic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_details` (
  `roll_no` char(9) NOT NULL,
  `class_10` float DEFAULT NULL,
  `yop_10` date DEFAULT NULL,
  `class_12` float DEFAULT NULL,
  `yop_12` date DEFAULT NULL,
  `gpa` float DEFAULT NULL,
  PRIMARY KEY (`roll_no`),
  CONSTRAINT `academic_details_ibfk_1` FOREIGN KEY (`roll_no`) REFERENCES `student_details` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_details`
--

LOCK TABLES `academic_details` WRITE;
/*!40000 ALTER TABLE `academic_details` DISABLE KEYS */;
INSERT INTO `academic_details` VALUES ('ced15i003',92,'2013-05-12',94.3,'2015-05-12',8.8),('ced15i004',95,'2013-05-12',91.2,'2015-05-12',7.1),('ced15i005',95,'2013-05-12',94,'2015-05-12',8.5),('ced15i010',95,'2013-05-12',97,'2015-05-12',7),('ced15i011',95,'2013-05-12',97.2,'2015-05-12',7.3),('ced15i012',94.2,'2013-05-12',98.4,'2015-05-10',7.5),('ced15i013',89.2,'2013-05-12',93.4,'2015-05-10',8.1),('ced15i018',95,'2013-05-12',98.2,'2015-05-12',7.35),('ced15i019',95,'2013-05-12',98.2,'2015-05-12',7.48),('ced15i038',78,'2013-05-12',83.2,'2015-05-12',6.88),('ced15i039',95,'2013-05-12',93.2,'2015-05-12',8.58),('ced15i040',95,'2013-05-12',93.2,'2015-05-12',8.92),('mdm15b021',95,'2013-05-12',78,'2015-05-12',8.12),('mfd15i008',95,'2013-05-12',98,'2015-05-12',8.22),('mfd15i010',95,'2013-05-12',92,'2015-05-12',8.62);
/*!40000 ALTER TABLE `academic_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_details`
--

DROP TABLE IF EXISTS `company_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_details` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `company_email` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_details`
--

LOCK TABLES `company_details` WRITE;
/*!40000 ALTER TABLE `company_details` DISABLE KEYS */;
INSERT INTO `company_details` VALUES (1,'google','google123@gmail.com','A 42,plaza,parel,Mumbai','software company'),(2,'Intel','Intel@gmail.com','A 21,Hitechcity,Bengaluru','hardware'),(3,'BHEL','bhel@gmail.com','A 2,gindi,chennai','electrical'),(4,'hyndai','hyndai@gmail.com','A 32,Chennai,Tamil Nadu','automobiles,mechanical'),(5,'Surya Groups','surya@gmail.com','A 5,kolkata,West Bengal','electrical'),(6,'ECIL','ecil@gmail.com','A 5,gachiboli,hyderabad','electrical'),(7,'microsoft','microsoft@gmail.com','A 17,kormangala,Bengaluru','computer software,personal computers '),(8,'CISCO','cisco@gmail.com','B 5,madhapur,Andhra Pradesh','networking hardware '),(9,'Mahindra','mahindra@gmail.com','D 5,,Andhra Pradesh','mechanical '),(10,'Apple','apple@gmail.com','D 15,Hitechcity,Telangana','consumer electronic ,computer software ');
/*!40000 ALTER TABLE `company_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_details` (
  `company_id` int(11) NOT NULL,
  `contact_name` varchar(20) DEFAULT NULL,
  `contact_number` char(10) DEFAULT NULL,
  `contact_email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_details`
--

LOCK TABLES `contact_details` WRITE;
/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
INSERT INTO `contact_details` VALUES (1,'Rajat Kunj','9999234918','rajat@yahoo.co.in'),(2,'Keerti khanna','9999234945','keerti@yahoo.co.in'),(3,'Riya Sen','9999237945','riya@gmail.co.in'),(4,'roshan bhat','9939237945','roshan@gmail.com'),(5,'Suraj Sharma','9939237345','suraj@gmail.com'),(6,'Parul Verma','9939232345','parul@gmail.com'),(7,'Anaya Prakash','8939232345','ana@gmail.com'),(8,'Vipul Rakesh','8931232345','vipul@gmail.com'),(9,'Sonal Shah','8931232345','sonal@yahoo.com'),(10,'Karthik Kapur','8931032345','karthik@yahoo.com');
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eligible_departments`
--

DROP TABLE IF EXISTS `eligible_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eligible_departments` (
  `job_id` int(11) NOT NULL,
  `department` char(3) NOT NULL,
  PRIMARY KEY (`job_id`,`department`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eligible_departments`
--

LOCK TABLES `eligible_departments` WRITE;
/*!40000 ALTER TABLE `eligible_departments` DISABLE KEYS */;
INSERT INTO `eligible_departments` VALUES (1,'CED'),(1,'COE'),(2,'CED'),(2,'COE'),(3,'CED'),(3,'COE'),(4,'CED'),(5,'CED'),(5,'COE'),(5,'EDS'),(6,'EDS'),(6,'EVD'),(7,'EVD'),(8,'COE'),(9,'EDS'),(10,'CED'),(11,'EDS'),(12,'MDM'),(12,'MDS'),(13,'CED'),(14,'COE'),(15,'MDM'),(16,'CDS'),(17,'CDS'),(17,'CED');
/*!40000 ALTER TABLE `eligible_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradecard_bt`
--

DROP TABLE IF EXISTS `gradecard_bt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradecard_bt` (
  `rollno` char(9) NOT NULL,
  `sem1` float DEFAULT NULL,
  `sem2` float DEFAULT NULL,
  `sem3` float DEFAULT NULL,
  `sem4` float DEFAULT NULL,
  `sem5` float DEFAULT NULL,
  `sem6` float DEFAULT NULL,
  `sem7` float DEFAULT NULL,
  `sem8` float DEFAULT NULL,
  PRIMARY KEY (`rollno`),
  CONSTRAINT `gradecard_bt_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student_details` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradecard_bt`
--

LOCK TABLES `gradecard_bt` WRITE;
/*!40000 ALTER TABLE `gradecard_bt` DISABLE KEYS */;
/*!40000 ALTER TABLE `gradecard_bt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradecard_dd`
--

DROP TABLE IF EXISTS `gradecard_dd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradecard_dd` (
  `rollno` char(9) NOT NULL,
  `sem1` float DEFAULT NULL,
  `sem2` float DEFAULT NULL,
  `sem3` float DEFAULT NULL,
  `sem4` float DEFAULT NULL,
  `sem5` float DEFAULT NULL,
  `sem6` float DEFAULT NULL,
  `sem7` float DEFAULT NULL,
  `sem8` float DEFAULT NULL,
  `sem9` float DEFAULT NULL,
  `sem10` float DEFAULT NULL,
  PRIMARY KEY (`rollno`),
  CONSTRAINT `gradecard_dd_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student_details` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradecard_dd`
--

LOCK TABLES `gradecard_dd` WRITE;
/*!40000 ALTER TABLE `gradecard_dd` DISABLE KEYS */;
/*!40000 ALTER TABLE `gradecard_dd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradecard_pg`
--

DROP TABLE IF EXISTS `gradecard_pg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradecard_pg` (
  `roll` char(9) NOT NULL,
  `sem1` float DEFAULT NULL,
  `sem2` float DEFAULT NULL,
  `sem3` float DEFAULT NULL,
  `sem4` float DEFAULT NULL,
  PRIMARY KEY (`roll`),
  CONSTRAINT `gradecard_pg_ibfk_1` FOREIGN KEY (`roll`) REFERENCES `student_details` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradecard_pg`
--

LOCK TABLES `gradecard_pg` WRITE;
/*!40000 ALTER TABLE `gradecard_pg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gradecard_pg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hiring_details`
--

DROP TABLE IF EXISTS `hiring_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hiring_details` (
  `job_id` int(11) NOT NULL,
  `time` char(9) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `on_campus` char(1) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hiring_details`
--

LOCK TABLES `hiring_details` WRITE;
/*!40000 ALTER TABLE `hiring_details` DISABLE KEYS */;
INSERT INTO `hiring_details` VALUES (1,'09:30:00','2017-12-03','Y'),(2,'10:15:00','2017-07-06','N'),(3,'10:36:00','2017-07-06','Y'),(4,'10:36:00','2017-05-06','Y'),(5,'13:OO:00','2017-05-06','N'),(6,'13:45:00','2017-08-06','N'),(7,'13:45:00','2017-08-06','N'),(8,'13:45:00','2017-08-16','Y'),(9,'09:45:00','2017-08-16','Y'),(10,'09:00:00','2017-08-01','N'),(11,'09:30:00','2017-08-13','N'),(12,'09:50:00','2017-09-13','Y'),(13,'09:50:00','2017-09-13','Y'),(14,'11:00:00','2017-09-13','Y'),(15,'08:00:00','2017-09-11','N'),(16,'08:30:00','2017-09-11','N'),(17,'08:40:00','2017-09-11','Y'),(18,'08:00:00','2017-09-19','Y'),(19,'09:00:00','2017-09-18','N');
/*!40000 ALTER TABLE `hiring_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_profiles`
--

DROP TABLE IF EXISTS `job_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_profiles` (
  `job_id` int(11) NOT NULL,
  `job_type` varchar(20) DEFAULT NULL,
  `cost_to_company` int(11) DEFAULT NULL,
  `designation` varchar(15) DEFAULT NULL,
  `location` char(50) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_profiles`
--

LOCK TABLES `job_profiles` WRITE;
/*!40000 ALTER TABLE `job_profiles` DISABLE KEYS */;
INSERT INTO `job_profiles` VALUES (1,'internship',23220,' engineer','A 42,plaza,parel,Mumbai'),(2,'full time',23280,'generalmanager','A 42,plaza,parel,Mumbai'),(3,'full time',234800,'manager','A 42,plaza,parel,Mumbai'),(4,'full time',79970,' engineer','A 17,koramangala,Bengaluru'),(5,'internship ',59000,'designer','A 21,hitechcity,bengaluru'),(6,'internship ',59000,'designer','A 21,A 2,gindi,chennai'),(7,'full time ',899070,'manager','A 5,gachiboli,hyderabad'),(8,'internship',99070,' engineer','A 17,koramangala,Bengaluru'),(9,'full time ',799070,'designer','A 5,kolkata,West Bengal'),(10,'full time',99970,'generalmanager','A 17,koramangala,Bengaluru'),(11,'full time ',522990,'manager','A 21,hitechcity,bengaluru'),(12,'internship ',59700,'generalmanager','A 32,chennai,Tamil Nadu'),(13,'full time ',422990,'generalmanager','A 21,hitechcity,bengaluru'),(14,'intership',434990,'engineer','A 42,plaza,parel,Mumbai'),(15,'full time ',570700,'engineer','A 32,chennai,Tamil Nadu'),(16,'full time',79970,'designer','D 5,Andhra Pradesh'),(17,'full time ',422990,'manager','A 42,plaza,parel,Mumbai'),(18,'full time',59970,'generalmanager','B 5,madhapur,Andhra Pradesh');
/*!40000 ALTER TABLE `job_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_details` (
  `rollno` char(9) NOT NULL,
  `deptt` char(3) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `contact` char(10) DEFAULT NULL,
  `category` char(3) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `skills` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rollno`),
  CONSTRAINT `student_details_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student_users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES ('ced15i003','CED','F','Chennai','9121821393','GEN','1997-10-02','Verilog','Arti'),('ced15i004','CED','F','Chennai','9331821393','OBC','1997-09-12','Java','Roshni'),('ced15i005','CED','M','Chennai','9331821383','OBC','1997-04-15','Java','Pranay'),('ced15i010','CED','F','Hyderabad','9331823383','OBC','1997-08-10','Java,C++','Krithi'),('ced15i011','CED','M','Kozhikode','9111821393','OBC','1997-10-16','MongoDB','Raju'),('ced15i012','CED','M','Hyderabad','9500094427','GEN','1997-10-12','C,C++','Sanju'),('ced15i013','CED','M','Chennai','9500094537','GEN','1997-04-13','Golang,HTML,CSS','Raman'),('ced15i018','CED','M','Hyderabad','9332323383','GEN','1997-08-18','Java,C++','Mohan'),('ced15i019','CED','F','Hyderabad','9332320083','GEN','1997-06-18','Python,C++','Indu'),('ced15i038','CED','F','Nepal','9222320083','DAS','1997-05-27','Python,C++','Manasa'),('ced15i039','CED','F','Kozhikode','9222320073','GEN','1997-05-23','C,C++','Riya'),('ced15i040','CED','F','Chennai','9112320073','GEN','1997-02-20','C,C++','Ruhi'),('mdm15b021','MDM','M','Patna','9110320073','GEN','1997-02-20','C,CAD','Jai'),('mfd15i008','MFD','M','Hyderabad','9000320073','GEN','1996-04-20','C,CAD','Viraj'),('mfd15i010','MFD','F','Hyderabad','9010320073','GEN','1996-03-11','C,CAD','Rimjhim');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_users`
--

DROP TABLE IF EXISTS `student_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_users` (
  `username` char(9) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_users`
--

LOCK TABLES `student_users` WRITE;
/*!40000 ALTER TABLE `student_users` DISABLE KEYS */;
INSERT INTO `student_users` VALUES ('ced15i003','toothless'),('ced15i004','laxmi'),('ced15i005','dingdingmofo'),('ced15i010','dstroy111*'),('ced15i011','fajark16'),('ced15i012','rohitP12*'),('ced15i013','sharababy123#'),('ced15i018','sachin123'),('ced15i019','gowtham123'),('ced15i038','mohitag95*'),('ced15i039','dingu256#'),('ced15i040','vani56#'),('mdm15b021','iqbal123#'),('mfd15i008','ichigo'),('mfd15i010','canis');
/*!40000 ALTER TABLE `student_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-01 10:52:22
