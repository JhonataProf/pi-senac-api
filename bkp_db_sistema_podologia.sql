-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_podologia
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendamento` (
  `id` int NOT NULL,
  `id_paciente` int DEFAULT NULL,
  `id_podologo` int DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `situacao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_podologo` (`id_podologo`),
  CONSTRAINT `agendamento_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `cadastro_pacientes` (`id_paciente`),
  CONSTRAINT `agendamento_ibfk_2` FOREIGN KEY (`id_podologo`) REFERENCES `cadastro_podologos` (`id_podologo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamento`
--

LOCK TABLES `agendamento` WRITE;
/*!40000 ALTER TABLE `agendamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `agendamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_pacientes`
--

DROP TABLE IF EXISTS `cadastro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_pacientes` (
  `id_paciente` int NOT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_pacientes`
--

LOCK TABLES `cadastro_pacientes` WRITE;
/*!40000 ALTER TABLE `cadastro_pacientes` DISABLE KEYS */;
INSERT INTO `cadastro_pacientes` VALUES (1,'Natalie Rodgers','885.360.307-36','erat.vel@yahoo.com','12751222317','1999-03-23','Masculino','Ap #216-6296 Nunc Road'),(2,'Gary Tanner','174.676.174-84','sodales.mauris@yahoo.com','67243018387','1999-11-14','Masculino','P.O. Box 493, 5469 Risus. Rd.'),(3,'Xantha Page','305.946.458-54','cras.eu@outlook.com','53856832351','1982-06-12','Feminino','Ap #438-1917 Et St.'),(4,'McKenzie Hurley','272.116.020-46','elit@hotmail.com','37883426988','2015-06-02','Masculino','Ap #406-6450 Pellentesque, St.'),(5,'Zachery Summers','675.887.616-44','non.vestibulum@yahoo.com','78908306783','1976-12-26','Feminino','269 Ante, Avenue'),(6,'Melinda Woodward','598.958.869-81','etiam.imperdiet@icloud.com','62228306731','1998-09-11','Feminino','839-1340 Pede. Rd.'),(7,'Veda Walton','052.121.718-61','mollis.duis.sit@yahoo.com','48616903383','1988-08-10','Masculino','Ap #863-4140 A Road'),(8,'Dacey Hancock','433.637.254-94','ipsum.cursus@hotmail.com','54540066663','2011-02-23','Masculino','5861 Nulla Avenue'),(9,'Willa Velasquez','202.502.895-74','donec.vitae.erat@hotmail.com','75742167576','1995-01-25','Masculino','Ap #174-8502 Eu, Rd.'),(10,'Channing Mccullough','173.721.946-45','nostra.per@icloud.com','95849445779','2013-02-02','Feminino','4008 Tristique Av.'),(11,'Victoria Cash','572.835.266-73','donec.est.nunc@outlook.com','97601151627','1990-12-15','Feminino','382-7833 Aenean Street'),(12,'Declan Manning','364.638.658-29','sem@icloud.com','69535146518','1988-10-30','Feminino','Ap #679-3774 Semper St.'),(13,'Trevor Romero','461.311.452-97','ornare.in@hotmail.com','51853112600','2003-11-28','Feminino','634-5128 Fusce Ave'),(14,'Brendan Mitchell','574.372.854-74','non.enim.commodo@yahoo.com','40273722111','1976-01-01','Feminino','607-5977 Habitant Street'),(15,'Rudyard Sawyer','137.163.610-78','integer.vulputate@icloud.com','51797110811','1993-10-18','Feminino','Ap #880-8345 Non Road'),(16,'Fritz Page','466.712.186-41','amet.risus.donec@outlook.com','34285927621','2000-01-13','Feminino','Ap #209-6946 Imperdiet, Rd.'),(17,'Rebecca Ayala','416.355.719-23','cursus.non@google.com','28556182344','1980-10-22','Masculino','924-9714 Diam Ave'),(18,'Jonah Vargas','648.631.621-70','mi@icloud.com','64616878645','2004-02-22','Feminino','Ap #817-7173 Venenatis St.'),(19,'Oleg Meyers','116.512.564-60','mauris@outlook.com','36516873115','1995-10-02','Feminino','P.O. Box 342, 6342 Vitae Ave'),(20,'Graham Pena','631.167.067-36','risus.in@yahoo.com','11375145565','1998-06-07','Feminino','1706 Iaculis Rd.'),(21,'Elliott Glenn','786.165.242-69','dolor.quisque@google.com','39416667863','2006-12-16','Masculino','Ap #428-5403 Nec Avenue'),(22,'Teegan Mcdowell','108.511.366-04','vestibulum.massa.rutrum@yahoo.com','06615766574','2011-07-22','Masculino','192-6355 Tristique Rd.'),(23,'Duncan Vinson','406.356.426-80','aliquam.iaculis@icloud.com','22874354418','1979-01-19','Masculino','5745 Euismod Rd.'),(24,'Charde Zimmerman','163.922.636-46','class@hotmail.com','26988648344','2018-05-28','Masculino','1333 Sed St.'),(25,'Yoko Ochoa','983.754.961-18','mauris.vel.turpis@hotmail.com','55452128142','2013-02-05','Feminino','5772 Scelerisque Av.'),(26,'Aspen Beach','877.158.801-68','rhoncus.donec.est@yahoo.com','56547187048','1993-10-13','Feminino','9153 Dui. Av.'),(27,'Lara Day','465.918.622-84','eros.nam@hotmail.com','14844927802','1979-06-23','Feminino','957-1701 Arcu Rd.'),(28,'Claire Roy','804.558.242-14','nulla.integer@yahoo.com','53045981918','2017-02-18','Masculino','P.O. Box 335, 3595 Feugiat Rd.'),(29,'Gabriel Molina','405.585.038-41','malesuada.ut@icloud.com','76442975588','2004-11-01','Masculino','P.O. Box 494, 8854 Tempor Street'),(30,'Julie Lane','510.351.813-48','in.consequat.enim@yahoo.com','28159510113','2011-10-21','Masculino','Ap #114-6618 Praesent Rd.'),(31,'Zephania Maldonado','378.014.873-51','nullam.enim.sed@outlook.com','34378542585','1988-12-20','Masculino','Ap #987-7104 Libero St.'),(32,'Ferdinand Navarro','601.881.323-55','semper@outlook.com','97026418324','2013-02-14','Feminino','988-4811 Nam Ave'),(33,'Macaulay Ferrell','724.809.705-17','cursus@hotmail.com','63625531551','1979-12-13','Feminino','Ap #248-5829 Enim. Rd.'),(34,'Deanna Bishop','576.674.370-47','tellus.phasellus@hotmail.com','37882623744','2003-02-02','Masculino','Ap #979-5875 Vulputate Street'),(35,'Jared Bolton','867.431.255-44','pede.sagittis.augue@outlook.com','68751481000','2008-05-06','Feminino','312-3579 Nibh Rd.'),(36,'Vivien Wood','836.216.633-13','pellentesque.habitant@yahoo.com','17854873918','2001-12-24','Masculino','4853 Fusce St.'),(37,'Kadeem Blackwell','184.911.371-78','arcu.ac@google.com','36887566676','2009-08-04','Masculino','Ap #326-3377 Purus. Street'),(38,'Richard Hebert','261.065.327-06','phasellus.in@yahoo.com','98825165501','1978-09-16','Feminino','2424 Fusce Rd.'),(39,'Donna Hickman','806.771.641-61','dui.fusce@google.com','53604967038','1989-08-31','Masculino','6278 Nulla Street'),(40,'Dai Guerra','454.217.671-02','sed.molestie.sed@yahoo.com','79989968585','1992-07-31','Feminino','861-7122 Donec Rd.'),(41,'Althea Warren','812.120.657-15','eget.odio.aliquam@yahoo.com','08915290646','2012-06-26','Masculino','P.O. Box 967, 2670 Ac St.'),(42,'Zephr Osborn','576.463.613-10','sed.nunc.est@yahoo.com','34247388456','1998-02-15','Masculino','Ap #459-9516 Dui. Street'),(43,'Brendan Velasquez','246.137.038-75','nulla.at.sem@google.com','08351318337','1991-12-10','Feminino','393-7045 Mauris. St.'),(44,'Palmer Parsons','741.060.814-49','magna.et.ipsum@hotmail.com','13716671555','1987-11-03','Feminino','377-1321 Pede, Av.'),(45,'Quinn Riggs','523.724.423-12','arcu@hotmail.com','64771184084','2004-10-28','Masculino','P.O. Box 133, 4787 Elit Avenue'),(46,'Zahir Delaney','184.221.057-87','nunc.interdum@outlook.com','42778982975','1979-06-29','Masculino','Ap #470-7554 Cubilia Ave'),(47,'Camden James','861.352.863-54','vivamus.nisi@yahoo.com','11855564619','1994-09-03','Feminino','309-4331 Eleifend, Rd.'),(48,'Avram Bates','632.686.557-86','dictum@google.com','91812147412','2002-02-11','Masculino','962-1543 Et Rd.'),(49,'Alma Sutton','438.785.255-52','tincidunt@hotmail.com','95024625532','1985-01-21','Feminino','309-3481 Quisque Ave'),(50,'Troy Hendrix','687.471.794-43','sed.dolor.fusce@outlook.com','06635601879','1996-12-01','Feminino','942-3960 Vivamus Rd.'),(51,'Roary Sims','731.795.435-05','luctus@icloud.com','16862248646','1998-05-08','Feminino','Ap #698-945 Interdum St.'),(52,'Kerry Montgomery','870.158.703-26','enim.nec.tempus@yahoo.com','01506556598','1998-08-08','Masculino','P.O. Box 639, 4730 Risus. St.'),(53,'Cadman Hensley','783.268.428-11','fermentum.arcu@google.com','76165687457','2007-09-11','Masculino','Ap #257-795 Nisi Av.'),(54,'Brielle Perry','183.826.648-60','mi.pede@hotmail.com','77453274750','2014-05-31','Feminino','P.O. Box 800, 1784 Nibh. Rd.'),(55,'Dalton Bird','871.878.539-25','blandit.viverra@yahoo.com','26512323617','1987-06-27','Feminino','3696 Ultricies Rd.'),(56,'Catherine Callahan','766.586.317-16','aliquet.phasellus.fermentum@hotmail.com','49575966382','1981-08-10','Masculino','621-2866 Sapien Rd.'),(57,'Garrison Henry','310.562.137-80','massa@icloud.com','67293484541','1989-08-15','Feminino','262-1283 Eu, Av.'),(58,'Sebastian Hickman','173.033.887-48','phasellus.elit.pede@hotmail.com','32445481372','2012-07-07','Masculino','Ap #269-1304 Ornare. Street'),(59,'Alika Chase','810.422.423-15','class.aptent@hotmail.com','57374724437','1986-09-05','Masculino','743-414 Eu Avenue'),(60,'Abraham Boyd','466.747.196-28','a.odio@yahoo.com','69283648666','2016-08-27','Feminino','Ap #104-4295 Sem St.'),(61,'Uta Moore','758.201.280-77','vestibulum.accumsan@google.com','46831366662','1980-01-21','Masculino','399-9511 Pellentesque, St.'),(62,'Adara Campos','804.129.227-92','tincidunt.dui.augue@hotmail.com','64748184251','1989-08-26','Masculino','730-9202 Libero St.'),(63,'Arden Gates','678.346.735-86','ante.bibendum@yahoo.com','49541155261','1987-02-01','Feminino','Ap #489-960 Id, Avenue'),(64,'Basil Lang','813.227.774-86','arcu@google.com','69450921696','1981-12-13','Feminino','Ap #611-4936 Auctor Avenue'),(65,'Ursula Perry','649.650.191-24','nisi.a.odio@google.com','27338338586','1997-07-02','Masculino','Ap #400-3870 Feugiat Avenue'),(66,'Yolanda Sherman','071.437.710-09','eget.massa@outlook.com','26088676444','2008-12-13','Masculino','3284 Phasellus Ave'),(67,'Mia Noel','508.780.536-36','risus.varius@outlook.com','03320792136','2018-03-10','Masculino','P.O. Box 472, 5722 Egestas Rd.'),(68,'Jackson Peterson','297.331.438-27','feugiat.metus@yahoo.com','05787492848','2010-02-24','Masculino','350-7413 Proin St.'),(69,'Vernon Barrera','624.773.618-68','leo@icloud.com','87582444853','1983-01-08','Feminino','984-2679 Phasellus St.'),(70,'Hu Callahan','130.241.449-33','ipsum.donec.sollicitudin@hotmail.com','35644341230','2015-12-31','Masculino','Ap #821-5846 Morbi Avenue'),(71,'Samantha Knight','948.309.064-53','erat.in.consectetuer@outlook.com','19609336982','2000-11-06','Feminino','5071 Phasellus St.'),(72,'Wade Marks','576.973.697-42','diam.luctus@yahoo.com','37238365482','2000-04-04','Masculino','937-5433 Nunc Avenue'),(73,'Flynn Raymond','452.286.224-55','urna@google.com','57836019027','1976-02-24','Masculino','3322 Nisl. Road'),(74,'Daria Hart','663.013.842-38','in@google.com','08131739506','1991-07-26','Masculino','627-1487 Nunc Ave'),(75,'Josiah Perkins','784.186.213-67','libero.est@hotmail.com','41247333173','2009-07-05','Masculino','P.O. Box 233, 6977 Nulla St.'),(76,'Evangeline Mason','385.920.647-93','odio.aliquam@yahoo.com','17651824727','2002-05-07','Masculino','P.O. Box 459, 2719 Fames St.'),(77,'Mikayla Camacho','627.981.630-72','dui.cum.sociis@google.com','20444946001','2010-11-07','Masculino','Ap #926-2937 Vestibulum Rd.'),(78,'Hanna Petersen','632.765.926-77','nec.malesuada.ut@hotmail.com','15948437621','2018-06-18','Feminino','P.O. Box 259, 682 Quisque Ave'),(79,'Lael Lucas','458.262.787-68','quis.diam@icloud.com','18846338046','2002-12-22','Masculino','342 Dignissim Street'),(80,'Evelyn Golden','767.350.644-95','eros.non@icloud.com','96605153855','2018-11-03','Masculino','771-8231 Nunc St.'),(81,'Amaya Guerra','593.832.351-66','erat.vitae@yahoo.com','57418589552','2007-06-17','Masculino','Ap #591-6410 Et Avenue'),(82,'Jane Martinez','762.443.829-44','nunc@google.com','11416695062','2003-11-13','Masculino','Ap #802-9691 Elit Ave'),(83,'Jackson Griffin','536.255.616-43','libero.integer.in@yahoo.com','59374110333','2007-10-25','Masculino','P.O. Box 997, 4110 Ullamcorper. St.'),(84,'Deacon Gallegos','220.526.703-60','curabitur.ut@icloud.com','36642431427','2018-05-23','Masculino','P.O. Box 282, 7593 Ac, St.'),(85,'Ira Patterson','083.442.575-29','id.ante@hotmail.com','15263878338','2014-12-21','Feminino','Ap #784-7503 Semper Avenue'),(86,'Ivan Parks','335.428.648-47','semper.cursus@yahoo.com','51851743110','1996-06-17','Masculino','922-2883 Quis St.'),(87,'Ralph Kerr','483.377.668-39','eleifend.cras@google.com','34763356572','1996-01-16','Feminino','Ap #160-2238 Elementum Rd.'),(88,'Uriah Ortega','125.657.402-44','tellus.non@icloud.com','81409533923','1985-10-08','Masculino','788-7219 Ipsum Ave'),(89,'Grady Bonner','974.838.372-53','lectus.pede@icloud.com','10953257616','2013-04-16','Masculino','8848 At St.'),(90,'McKenzie Osborne','762.538.785-89','cursus.et@icloud.com','76183432174','2013-08-28','Masculino','P.O. Box 914, 5965 Posuere Street'),(91,'Candace Coleman','863.686.385-03','eget.tincidunt@hotmail.com','85786146878','2006-06-15','Feminino','806-6142 Elit. Rd.'),(92,'Violet Hickman','780.914.739-12','nunc.sed@outlook.com','58553679215','1995-12-11','Masculino','951-6861 Mattis Avenue'),(93,'Dominic Floyd','058.723.174-38','cursus.purus@google.com','56739666364','2007-05-29','Feminino','201-8263 Vestibulum St.'),(94,'Kellie Morin','785.342.124-76','non@hotmail.com','59541481515','2010-02-18','Feminino','162-317 Nec, Ave'),(95,'Jordan Lyons','187.221.437-47','dictum@yahoo.com','76244816532','1978-12-31','Feminino','185-1970 Pede. Road'),(96,'Gage Beck','746.194.816-51','maecenas.mi@outlook.com','82846987173','2007-04-07','Masculino','4341 Aenean Av.'),(97,'Kiayada Gamble','674.548.065-66','ac@yahoo.com','50774889419','1987-01-06','Masculino','595-5818 Lectus Ave'),(98,'Leah Vincent','943.158.165-34','id@hotmail.com','75759461571','1989-08-16','Feminino','7703 Ligula. St.'),(99,'Zeph Heath','173.018.751-75','ut.quam@icloud.com','72593409782','1991-02-19','Masculino','Ap #973-3566 Fames Rd.'),(100,'Arthur Santana','047.224.192-54','a.aliquet@hotmail.com','96492714748','2002-06-13','Masculino','444-9784 Parturient St.');
/*!40000 ALTER TABLE `cadastro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_podologos`
--

DROP TABLE IF EXISTS `cadastro_podologos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_podologos` (
  `id_podologo` int NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_podologo`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `telefone` (`telefone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_podologos`
--

LOCK TABLES `cadastro_podologos` WRITE;
/*!40000 ALTER TABLE `cadastro_podologos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadastro_podologos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_anamnese`
--

DROP TABLE IF EXISTS `ficha_anamnese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ficha_anamnese` (
  `id_ficha` int NOT NULL,
  `id_paciente` int DEFAULT NULL,
  `id_podologo` int DEFAULT NULL,
  `estado_civil` varchar(20) DEFAULT NULL,
  `profissao` varchar(255) DEFAULT NULL,
  `posicao_trabalha` varchar(255) DEFAULT NULL,
  `etilista` int DEFAULT NULL,
  `tabagista` int DEFAULT NULL,
  `tipo_calcado` varchar(255) DEFAULT NULL,
  `tipo_meia` varchar(255) DEFAULT NULL,
  `pratica_esporte` int DEFAULT NULL,
  `habito_alimentar` text,
  `medicamento_continuo` text,
  `estatura` float DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `pressao_arterial` varchar(20) DEFAULT NULL,
  `glicemia` int DEFAULT NULL,
  `tipagem_sanguinea` varchar(5) DEFAULT NULL,
  `doencas_prexistentes` text,
  `tratamento_podologico` text,
  `cirurgia_inferiores` text,
  `possui_alergia` text,
  `gestante` int DEFAULT NULL,
  `lactante` int DEFAULT NULL,
  `amputacoes` text,
  `dor_1a10` int DEFAULT NULL,
  `pinos_marcapasso` varchar(255) DEFAULT NULL,
  `perfusoes_pe` varchar(255) DEFAULT NULL,
  `perfusoes_pd` varchar(255) DEFAULT NULL,
  `digito_pressao_pe` int DEFAULT NULL,
  `digito_pressao_pd` int DEFAULT NULL,
  `formato_unhas_pd` varchar(255) DEFAULT NULL,
  `formato_unhas_pe` varchar(255) DEFAULT NULL,
  `formato_pe_pe` varchar(255) DEFAULT NULL,
  `formato_pe_pd` varchar(255) DEFAULT NULL,
  `teste_monofilamento_pe` varchar(5) DEFAULT NULL,
  `teste_monofilamento_pd` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_ficha`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_podologo` (`id_podologo`),
  CONSTRAINT `ficha_anamnese_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `cadastro_pacientes` (`id_paciente`),
  CONSTRAINT `ficha_anamnese_ibfk_2` FOREIGN KEY (`id_podologo`) REFERENCES `cadastro_podologos` (`id_podologo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_anamnese`
--

LOCK TABLES `ficha_anamnese` WRITE;
/*!40000 ALTER TABLE `ficha_anamnese` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha_anamnese` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-15 20:28:12
