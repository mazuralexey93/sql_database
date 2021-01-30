-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounting_table`
--

DROP TABLE IF EXISTS `accounting_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_table` (
  `is_paid` bit(1) DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `subscription_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  KEY `client_id` (`client_id`),
  KEY `subscription_id` (`subscription_id`),
  CONSTRAINT `accounting_table_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `accounting_table_ibfk_2` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица учета';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_table`
--

LOCK TABLES `accounting_table` WRITE;
/*!40000 ALTER TABLE `accounting_table` DISABLE KEYS */;
INSERT INTO `accounting_table` VALUES ('\0',1,1,'2021-01-22 00:30:46',NULL),('\0',2,2,'2021-01-22 00:30:46',NULL),('\0',3,3,'2021-01-22 00:30:46',NULL),('',4,4,'2021-01-22 00:30:46',NULL),('\0',5,5,'2021-01-22 00:30:46',NULL),('\0',6,6,'2021-01-22 00:30:46',NULL),('\0',7,7,'2021-01-22 00:30:46',NULL),('\0',8,8,'2021-01-22 00:30:46',NULL),('\0',9,9,'2021-01-22 00:30:46',NULL),('',10,10,'2021-01-22 00:30:46',NULL),('\0',11,11,'2021-01-22 00:30:46',NULL),('\0',12,12,'2021-01-22 00:30:46',NULL),('\0',13,13,'2021-01-22 00:30:46',NULL),('\0',14,14,'2021-01-22 00:30:46',NULL),('',15,15,'2021-01-22 00:30:46',NULL),('\0',16,16,'2021-01-22 00:30:46',NULL),('\0',17,17,'2021-01-22 00:30:46',NULL),('\0',18,18,'2021-01-22 00:30:46',NULL),('',19,19,'2021-01-22 00:30:46',NULL),('\0',20,20,'2021-01-22 00:30:46',NULL),('\0',21,21,'2021-01-22 00:30:46',NULL),('\0',22,22,'2021-01-22 00:30:46',NULL),('',23,23,'2021-01-22 00:30:46',NULL),('\0',24,24,'2021-01-22 00:30:46',NULL),('',25,25,'2021-01-22 00:30:46',NULL),('',26,26,'2021-01-22 00:30:46',NULL),('',27,27,'2021-01-22 00:30:46',NULL),('\0',28,28,'2021-01-22 00:30:46',NULL),('',29,29,'2021-01-22 00:30:46',NULL),('\0',30,30,'2021-01-22 00:30:46',NULL),('',31,31,'2021-01-22 00:30:46',NULL),('',32,32,'2021-01-22 00:30:46',NULL),('\0',33,33,'2021-01-22 00:30:46',NULL),('\0',34,34,'2021-01-22 00:30:46',NULL),('\0',35,35,'2021-01-22 00:30:46',NULL),('\0',36,36,'2021-01-22 00:30:46',NULL),('',37,37,'2021-01-22 00:30:46',NULL),('',38,38,'2021-01-22 00:30:46',NULL),('',39,39,'2021-01-22 00:30:46',NULL),('\0',40,40,'2021-01-22 00:30:46',NULL),('\0',41,41,'2021-01-22 00:30:46',NULL),('',42,42,'2021-01-22 00:30:46',NULL),('',43,43,'2021-01-22 00:30:46',NULL),('',44,44,'2021-01-22 00:30:46',NULL),('',45,45,'2021-01-22 00:30:46',NULL),('\0',46,46,'2021-01-22 00:30:46',NULL),('\0',47,47,'2021-01-22 00:30:46',NULL),('\0',48,48,'2021-01-22 00:30:46',NULL),('\0',49,49,'2021-01-22 00:30:46',NULL),('',50,50,'2021-01-22 00:30:46',NULL),('',51,51,'2021-01-22 00:30:46',NULL),('\0',52,52,'2021-01-22 00:30:46',NULL),('',53,53,'2021-01-22 00:30:46',NULL),('',54,54,'2021-01-22 00:30:46',NULL),('',55,55,'2021-01-22 00:30:46',NULL),('',56,56,'2021-01-22 00:30:46',NULL),('',57,57,'2021-01-22 00:30:46',NULL),('',58,58,'2021-01-22 00:30:46',NULL),('',59,59,'2021-01-22 00:30:46',NULL),('',60,60,'2021-01-22 00:30:46',NULL),('',61,61,'2021-01-22 00:30:46',NULL),('\0',62,62,'2021-01-22 00:30:46',NULL),('\0',63,63,'2021-01-22 00:30:46',NULL),('',64,64,'2021-01-22 00:30:46',NULL),('\0',65,65,'2021-01-22 00:30:46',NULL),('',66,66,'2021-01-22 00:30:46',NULL),('',67,67,'2021-01-22 00:30:46',NULL),('',68,68,'2021-01-22 00:30:46',NULL),('',69,69,'2021-01-22 00:30:46',NULL),('\0',70,70,'2021-01-22 00:30:46',NULL),('\0',71,71,'2021-01-22 00:30:46',NULL),('',72,72,'2021-01-22 00:30:46',NULL),('',73,73,'2021-01-22 00:30:46',NULL),('\0',74,74,'2021-01-22 00:30:46',NULL),('\0',75,75,'2021-01-22 00:30:46',NULL),('',76,76,'2021-01-22 00:30:46',NULL),('',77,77,'2021-01-22 00:30:46',NULL),('\0',78,78,'2021-01-22 00:30:46',NULL),('\0',79,79,'2021-01-22 00:30:46',NULL),('\0',80,80,'2021-01-22 00:30:46',NULL),('\0',81,81,'2021-01-22 00:30:46',NULL),('',82,82,'2021-01-22 00:30:46',NULL),('',83,83,'2021-01-22 00:30:46',NULL),('',84,84,'2021-01-22 00:30:46',NULL),('',85,85,'2021-01-22 00:30:46',NULL),('\0',86,86,'2021-01-22 00:30:46',NULL),('\0',87,87,'2021-01-22 00:30:46',NULL),('\0',88,88,'2021-01-22 00:30:46',NULL),('',89,89,'2021-01-22 00:30:46',NULL),('',90,90,'2021-01-22 00:30:46',NULL),('\0',91,91,'2021-01-22 00:30:46',NULL),('',92,92,'2021-01-22 00:30:46',NULL),('',93,93,'2021-01-22 00:30:46',NULL),('',94,94,'2021-01-22 00:30:46',NULL),('',95,95,'2021-01-22 00:30:46',NULL),('\0',96,96,'2021-01-22 00:30:46',NULL),('',97,97,'2021-01-22 00:30:46',NULL),('',98,98,'2021-01-22 00:30:46',NULL),('',99,99,'2021-01-22 00:30:46',NULL),('',100,100,'2021-01-22 00:30:46',NULL);
/*!40000 ALTER TABLE `accounting_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_achievement` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_id` bigint(20) unsigned NOT NULL,
  `trainer_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `trainer_id` (`trainer_id`),
  KEY `club_id` (`club_id`),
  KEY `idx_achievement` (`name_achievement`,`client_id`),
  CONSTRAINT `achievements_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `achievements_ibfk_2` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`),
  CONSTRAINT `achievements_ibfk_3` FOREIGN KEY (`club_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Достижения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,'quo','Molestiae ratione corrupti corrupti reiciendis deserunt. Atque consequuntur numquam et vel omnis. Illum nisi praesentium quisquam repellendus.',1,1,1,'2021-01-22 00:31:32',NULL),(2,'rerum','Qui voluptatibus occaecati at praesentium velit qui aut. Libero qui possimus eum nesciunt perspiciatis sed. Dolorem odio qui et sed.',2,2,2,'2021-01-22 00:31:32',NULL),(3,'consectetur','Nobis recusandae aut neque aliquam qui architecto dolorem dicta. Nesciunt non quia dolores. Sunt quibusdam iure magnam alias voluptatibus necessitatibus quia magni.',3,3,3,'2021-01-22 00:31:32',NULL),(4,'quos','Nulla perspiciatis quia autem quam. Tempore porro alias vero sit quis est cum adipisci. Voluptatum iusto quia nemo repellat.',4,4,4,'2021-01-22 00:31:32',NULL),(5,'perspiciatis','Incidunt dignissimos quam quisquam reprehenderit. Rerum quisquam ut molestiae suscipit occaecati. Minima laudantium magnam unde veniam inventore.',5,5,5,'2021-01-22 00:31:32',NULL),(6,'praesentium','Voluptas nisi aut saepe perferendis non est. Voluptas optio blanditiis explicabo quod eaque laborum. Eius assumenda qui itaque earum dolore soluta qui eaque.',6,6,6,'2021-01-22 00:31:32',NULL),(7,'veniam','Molestiae ratione voluptatem ea suscipit. Placeat consequatur minima dignissimos porro cum commodi molestiae.',7,7,7,'2021-01-22 00:31:32',NULL),(8,'explicabo','Veritatis beatae earum optio adipisci non. Aperiam molestiae et atque consectetur. Quod quaerat ut unde assumenda ratione laborum omnis. Et in consequuntur mollitia id accusantium vero. Dolorem quia hic enim distinctio.',8,8,8,'2021-01-22 00:31:32',NULL),(9,'ducimus','Voluptatem id alias doloribus in eum alias quia. Non et quibusdam adipisci quis est numquam. Dolorem quaerat autem consequatur tenetur. Quidem at nobis eos eum.',9,9,9,'2021-01-22 00:31:32',NULL),(10,'eos','Voluptate dolorum delectus nesciunt quas dolore. Facere eum eligendi nostrum nihil. Dolorem eaque consequatur porro possimus. In in nihil quisquam molestiae distinctio sit.',10,10,10,'2021-01-22 00:31:32',NULL),(11,'aspernatur','Eaque eveniet accusantium est. Voluptatum dolore aliquid aut consequatur temporibus fugiat corporis. Ut impedit et sed minima quos pariatur quasi in.',11,11,11,'2021-01-22 00:31:32',NULL),(12,'similique','Accusamus autem quo molestiae aliquam explicabo voluptas architecto est. Nobis sint aut laborum et praesentium aliquam dolorum. Numquam quas repellendus excepturi omnis id soluta. Dicta fugiat labore fugit non sed molestiae cupiditate.',12,12,12,'2021-01-22 00:31:32',NULL),(13,'ut','Autem ratione facere voluptatem ex iusto voluptatem commodi. Assumenda saepe quaerat dolores a. Ea voluptatem voluptatum impedit sint ex nemo. Facere totam autem rerum. Ipsa inventore sint quos laboriosam.',13,13,13,'2021-01-22 00:31:32',NULL),(14,'et','Vitae cumque culpa ut. Ut consequatur atque enim odit sapiente. Ut explicabo voluptates dolorem voluptatem sit quod.',14,14,14,'2021-01-22 00:31:32',NULL),(15,'sunt','Officia unde eos et impedit ducimus et quasi. Amet exercitationem eum impedit omnis aliquid officiis ab. Repellendus tempore dolores consequuntur consectetur nostrum et libero maiores.',15,15,15,'2021-01-22 00:31:32',NULL),(16,'aut','Suscipit non eaque non. Reiciendis adipisci necessitatibus enim sit labore. Sit dolore ut quia qui sunt nam.',16,16,16,'2021-01-22 00:31:32',NULL),(17,'molestiae','Eos soluta et odio dolor sunt odio recusandae ut. Error assumenda dolorem neque dicta. Aut quis animi totam sit. Et commodi nihil iste dolore a vel ut officia.',17,17,17,'2021-01-22 00:31:32',NULL),(18,'vel','Autem excepturi debitis non dolore. Voluptatibus saepe ad enim inventore culpa. Dolores fuga non veritatis consequatur eos sunt.',18,18,18,'2021-01-22 00:31:32',NULL),(19,'est','Et officia ut dolores a temporibus laborum. Sequi et consectetur voluptatum rerum animi quia. Quo sint quis nesciunt voluptatem voluptas.',19,19,19,'2021-01-22 00:31:32',NULL),(20,'eius','Sunt repellat labore possimus sunt. Impedit voluptas quidem optio sint ducimus. Sed facilis placeat est. Sint nostrum iure placeat.',20,20,20,'2021-01-22 00:31:32',NULL),(21,'rerum','Cum totam inventore id et quae consequatur itaque rerum. Ratione velit soluta rerum iusto illo ducimus. Ut nisi dolorum facere sapiente quos rerum laboriosam.',1,21,21,'2021-01-22 00:31:32',NULL),(22,'nobis','Quia eum ipsam laborum sit voluptas. Adipisci doloremque at rerum similique a. Enim repellendus quia aliquid sit quibusdam. Maiores quisquam est tempore amet.',2,22,22,'2021-01-22 00:31:32',NULL),(23,'accusantium','Minima deserunt qui voluptas assumenda ipsa at nostrum. Quisquam dolorem quisquam qui rerum. Atque et in labore eaque nobis optio.',3,23,23,'2021-01-22 00:31:32',NULL),(24,'a','Magni labore voluptatum occaecati fuga. Temporibus excepturi ut fugiat eum excepturi praesentium. Ea et quos et debitis.',4,24,24,'2021-01-22 00:31:32',NULL),(25,'voluptatem','Unde debitis omnis iure fugit. Nesciunt et illum aspernatur ut. Veniam et nihil praesentium dolores aut officiis amet. Provident odio vitae quia atque.',5,25,25,'2021-01-22 00:31:32',NULL),(26,'rerum','Nam quis assumenda perspiciatis dolor et. Qui ut voluptatibus optio deleniti nam est libero.',6,26,26,'2021-01-22 00:31:32',NULL),(27,'molestiae','Aut sapiente sapiente quia sit sequi. Temporibus voluptas aut eveniet ipsum reprehenderit consequatur autem molestias. Accusantium beatae nostrum praesentium aperiam laudantium.',7,27,27,'2021-01-22 00:31:32',NULL),(28,'et','Commodi tempore et est nihil tempora qui facere. Libero delectus amet reprehenderit architecto et. Asperiores odio et qui dignissimos praesentium.',8,28,28,'2021-01-22 00:31:32',NULL),(29,'est','Eveniet earum repudiandae non. Cum eligendi praesentium odit natus modi id. Iste architecto provident ut rem nesciunt nisi. Non voluptate odit modi explicabo impedit eligendi.',9,29,29,'2021-01-22 00:31:32',NULL),(30,'et','Sapiente est hic dolore et. Quos accusamus repudiandae sit ea sed. Tempora quo saepe architecto est ex. Labore qui sunt rerum accusantium. Dolorem quibusdam et impedit.',10,30,30,'2021-01-22 00:31:32',NULL),(31,'perspiciatis','Laboriosam nesciunt amet suscipit harum quaerat voluptate. Saepe ab sit autem quos aut amet quia. Dicta eos non aut voluptate corporis omnis. Odit deserunt quos eum et magnam quibusdam perferendis quia.',11,1,31,'2021-01-22 00:31:32',NULL),(32,'cumque','Dolor dolorem sit dolor atque minima facilis. Eveniet eligendi necessitatibus earum. Harum fugit porro necessitatibus ullam nostrum id dolorem.',12,2,32,'2021-01-22 00:31:32',NULL),(33,'corporis','Voluptatibus et voluptas neque quia voluptas consequatur recusandae. Et at aliquam molestias et harum aut voluptas. Quas molestiae laborum sapiente dignissimos omnis praesentium minima repellendus.',13,3,33,'2021-01-22 00:31:32',NULL),(34,'non','Nobis et expedita iure voluptatem explicabo ut. Est deserunt autem et corporis facere officia. Et quae doloribus id amet.',14,4,34,'2021-01-22 00:31:32',NULL),(35,'voluptates','Molestiae mollitia blanditiis at architecto beatae. Vero neque ratione molestiae expedita quis. Aliquid vitae voluptatem est eius error architecto. Eos sapiente fugit qui dicta.',15,5,35,'2021-01-22 00:31:32',NULL),(36,'omnis','Aperiam qui sapiente sequi molestiae possimus ipsam. Cupiditate eos atque autem totam dolores esse. Nobis aliquam inventore quae doloribus minima voluptatibus est.',16,6,36,'2021-01-22 00:31:32',NULL),(37,'unde','Ad temporibus quis pariatur nostrum non quia dolorem. Consequatur quo aut ipsam rerum molestiae consequatur vero. Tempore odio voluptatum incidunt sunt sunt. Quia natus similique sed quia.',17,7,37,'2021-01-22 00:31:32',NULL),(38,'dolor','Est corrupti deleniti aliquid et sit occaecati repellendus. Soluta totam ut ut alias est id et. Quas qui quod quidem perferendis.',18,8,38,'2021-01-22 00:31:32',NULL),(39,'repellendus','Enim fugit sint sint est ea quia repellat. Ut aut quam impedit qui sunt aut necessitatibus. Cumque distinctio sint omnis sunt fugiat est et.',19,9,39,'2021-01-22 00:31:32',NULL),(40,'doloribus','Aut reiciendis aut voluptas illo dolorem non. Soluta in quia suscipit libero nesciunt et et blanditiis. A velit officia ut esse eos.',20,10,40,'2021-01-22 00:31:32',NULL),(41,'accusantium','Earum atque fugiat officiis magnam. Perspiciatis magnam aut architecto hic. Et qui rem asperiores nihil sed quibusdam non.',1,11,41,'2021-01-22 00:31:32',NULL),(42,'animi','At non vero cupiditate laborum aut quo porro. Et ipsum asperiores occaecati. Ab itaque similique sapiente minus et id consequuntur.',2,12,42,'2021-01-22 00:31:32',NULL),(43,'minima','Sint aut quae culpa reiciendis aut molestiae corrupti. Quia sint nisi libero similique. Soluta sint soluta facere ad modi veniam possimus. Error deserunt tempore odio odio aut corrupti laborum minima.',3,13,43,'2021-01-22 00:31:32',NULL),(44,'qui','Tenetur odio deserunt dolores eos dolorem molestiae quia. Rerum fugiat voluptates explicabo nesciunt. Voluptatem iusto occaecati natus et quasi nostrum qui voluptas. Fugiat nulla est aspernatur aut facilis.',4,14,44,'2021-01-22 00:31:32',NULL),(45,'quidem','Harum molestiae dolores ipsam quae. Qui est a dolore vitae dolorum perferendis. Saepe nam voluptatem in expedita. Velit qui fuga officiis vitae commodi.',5,15,45,'2021-01-22 00:31:32',NULL),(46,'qui','Pariatur unde ut enim est. Saepe nobis magnam et earum quibusdam libero ea. At dolorem autem enim quam aspernatur ut doloremque. Facilis quaerat ut voluptas deleniti quis autem.',6,16,46,'2021-01-22 00:31:32',NULL),(47,'totam','Quia quas et minima aspernatur ea et quas molestiae. Quod quo similique perspiciatis recusandae expedita ipsam. Et maxime qui adipisci aut et.',7,17,47,'2021-01-22 00:31:32',NULL),(48,'voluptatem','Asperiores sed nemo sit quia nihil. Molestiae quod repudiandae aperiam perferendis deserunt quia. Repellendus qui maxime ut pariatur doloremque aspernatur. Omnis consequatur amet voluptatem nobis. Hic aut mollitia reiciendis ut aliquid laborum.',8,18,48,'2021-01-22 00:31:32',NULL),(49,'nihil','Consequatur aut qui incidunt quia nihil. Ullam commodi laudantium vel tenetur quia aut. Quibusdam consequatur est ut recusandae sint corporis omnis.',9,19,49,'2021-01-22 00:31:32',NULL),(50,'in','Placeat ipsam sed culpa molestiae quia blanditiis qui veniam. Corporis inventore illo accusamus. Minus dolores dicta alias ut tempora.',10,20,50,'2021-01-22 00:31:32',NULL),(51,'sapiente','Soluta qui sit molestiae quam ad fugit voluptatem sed. Voluptatem dolores blanditiis voluptatum impedit. Expedita ad consequatur et consequatur nemo.',11,21,51,'2021-01-22 00:31:32',NULL),(52,'officiis','Maxime sapiente ut alias. Sint possimus excepturi omnis aut. Non sapiente adipisci ut qui explicabo atque. Et laboriosam adipisci quis et aut corporis.',12,22,52,'2021-01-22 00:31:32',NULL),(53,'accusantium','Consequatur iusto et nulla reiciendis vero. Maxime aut aliquid veniam in non ut autem. Accusantium ab blanditiis ipsum ut ut eos enim. Impedit voluptatem soluta quia ex esse placeat excepturi.',13,23,53,'2021-01-22 00:31:32',NULL),(54,'qui','Labore voluptas hic reprehenderit rem consectetur in vel. Nisi magnam possimus et necessitatibus magni.',14,24,54,'2021-01-22 00:31:32',NULL),(55,'ipsa','Quos sit sed est culpa et maxime. Beatae debitis tempora ut eligendi in. Velit est nesciunt sint sint quidem. Sequi corporis omnis et.',15,25,55,'2021-01-22 00:31:32',NULL),(56,'deleniti','Quia ut minima sit excepturi. Cum harum modi dicta nihil. Qui enim hic laboriosam.',16,26,56,'2021-01-22 00:31:32',NULL),(57,'dolore','Voluptatibus et cum illum. Cum architecto voluptas maiores est. Id assumenda eum voluptatibus. Minus asperiores distinctio reiciendis nulla perspiciatis ab.',17,27,57,'2021-01-22 00:31:32',NULL),(58,'veniam','Ut beatae numquam corporis fuga dicta beatae fuga. Accusamus iste assumenda quia vitae. Repellat rerum aut vel maiores quo. Repellendus est quisquam ut est.',18,28,58,'2021-01-22 00:31:32',NULL),(59,'fugiat','Maiores aliquid porro id voluptatem sit. Optio aliquid et quasi ut fugit non minus mollitia. Et similique consectetur hic veniam. Recusandae pariatur aut rerum officiis.',19,29,59,'2021-01-22 00:31:32',NULL),(60,'impedit','Similique cumque accusantium autem ea. Illo autem amet est nobis consectetur repellendus ullam rerum. Ut praesentium est deleniti tempore.',20,30,60,'2021-01-22 00:31:32',NULL),(61,'tenetur','Tempora repellat sint dicta aliquam hic sint. Dicta animi voluptatem soluta a. Perferendis tempora doloribus omnis architecto amet.',1,1,61,'2021-01-22 00:31:32',NULL),(62,'quis','Perferendis temporibus velit blanditiis. Officia excepturi doloribus rerum accusantium consequuntur aliquam. Soluta est quo perferendis inventore natus. Voluptas tempora expedita porro odio qui ex.',2,2,62,'2021-01-22 00:31:32',NULL),(63,'consequatur','Quidem sint nulla id sapiente. Odio maiores et quas labore qui totam ut. Deleniti sint eaque debitis. Eum animi distinctio et sint libero et reiciendis.',3,3,63,'2021-01-22 00:31:32',NULL),(64,'soluta','Ut alias explicabo blanditiis molestiae. Et aut iste quo ullam beatae. Ullam sit dolores quam et harum dolor a.',4,4,64,'2021-01-22 00:31:32',NULL),(65,'iste','Voluptatem in hic maiores facilis aliquid repellat accusantium. Sed odio vel quae. Qui veniam sed amet quam et. Dolore distinctio molestiae doloribus.',5,5,65,'2021-01-22 00:31:32',NULL),(66,'illo','Ad suscipit explicabo atque nostrum suscipit illum. Omnis quia vitae quasi qui mollitia. Accusantium dolorem blanditiis explicabo perspiciatis est. Velit inventore ab consectetur quibusdam et amet magnam.',6,6,66,'2021-01-22 00:31:32',NULL),(67,'est','Totam impedit tempora deleniti ipsam natus quia. Accusantium error neque modi eveniet corporis perferendis autem. Facere laboriosam qui quasi eius voluptatem nulla officiis. Culpa beatae dolorum voluptatem nemo occaecati laudantium.',7,7,67,'2021-01-22 00:31:32',NULL),(68,'dolor','Velit eaque vel dolorem ut est. Dolor ut sit ut et. Eos soluta facilis numquam quia ipsum. Quos nesciunt dolorum expedita dolorem occaecati atque quasi.',8,8,68,'2021-01-22 00:31:32',NULL),(69,'enim','Sed voluptate assumenda qui. Delectus nobis suscipit rem provident voluptatem. In optio perferendis cupiditate perferendis ut et distinctio ad.',9,9,69,'2021-01-22 00:31:32',NULL),(70,'quisquam','Sit eaque omnis corrupti et sed. Expedita aut eaque possimus vero rerum. Exercitationem reiciendis eligendi neque accusamus.',10,10,70,'2021-01-22 00:31:32',NULL),(71,'cumque','Adipisci blanditiis beatae pariatur possimus. Dolorem deserunt sequi impedit voluptatum et. Nisi deleniti dolorem consequatur. Sapiente aliquam ipsam veritatis vero fugit.',11,11,71,'2021-01-22 00:31:32',NULL),(72,'autem','Sed qui eos in velit aut rerum neque. Officiis qui est necessitatibus. Et debitis quidem eveniet voluptas. Laudantium exercitationem pariatur et fuga qui ut.',12,12,72,'2021-01-22 00:31:32',NULL),(73,'pariatur','Sequi minima expedita nihil qui ratione rem. Qui asperiores voluptatibus iusto est cupiditate enim. Cum doloribus aut et sit quam. Voluptas aut quos tenetur molestias dolores accusamus et.',13,13,73,'2021-01-22 00:31:32',NULL),(74,'dolor','Ex asperiores itaque optio cum. Animi porro et et culpa consequatur vero dolore est. Vel libero natus voluptates incidunt nostrum nulla. Exercitationem quis consequatur dolorem ut.',14,14,74,'2021-01-22 00:31:32',NULL),(75,'voluptas','Doloremque et eos et modi repellat odit. In eius autem totam esse illum. Ducimus nam laboriosam et expedita sed fuga.',15,15,75,'2021-01-22 00:31:32',NULL),(76,'perferendis','Eligendi fugit expedita repellendus voluptatibus impedit et consequatur. Tempore doloremque ad qui voluptatem aut neque repudiandae ea. Nemo accusantium cum quia quia rerum soluta similique neque. Repellat atque eos omnis consequatur aut itaque numquam officiis.',16,16,76,'2021-01-22 00:31:32',NULL),(77,'esse','Unde illo sint adipisci dolor. Tempora laboriosam minima eum dolores ut illum. Ut est est ut tempore sit similique.',17,17,77,'2021-01-22 00:31:32',NULL),(78,'qui','Non aperiam quia repudiandae aut sunt. Odio accusantium sint impedit dicta. Et officiis rerum molestiae aliquid occaecati. Nisi facilis possimus quasi possimus modi occaecati quia id.',18,18,78,'2021-01-22 00:31:32',NULL),(79,'esse','Dolor quidem sed sapiente consequatur nisi non. Est neque omnis vel distinctio blanditiis odit.',19,19,79,'2021-01-22 00:31:32',NULL),(80,'rerum','Iste vel voluptatibus dignissimos est magnam officia et. Fugiat quo deleniti occaecati. Voluptatum et magni ullam et veniam.',20,20,80,'2021-01-22 00:31:32',NULL),(81,'exercitationem','Quam voluptas amet dolores natus qui dignissimos unde nesciunt. Laborum officia hic voluptate labore quae. Doloribus porro iusto autem voluptas necessitatibus.',1,21,81,'2021-01-22 00:31:32',NULL),(82,'quia','Nihil ipsam pariatur repudiandae repellendus omnis qui. A beatae cum dicta ex non libero. Adipisci voluptas ut aliquid velit tempore. Qui aliquam odio dolores architecto impedit beatae.',2,22,82,'2021-01-22 00:31:32',NULL),(83,'sed','Quas quaerat odit earum aut rerum culpa quaerat. Sint rerum facere omnis commodi labore error non. Necessitatibus exercitationem nostrum explicabo dolorum alias a.',3,23,83,'2021-01-22 00:31:32',NULL),(84,'aut','Voluptates rem eos sapiente possimus. Expedita beatae fuga dolorem a ad eum placeat. Quia quis consectetur porro dolorem.',4,24,84,'2021-01-22 00:31:32',NULL),(85,'at','Expedita consequatur distinctio id itaque. Qui magni dolorum voluptas enim quis. Voluptatem repellat dolor molestiae. Esse cum voluptas commodi quis.',5,25,85,'2021-01-22 00:31:32',NULL),(86,'cumque','Quo voluptatem sunt placeat quaerat odio. Aspernatur reprehenderit voluptates deserunt velit ut accusamus officiis. Consequatur in hic porro eius vitae explicabo.',6,26,86,'2021-01-22 00:31:32',NULL),(87,'non','Rerum dolores itaque et hic. Quia accusamus et illo. Autem saepe ea et quibusdam dolores.',7,27,87,'2021-01-22 00:31:32',NULL),(88,'quasi','Neque blanditiis nesciunt numquam dolor aut. Laboriosam sint omnis repellat magni officiis ratione. Quidem sed ut eligendi et esse et autem. Neque qui aliquid ut quia neque exercitationem.',8,28,88,'2021-01-22 00:31:32',NULL),(89,'laborum','Natus necessitatibus recusandae dolorem ut. Minima atque similique reprehenderit omnis optio. Et pariatur facilis qui veritatis vitae omnis.',9,29,89,'2021-01-22 00:31:32',NULL),(90,'explicabo','Voluptatem omnis adipisci et ex qui laboriosam est. Consequatur et delectus praesentium quidem ex.',10,30,90,'2021-01-22 00:31:32',NULL),(91,'necessitatibus','Consectetur sapiente quo commodi sint unde. Est et corporis ducimus dicta doloribus.',11,1,91,'2021-01-22 00:31:32',NULL),(92,'quasi','Qui debitis molestiae culpa. Qui exercitationem et accusamus libero aut quas. Aut voluptas tenetur maiores.',12,2,92,'2021-01-22 00:31:32',NULL),(93,'et','Eveniet quidem rerum ipsum ut in. Quis at asperiores modi ab vitae consequatur. Id iure qui quo incidunt. Culpa accusamus distinctio earum.',13,3,93,'2021-01-22 00:31:32',NULL),(94,'vel','In iure esse molestias nesciunt. Ipsa reprehenderit ratione impedit nihil eius. Perspiciatis fuga numquam praesentium et aut dolores. Voluptatem sit dicta reiciendis cum.',14,4,94,'2021-01-22 00:31:32',NULL),(95,'ut','Veritatis dolorum et voluptas dolorum architecto at explicabo. Ex eligendi aperiam delectus magni totam. Eius dicta tempore deserunt facere dignissimos magnam qui numquam. Qui aliquam consequuntur enim tenetur.',15,5,95,'2021-01-22 00:31:32',NULL),(96,'inventore','Cupiditate reprehenderit quam vel sint harum vel nobis et. Sint cupiditate architecto nobis impedit. Nobis nesciunt iusto exercitationem nostrum temporibus ducimus architecto. Iste necessitatibus et laudantium.',16,6,96,'2021-01-22 00:31:32',NULL),(97,'iste','Reprehenderit voluptatem dolor sint et. Sint ipsum sapiente veritatis dolore. Magnam quisquam magni officia consequatur natus quo corrupti. Qui facere a fuga pariatur.',17,7,97,'2021-01-22 00:31:32',NULL),(98,'sapiente','Aperiam harum voluptatibus qui. Minus et dolores recusandae voluptatem et aut ut pariatur.',18,8,98,'2021-01-22 00:31:32',NULL),(99,'illum','Autem perferendis labore recusandae libero nam aliquid nesciunt. Pariatur quia voluptatum pariatur cum. Nesciunt consectetur non voluptatum et.',19,9,99,'2021-01-22 00:31:32',NULL),(100,'voluptatem','Aut et natus est vel non culpa debitis. Dolorum labore ut rerum et. Sit qui sint ut et placeat asperiores. Ab praesentium odit voluptatem aperiam enim soluta.',20,10,100,'2021-01-22 00:31:32',NULL);
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `club_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_adress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Филиалы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'West Annamouth','53845 Schumm Mountain Apt. 723\nAnastacioside, VT 61334'),(2,'North Britney','5558 Marvin Tunnel\nHortensetown, AL 76869-3107'),(3,'New Laruemouth','14090 Gislason Shores Suite 955\nErwinstad, NH 25164'),(4,'Stantonport','07017 Nienow Extension Suite 559\nLake Fernland, IA 36846-0839'),(5,'Brownburgh','707 Sigrid Freeway\nWest Edenfurt, TX 96669-4387'),(6,'Morarshire','133 Brad Mountain\nO\'Haraland, IN 21215-9830'),(7,'Dallinmouth','304 Ethyl Forge\nPort Cara, MT 21078-0948'),(8,'Dickensland','2185 Kub Extension Suite 737\nReillychester, FL 46667'),(9,'Thomasfurt','948 O\'Connell Mews\nSouth Orion, WI 78044'),(10,'Pricebury','1444 Mayert Lodge Suite 986\nWest Jessikaberg, MI 68336-0499'),(11,'West Ashtyn','668 Krajcik Ridge Apt. 105\nLuisaburgh, AZ 96969-8502'),(12,'Mossiestad','714 Barton Shoals Suite 876\nWest Ivastad, MT 97513'),(13,'Eberthaven','8529 Cartwright Loaf Suite 698\nJulienland, UT 10254-5235'),(14,'New Jessikabury','65559 Huels Pass\nSkileschester, MA 85294'),(15,'Schimmelland','7469 Zulauf Ford\nKuvalisfurt, NY 22110-9548'),(16,'Hellerland','71943 Kiley Mills Apt. 524\nEast Oswaldo, WI 38696'),(17,'South Cortezborough','2639 Koepp Greens\nGulgowskiton, OK 21770-6987'),(18,'Port Kellystad','824 Eden Locks Apt. 300\nCelineton, NH 61162-8590'),(19,'Daretown','0667 Morar Corner Apt. 970\nKuvalisberg, HI 71406-0679'),(20,'New Shanelhaven','8013 Parker Lane Apt. 738\nWest Erickhaven, NJ 60626');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `birthday_at` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `idx_clients_username` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='клиенты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Roxane','Doyle','mariah.quigley@hotmail.com',89844426628,'2012-11-20','2021-01-22 00:20:43',NULL),(2,'Abdul','Dicki','uemmerich@yahoo.com',89548462699,'1973-07-12','2021-01-22 00:20:43',NULL),(3,'Kaelyn','Mueller','loren96@hotmail.com',89196508918,'1979-12-17','2021-01-22 00:20:43',NULL),(4,'Giovani','Muller','cdeckow@hotmail.com',89002783033,'2005-02-14','2021-01-22 00:20:43',NULL),(5,'Zackery','Langworth','april.johns@hotmail.com',89529399909,'1989-02-20','2021-01-22 00:20:43',NULL),(6,'William','Krajcik','deshaun.bayer@gmail.com',89771652664,'1970-03-30','2021-01-22 00:20:43',NULL),(7,'Stephania','Rath','merl.kling@yahoo.com',89918160522,'1998-12-11','2021-01-22 00:20:43',NULL),(8,'Susie','Mills','donald57@gmail.com',89361702742,'1989-12-16','2021-01-22 00:20:43',NULL),(9,'Christelle','Spinka','francisco09@gmail.com',89820496258,'2019-09-14','2021-01-22 00:20:43',NULL),(10,'Nia','Steuber','aurelia.wunsch@hotmail.com',89575691466,'1978-12-27','2021-01-22 00:20:43',NULL),(11,'Claudia','Satterfield','ojaskolski@hotmail.com',89924349162,'1972-06-07','2021-01-22 00:20:43',NULL),(12,'Jaden','Lynch','jairo19@yahoo.com',89613857073,'1995-12-15','2021-01-22 00:20:43',NULL),(13,'Humberto','Flatley','teresa.heller@gmail.com',89746019148,'2010-11-17','2021-01-22 00:20:43',NULL),(14,'Oceane','Schmitt','xraynor@gmail.com',89366570996,'1989-04-18','2021-01-22 00:20:43',NULL),(15,'Newell','Bauch','bailee74@gmail.com',89353959390,'2017-09-20','2021-01-22 00:20:43',NULL),(16,'Joel','Schoen','ethelyn.zieme@yahoo.com',89447209089,'2020-02-11','2021-01-22 00:20:43',NULL),(17,'Sheldon','Muller','jasper16@gmail.com',89057905242,'1974-05-23','2021-01-22 00:20:43',NULL),(18,'Ryder','Cartwright','laverne.hamill@gmail.com',89244511237,'1990-08-11','2021-01-22 00:20:43',NULL),(19,'Elwin','Stracke','cathy.emard@hotmail.com',89181648952,'1994-09-10','2021-01-22 00:20:43',NULL),(20,'Ellen','Bosco','brandi35@yahoo.com',89818402164,'2001-06-27','2021-01-22 00:20:43',NULL),(21,'Catharine','Schinner','senger.janelle@hotmail.com',89825282781,'2007-09-21','2021-01-22 00:20:43',NULL),(22,'Rasheed','Sauer','martina.ritchie@hotmail.com',89853003149,'2003-06-25','2021-01-22 00:20:43',NULL),(23,'Theodore','Rohan','boyle.urban@yahoo.com',89527997991,'2011-02-15','2021-01-22 00:20:43',NULL),(24,'Gillian','Armstrong','kshlerin.rodrigo@yahoo.com',89051846866,'2018-06-02','2021-01-22 00:20:43',NULL),(25,'Cleta','Weissnat','wsatterfield@hotmail.com',89190881880,'2019-04-13','2021-01-22 00:20:43',NULL),(26,'Gilda','Schumm','feest.reyna@yahoo.com',89663138699,'1978-05-04','2021-01-22 00:20:43',NULL),(27,'Maximus','Hilpert','andreane.konopelski@gmail.com',89449780971,'1971-04-24','2021-01-22 00:20:43',NULL),(28,'Fausto','Koelpin','mcclure.lesley@gmail.com',89352202838,'1981-07-22','2021-01-22 00:20:43',NULL),(29,'Zora','Grant','larkin.nicklaus@gmail.com',89094459641,'1994-05-23','2021-01-22 00:20:43',NULL),(30,'Nigel','Kris','thea.cole@yahoo.com',89550064871,'2001-03-20','2021-01-22 00:20:43',NULL),(31,'Shakira','Langworth','kerluke.adolph@hotmail.com',89259511121,'1991-08-28','2021-01-22 00:20:43',NULL),(32,'Mittie','Green','verona30@hotmail.com',89389982317,'2004-09-22','2021-01-22 00:20:43',NULL),(33,'Patrick','Treutel','marcelo.jast@hotmail.com',89408202713,'2020-02-22','2021-01-22 00:20:43',NULL),(34,'Crystel','Hills','hirthe.tobin@hotmail.com',89521489474,'1975-09-13','2021-01-22 00:20:43',NULL),(35,'Liam','Hamill','marquardt.bernice@hotmail.com',89556767079,'2015-01-30','2021-01-22 00:20:43',NULL),(36,'Isaiah','Wintheiser','astiedemann@hotmail.com',89103756072,'1974-12-17','2021-01-22 00:20:43',NULL),(37,'Tanner','Harris','flatley.vena@hotmail.com',89648574957,'1999-11-15','2021-01-22 00:20:43',NULL),(38,'Rosalind','Hirthe','benny.haag@gmail.com',89256266735,'1999-09-29','2021-01-22 00:20:43',NULL),(39,'Myrl','Emard','drenner@gmail.com',89075524468,'1990-07-30','2021-01-22 00:20:43',NULL),(40,'Carson','Heathcote','ucassin@gmail.com',89693979282,'1974-04-18','2021-01-22 00:20:43',NULL),(41,'Corine','Hartmann','shawn20@yahoo.com',89400688504,'1975-03-14','2021-01-22 00:20:43',NULL),(42,'Cleveland','Daugherty','kellen77@hotmail.com',89965157690,'2019-08-10','2021-01-22 00:20:43',NULL),(43,'Ted','Muller','aurelio91@yahoo.com',89419527107,'2015-11-30','2021-01-22 00:20:43',NULL),(44,'Mona','Grant','lehner.valentine@gmail.com',89739665692,'1977-05-05','2021-01-22 00:20:43',NULL),(45,'Darrion','Donnelly','pnienow@gmail.com',89252813139,'1981-03-04','2021-01-22 00:20:43',NULL),(46,'Elenor','Hirthe','myrl22@hotmail.com',89777873854,'1992-10-11','2021-01-22 00:20:43',NULL),(47,'Pattie','Torphy','elyse58@hotmail.com',89932237140,'2009-08-16','2021-01-22 00:20:43',NULL),(48,'Gina','Mohr','kurt36@hotmail.com',89410213690,'2020-07-16','2021-01-22 00:20:43',NULL),(49,'Gerhard','Pouros','zola51@gmail.com',89105544256,'1996-03-28','2021-01-22 00:20:43',NULL),(50,'Briana','Heathcote','don58@gmail.com',89464488721,'1980-09-13','2021-01-22 00:20:43',NULL),(51,'Kiana','Daugherty','carolanne.stroman@yahoo.com',89567970239,'1997-10-24','2021-01-22 00:20:43',NULL),(52,'Chasity','Gerlach','rosie41@yahoo.com',89511753436,'2004-05-14','2021-01-22 00:20:43',NULL),(53,'Jon','Witting','ned06@hotmail.com',89520128052,'2010-03-21','2021-01-22 00:20:43',NULL),(54,'Corbin','Balistreri','deborah.quitzon@hotmail.com',89679995295,'1974-12-16','2021-01-22 00:20:43',NULL),(55,'Vilma','Moen','peter.terry@hotmail.com',89435995863,'1980-02-04','2021-01-22 00:20:43',NULL),(56,'Ray','Medhurst','ariel.mohr@hotmail.com',89355209975,'2004-01-16','2021-01-22 00:20:43',NULL),(57,'Sebastian','Wilderman','edaugherty@gmail.com',89814560403,'1977-02-22','2021-01-22 00:20:43',NULL),(58,'Garrett','Davis','seamus.fay@gmail.com',89058111994,'2010-03-20','2021-01-22 00:20:43',NULL),(59,'Guadalupe','Rosenbaum','lexi16@hotmail.com',89542048405,'1982-11-23','2021-01-22 00:20:43',NULL),(60,'Guillermo','Jacobi','roberto33@yahoo.com',89243569475,'2002-05-05','2021-01-22 00:20:43',NULL),(61,'Macie','Hoppe','rutherford.elliott@yahoo.com',89743838055,'1975-08-19','2021-01-22 00:20:43',NULL),(62,'Tressie','Wolf','sincere.flatley@yahoo.com',89028912348,'2006-11-08','2021-01-22 00:20:43',NULL),(63,'Verla','Tremblay','mpaucek@hotmail.com',89269949895,'1989-05-12','2021-01-22 00:20:43',NULL),(64,'Ransom','Smitham','bosco.darion@gmail.com',89346930820,'1977-07-10','2021-01-22 00:20:43',NULL),(65,'Enos','Lowe','nicolette53@yahoo.com',89953983844,'1977-06-19','2021-01-22 00:20:43',NULL),(66,'Joey','Toy','rkessler@gmail.com',89964072872,'1980-03-14','2021-01-22 00:20:43',NULL),(67,'Solon','Koelpin','cary.price@yahoo.com',89495641017,'2020-08-26','2021-01-22 00:20:43',NULL),(68,'Lucius','Dietrich','monserrate.schoen@gmail.com',89009976679,'2004-01-14','2021-01-22 00:20:43',NULL),(69,'Liliane','Towne','camren18@yahoo.com',89903818643,'1972-11-02','2021-01-22 00:20:43',NULL),(70,'Jacquelyn','Lehner','qlebsack@yahoo.com',89251701604,'2000-09-21','2021-01-22 00:20:43',NULL),(71,'Norris','Williamson','dare.kieran@gmail.com',89925749255,'1976-01-28','2021-01-22 00:20:43',NULL),(72,'Magdalena','Willms','jamar.doyle@yahoo.com',89838168089,'1983-09-14','2021-01-22 00:20:43',NULL),(73,'Maybelle','Heidenreich','beer.meta@yahoo.com',89751091318,'2003-10-09','2021-01-22 00:20:43',NULL),(74,'Mylene','Schroeder','deckow.jakob@yahoo.com',89872894980,'1999-03-24','2021-01-22 00:20:43',NULL),(75,'Letitia','Kemmer','peter.lindgren@gmail.com',89164731928,'1993-10-23','2021-01-22 00:20:43',NULL),(76,'Estefania','Dooley','jaeden.dickens@gmail.com',89025881198,'1970-12-07','2021-01-22 00:20:43',NULL),(77,'Parker','Raynor','enicolas@gmail.com',89317213981,'1978-04-21','2021-01-22 00:20:43',NULL),(78,'Skye','Walker','itorp@gmail.com',89752517755,'1980-08-03','2021-01-22 00:20:43',NULL),(79,'Lambert','Carroll','jdooley@yahoo.com',89294778282,'1995-06-14','2021-01-22 00:20:43',NULL),(80,'Demetris','Ruecker','aurelie09@hotmail.com',89271258362,'1987-01-11','2021-01-22 00:20:43',NULL),(81,'Charles','Padberg','freda60@hotmail.com',89454310209,'1975-10-21','2021-01-22 00:20:43',NULL),(82,'Rosalee','Braun','lynch.mohammed@yahoo.com',89006994386,'1980-06-04','2021-01-22 00:20:43',NULL),(83,'Laurence','Kris','royce.tremblay@yahoo.com',89494841997,'1998-09-19','2021-01-22 00:20:43',NULL),(84,'Mavis','Oberbrunner','nils62@hotmail.com',89516759013,'1977-01-18','2021-01-22 00:20:43',NULL),(85,'Tristian','Kshlerin','legros.dena@yahoo.com',89909929576,'1970-05-16','2021-01-22 00:20:43',NULL),(86,'Rose','Gleichner','thalia06@hotmail.com',89305295010,'2019-03-12','2021-01-22 00:20:43',NULL),(87,'Queen','Dare','rickey77@hotmail.com',89179605593,'1994-03-30','2021-01-22 00:20:43',NULL),(88,'Casimir','Harber','uschmitt@gmail.com',89008485233,'1971-10-03','2021-01-22 00:20:43',NULL),(89,'Marcellus','Thompson','bethel52@hotmail.com',89424419761,'1982-06-03','2021-01-22 00:20:43',NULL),(90,'Vivienne','Bayer','rrath@yahoo.com',89711075498,'1987-07-05','2021-01-22 00:20:43',NULL),(91,'Lawson','Stroman','nienow.leonel@yahoo.com',89074249458,'1995-10-02','2021-01-22 00:20:43',NULL),(92,'Magdalen','McLaughlin','ureichel@yahoo.com',89384962993,'1974-02-24','2021-01-22 00:20:43',NULL),(93,'Jody','Nader','amiya.prohaska@hotmail.com',89989875458,'2016-02-07','2021-01-22 00:20:43',NULL),(94,'Eloise','Mante','cormier.reilly@gmail.com',89828065956,'2011-01-24','2021-01-22 00:20:43',NULL),(95,'Barry','Nicolas','upton.sanford@yahoo.com',89940420724,'1970-07-21','2021-01-22 00:20:43',NULL),(96,'Sadye','Kunze','king.hunter@yahoo.com',89994221176,'1987-04-02','2021-01-22 00:20:43',NULL),(97,'Roxanne','Will','muhammad.greenfelder@gmail.com',89026604574,'1988-06-30','2021-01-22 00:20:43',NULL),(98,'Barrett','Hammes','blanda.sedrick@gmail.com',89797577965,'1986-03-25','2021-01-22 00:20:43',NULL),(99,'Estevan','Stiedemann','mccullough.cortney@gmail.com',89130624846,'2006-04-02','2021-01-22 00:20:43',NULL),(100,'Ward','Bernier','leannon.eliane@yahoo.com',89256087834,'1984-11-11','2021-01-22 00:20:43',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_branches`
--

DROP TABLE IF EXISTS `clients_branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_branches` (
  `client_id` bigint(20) unsigned NOT NULL,
  `branch_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`client_id`,`branch_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `clients_branches_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `clients_branches_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='клиенты, которые могут посещать те или иные филиалы клубов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_branches`
--

LOCK TABLES `clients_branches` WRITE;
/*!40000 ALTER TABLE `clients_branches` DISABLE KEYS */;
INSERT INTO `clients_branches` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,1),(22,2),(23,3),(24,4),(25,5),(26,6),(27,7),(28,8),(29,9),(30,10),(31,11),(32,12),(33,13),(34,14),(35,15),(36,16),(37,17),(38,18),(39,19),(40,20),(41,1),(42,2),(43,3),(44,4),(45,5),(46,6),(47,7),(48,8),(49,9),(50,10),(51,11),(52,12),(53,13),(54,14),(55,15),(56,16),(57,17),(58,18),(59,19),(60,20),(61,1),(62,2),(63,3),(64,4),(65,5),(66,6),(67,7),(68,8),(69,9),(70,10),(71,11),(72,12),(73,13),(74,14),(75,15),(76,16),(77,17),(78,18),(79,19),(80,20),(81,1),(82,2),(83,3),(84,4),(85,5),(86,6),(87,7),(88,8),(89,9),(90,10),(91,11),(92,12),(93,13),(94,14),(95,15),(96,16),(97,17),(98,18),(99,19),(100,20);
/*!40000 ALTER TABLE `clients_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned DEFAULT NULL,
  `subscription_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `discount` float unsigned DEFAULT 0 COMMENT 'Величина скидки от 0.0 до 1.0',
  `started_at` datetime DEFAULT current_timestamp(),
  `finished_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `index_of_client_id` (`client_id`),
  KEY `index_of_subscription_id` (`subscription_id`),
  KEY `index_of_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Скидки на продукцию или абонементы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,1,1,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(2,2,2,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(3,3,3,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(4,4,4,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(5,5,5,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(6,6,6,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(7,7,7,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(8,8,8,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(9,9,9,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL),(10,10,10,NULL,0,'2021-01-22 00:30:01','2021-01-22 00:30:01',NULL);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_trainings`
--

DROP TABLE IF EXISTS `group_trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_trainings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_training` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `club_id` bigint(20) unsigned NOT NULL,
  `trainer_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `trainer_id` (`trainer_id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `group_trainings_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `group_trainings_ibfk_2` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`),
  CONSTRAINT `group_trainings_ibfk_3` FOREIGN KEY (`club_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='групповые тренировки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_trainings`
--

LOCK TABLES `group_trainings` WRITE;
/*!40000 ALTER TABLE `group_trainings` DISABLE KEYS */;
INSERT INTO `group_trainings` VALUES (1,'consequatur','Atque illum voluptatem est vitae saepe. Expedita libero possimus veniam quo nam perspiciatis porro. Asperiores aperiam quo eaque similique atque. Illum et quis explicabo temporibus eos doloremque.','2019-09-18 06:11:48',1,1,1),(2,'voluptatem','Minus et vero qui quia inventore esse. Suscipit est laborum ratione dolor id sapiente eos. Dolorem non aperiam excepturi a molestiae. Consectetur impedit cupiditate voluptas aut quis accusamus sint.','1979-08-18 21:42:30',2,2,2),(3,'aut','Aliquam beatae nihil praesentium accusantium qui vel quis. Quia maxime consequatur inventore earum cum blanditiis doloribus. Possimus quos nisi et necessitatibus nobis assumenda. Voluptatum alias numquam rerum quisquam est nisi.','2015-07-21 23:48:31',3,3,3),(4,'neque','Asperiores quis sit perferendis nihil nemo. Laborum dolores molestiae nisi incidunt ut. Placeat nostrum repellat libero molestias fuga. Id qui temporibus aut praesentium asperiores animi odio. Consequatur eos quaerat sed odit magnam totam.','1973-04-26 04:28:03',4,4,4),(5,'ut','Laborum voluptas aut facere rerum animi. Quaerat dicta cum iure quae. Veritatis sint dolor repellat ea natus est. Omnis est minus a voluptas.','1982-04-22 23:15:25',5,5,5),(6,'nihil','Reprehenderit eaque doloribus laudantium. Accusantium debitis quo est occaecati fugiat provident corrupti. Quaerat nemo nemo totam at ducimus eos esse explicabo.','1986-01-06 20:44:18',6,6,6),(7,'delectus','Sunt possimus officiis nihil qui. Neque neque molestiae labore quam sapiente officia qui. Minus esse sint quam sequi nihil labore accusamus.','1976-10-13 09:19:59',7,7,7),(8,'nihil','Deserunt et sint ipsum libero. Labore ea itaque sit fuga autem aperiam delectus.','2001-02-10 00:59:27',8,8,8),(9,'magni','Voluptatem tempore blanditiis magni quo dolor officiis. Dolorem quibusdam quibusdam quis deserunt in nulla sed. Autem dignissimos fugiat ad perspiciatis.','1997-08-06 04:12:32',9,9,9),(10,'odit','Veniam excepturi voluptatem quas. Aut quaerat itaque pariatur rerum nihil. Laudantium cupiditate fugiat illo quae ratione doloremque.','2009-11-15 05:51:15',10,10,10),(11,'neque','Eos debitis quis neque reprehenderit odio totam. Dolorum voluptas sunt consequatur a. Corporis voluptate numquam consectetur aut iste eaque non. Non fuga ducimus officiis provident in.','2010-05-15 18:52:59',11,11,11),(12,'omnis','Sed ut ea ipsam aliquam doloribus. Aliquid molestias error tenetur. Est sit adipisci veniam eaque.','2007-08-14 01:31:23',12,12,12),(13,'molestiae','Impedit ad eum corrupti numquam consectetur voluptatibus. Placeat voluptas odit laborum quae. Quod eos eum autem aperiam hic aliquam. Enim quis blanditiis sint sed aut. Quod et iure labore ab sint.','2009-12-23 14:45:52',13,13,13),(14,'reiciendis','Consequatur culpa aut ducimus pariatur soluta. Qui quisquam voluptatibus natus error. Non illo velit et. Repellendus repudiandae aliquam voluptatibus illo provident.','2009-04-22 14:15:15',14,14,14),(15,'doloribus','Unde totam nisi minima debitis et rem saepe blanditiis. Placeat accusantium eveniet omnis aut aliquam sequi autem. Et occaecati perferendis consequatur labore iure aut. Facere impedit sequi porro provident commodi ea.','1971-06-04 14:42:24',15,15,15),(16,'neque','Provident et autem veritatis et molestiae. Qui vitae esse rerum magni praesentium quis et culpa. Quo qui in sed commodi ullam vitae molestiae aut.','1999-01-31 17:39:26',16,16,16),(17,'et','Quos explicabo dolorem ex voluptas quidem. Non provident necessitatibus non. Vitae necessitatibus eum aut et repudiandae consequatur et veritatis. Consequatur dignissimos magni tenetur nisi non deleniti maiores quae.','1973-02-02 05:21:17',17,17,17),(18,'ipsum','Earum ipsum aperiam minima quia. Optio ducimus similique quis rerum velit quo. Quia saepe quis non modi. Nam placeat eum magni nihil ipsum sed sed aliquam.','1996-03-18 14:27:02',18,18,18),(19,'explicabo','Non fugit vero sed. Laudantium libero aut ullam rem qui molestias id. Culpa rem labore omnis ratione ut sit possimus.','1983-06-12 10:57:20',19,19,19),(20,'non','Eos aut accusantium rem nesciunt aperiam. Eos necessitatibus soluta voluptate voluptas. Accusantium aspernatur qui rerum sed. Non dolorem excepturi atque sit.','2007-07-10 16:22:54',20,20,20),(21,'excepturi','Temporibus sapiente dicta qui qui. Harum omnis dicta quia eum magni nisi praesentium. Iure quia est tempore neque. Dolor unde voluptas cumque et sit repudiandae vel.','1977-03-19 18:21:05',1,21,21),(22,'quam','Praesentium eos aut eos explicabo atque. Ad asperiores aut dolore atque commodi et dignissimos. Aut quaerat quo neque labore.','1977-03-09 04:07:33',2,22,22),(23,'quia','Quis minus repellendus dolores animi. Quam veniam esse aut optio. Qui natus repudiandae ab nihil ea non.','2009-08-30 19:02:15',3,23,23),(24,'libero','Sunt iusto repellendus eos eum alias doloremque est soluta. Veniam et est ut temporibus.','2018-08-22 14:05:21',4,24,24),(25,'neque','Dolorem numquam aut cumque. Est dolor quia soluta sapiente eos. Aliquid sit alias commodi aut.','1999-01-01 14:10:30',5,25,25),(26,'quod','Autem culpa voluptate rerum. Nisi perferendis ex repellendus cupiditate corporis cupiditate. Harum consectetur expedita ipsa aperiam.','2017-04-16 08:29:12',6,26,26),(27,'eum','Rerum voluptates aut aut sit architecto. Suscipit qui et vel natus. Velit impedit et facere qui et quis optio. Dolore qui enim cumque nam recusandae.','1989-08-27 09:48:14',7,27,27),(28,'excepturi','Voluptatum soluta rerum quaerat itaque asperiores. Consectetur et modi omnis asperiores blanditiis tempora vitae. Exercitationem consectetur in quisquam tenetur aperiam.','2007-12-14 03:50:22',8,28,28),(29,'quasi','Animi libero ipsum tenetur. Molestias est ullam repellendus eos quia qui. Harum molestiae adipisci nesciunt in ipsa.','1978-02-02 17:00:28',9,29,29),(30,'aperiam','Soluta exercitationem rerum molestias veniam aut rerum. Dignissimos odio nemo iusto consequuntur voluptatibus perspiciatis sed. Dolor illo voluptatem consequatur ad beatae quas. Fuga quo sint omnis ullam dolores perferendis cum autem.','2010-06-18 18:24:22',10,30,30);
/*!40000 ALTER TABLE `group_trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_trainings`
--

DROP TABLE IF EXISTS `personal_trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_trainings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `started_at` datetime DEFAULT NULL,
  `club_id` bigint(20) unsigned NOT NULL,
  `trainer_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `trainer_id` (`trainer_id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `personal_trainings_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `personal_trainings_ibfk_2` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`),
  CONSTRAINT `personal_trainings_ibfk_3` FOREIGN KEY (`club_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='персональные тренировки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_trainings`
--

LOCK TABLES `personal_trainings` WRITE;
/*!40000 ALTER TABLE `personal_trainings` DISABLE KEYS */;
INSERT INTO `personal_trainings` VALUES (1,'1986-07-31 03:13:53',1,1,1),(2,'2009-03-28 18:46:59',2,2,2),(3,'1978-03-13 06:41:20',3,3,3),(4,'2014-05-08 01:57:42',4,4,4),(5,'1988-07-18 20:49:51',5,5,5),(6,'1971-01-17 09:06:02',6,6,6),(7,'2009-04-28 22:27:45',7,7,7),(8,'1999-02-03 12:14:29',8,8,8),(9,'2007-01-03 08:15:00',9,9,9),(10,'2012-11-09 01:45:32',10,10,10),(11,'1980-07-21 06:08:04',11,11,11),(12,'2017-11-17 04:34:01',12,12,12),(13,'2014-03-29 03:39:06',13,13,13),(14,'2019-01-13 11:40:45',14,14,14),(15,'1975-10-15 08:59:52',15,15,15),(16,'2009-08-28 14:51:17',16,16,16),(17,'1983-09-13 03:14:41',17,17,17),(18,'2005-05-13 08:16:28',18,18,18),(19,'2003-07-02 04:22:22',19,19,19),(20,'2008-02-21 15:51:26',20,20,20),(21,'1973-07-27 17:51:24',1,21,21),(22,'1975-12-10 07:41:13',2,22,22),(23,'1987-01-25 09:19:52',3,23,23),(24,'1970-08-22 19:43:03',4,24,24),(25,'2017-03-21 04:39:58',5,25,25),(26,'1995-09-27 17:53:09',6,26,26),(27,'1997-03-10 16:22:42',7,27,27),(28,'1981-12-05 21:23:13',8,28,28),(29,'2020-12-17 01:56:26',9,29,29),(30,'1979-06-22 06:38:44',10,30,30),(31,'1985-03-28 18:12:40',11,1,31),(32,'1979-11-07 21:47:43',12,2,32),(33,'2009-03-09 01:15:38',13,3,33),(34,'1972-07-03 00:25:21',14,4,34),(35,'1984-03-29 05:59:43',15,5,35),(36,'2011-12-26 18:41:49',16,6,36),(37,'1986-06-27 03:00:41',17,7,37),(38,'2006-02-26 14:26:39',18,8,38),(39,'1997-02-25 15:20:08',19,9,39),(40,'1999-03-23 06:56:07',20,10,40),(41,'1972-05-10 11:12:40',1,11,41),(42,'2015-04-30 02:17:35',2,12,42),(43,'1992-07-30 15:05:21',3,13,43),(44,'2013-04-17 18:20:54',4,14,44),(45,'1986-05-10 15:21:11',5,15,45),(46,'2010-08-29 03:49:39',6,16,46),(47,'2001-07-17 06:03:56',7,17,47),(48,'1993-02-18 16:35:32',8,18,48),(49,'2004-12-20 16:10:43',9,19,49),(50,'1983-03-05 13:55:48',10,20,50);
/*!40000 ALTER TABLE `personal_trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='дополнительные услуги по прайсу (например, блок персональных тренировок, спортпит и др.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'in','Numquam quis impedit excepturi dolorum dolor omnis reprehenderit.',1868.00,'2021-01-22 00:32:51',NULL),(2,'velit','Aut molestiae qui aperiam libero minima.',3800.00,'2021-01-22 00:32:51',NULL),(3,'eos','Laborum sit mollitia numquam qui incidunt accusantium iusto magnam.',2222.00,'2021-01-22 00:32:51',NULL),(4,'dolor','Totam optio aut totam beatae dolorum occaecati sunt ut.',1493.00,'2021-01-22 00:32:51',NULL),(5,'eum','Commodi consectetur est laboriosam nemo.',2602.00,'2021-01-22 00:32:51',NULL),(6,'impedit','Eum in inventore repellendus molestias.',2831.00,'2021-01-22 00:32:51',NULL),(7,'aliquid','Natus architecto a omnis voluptas.',2896.00,'2021-01-22 00:32:51',NULL),(8,'ea','Laboriosam tempore tenetur alias sequi.',3437.00,'2021-01-22 00:32:51',NULL),(9,'ipsum','Quos cupiditate tempora officia consequatur tempora error et.',1643.00,'2021-01-22 00:32:51',NULL),(10,'dignissimos','Qui et doloremque est voluptatem totam excepturi et.',4263.00,'2021-01-22 00:32:51',NULL),(11,'voluptatem','Nihil ducimus neque earum.',4107.00,'2021-01-22 00:32:51',NULL),(12,'totam','Qui sunt sunt ipsum sit.',4543.00,'2021-01-22 00:32:51',NULL),(13,'rerum','Eligendi illo asperiores blanditiis enim est esse odio est.',1507.00,'2021-01-22 00:32:51',NULL),(14,'ut','Cupiditate sint quia et saepe aliquam quos.',2704.00,'2021-01-22 00:32:51',NULL),(15,'cum','Architecto qui est cum sed tenetur sed.',2479.00,'2021-01-22 00:32:51',NULL),(16,'facere','Alias et consequatur dolor iusto perferendis.',1354.00,'2021-01-22 00:32:51',NULL),(17,'deleniti','Id distinctio omnis aut.',4507.00,'2021-01-22 00:32:51',NULL),(18,'eius','Quasi veritatis optio et libero suscipit itaque atque.',3904.00,'2021-01-22 00:32:51',NULL),(19,'repellat','Non et magni quidem dolores totam.',4776.00,'2021-01-22 00:32:51',NULL),(20,'facere','Laborum consequatur autem aut laborum consequatur amet recusandae.',2807.00,'2021-01-22 00:32:51',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_section` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `club_id` bigint(20) unsigned NOT NULL,
  `trainer_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `trainer_id` (`trainer_id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `sections_ibfk_2` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`),
  CONSTRAINT `sections_ibfk_3` FOREIGN KEY (`club_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='секции и единоборства';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'ad','Iusto necessitatibus maiores ut voluptas itaque omnis facere. Perferendis voluptatem minus veritatis iure id dolores. Illum voluptas sed accusamus voluptatem eius maxime.','2008-05-25 11:47:08',1,1,1),(2,'ex','Quia et labore totam praesentium sunt. Et nostrum ut rem eligendi nihil aperiam.','1989-08-17 05:55:30',2,2,2),(3,'ea','Ut enim molestiae nisi autem. Sunt consequatur et molestiae eaque. Totam natus labore id reprehenderit eligendi hic eveniet porro.','1999-05-18 06:37:16',3,3,3),(4,'odio','Voluptatem ducimus officia beatae et non ea. Et suscipit inventore qui veniam. Consequatur sunt nemo debitis hic. Aperiam perferendis non aut quo et minus.','1973-04-14 09:01:22',4,4,4),(5,'animi','Consequuntur eius cum dicta qui. Enim non nihil totam cum explicabo non. Illum autem aut rerum ut ipsam magni. Incidunt necessitatibus tenetur cum aperiam.','1989-09-05 19:40:24',5,5,5),(6,'repellat','Libero amet nulla fugit. Amet ut voluptas vel nihil nulla rerum tempore. Non inventore dolore quia et. Rerum perferendis sint vitae recusandae saepe commodi sit aut.','1998-02-24 23:21:29',6,6,6),(7,'architecto','Eius architecto porro recusandae qui tempora officia. Nihil vitae vel assumenda rerum molestiae quo corrupti.','1996-06-28 15:13:31',7,7,7),(8,'blanditiis','Dolorem iusto quo reprehenderit dolores. Molestias eaque hic molestiae repellat atque fugit voluptate. Et maxime consequatur et perspiciatis. Voluptatum modi aliquid et dolorem architecto reiciendis.','2012-11-27 06:34:21',8,8,8),(9,'optio','Minima cumque id voluptas voluptatibus. Sed dolores consectetur qui eligendi aut doloremque quae. Sapiente dicta in odit ut harum autem.','2000-12-04 08:53:29',9,9,9),(10,'voluptas','Rerum iste corporis dolor dolores dignissimos praesentium id. Ut ut ipsa amet id numquam dignissimos. Voluptates iure iure voluptatum autem delectus. Dolorum dolorum exercitationem aut non occaecati et.','1970-06-11 04:53:28',10,10,10);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `subscription_type_id` bigint(20) unsigned NOT NULL,
  `started_at` datetime DEFAULT current_timestamp(),
  `finished_at` datetime DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `subscription_type_id` (`subscription_type_id`),
  KEY `idx_subscription` (`client_id`),
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`subscription_type_id`) REFERENCES `subscription_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='абонемент';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,1,1,'2021-01-22 00:28:57',NULL,'','2016-03-21 12:14:05'),(2,2,2,'2021-01-22 00:28:57',NULL,'','1992-09-20 10:51:47'),(3,3,3,'2021-01-22 00:28:57',NULL,'','2000-11-22 06:42:55'),(4,4,4,'2021-01-22 00:28:57',NULL,'\0','1989-07-16 15:12:32'),(5,5,5,'2021-01-22 00:28:57',NULL,'','2015-05-20 10:59:57'),(6,6,1,'2021-01-22 00:28:57',NULL,'\0','1987-12-02 22:24:03'),(7,7,2,'2021-01-22 00:28:57',NULL,'\0','1972-11-06 20:25:04'),(8,8,3,'2021-01-22 00:28:57',NULL,'','2011-09-17 11:10:26'),(9,9,4,'2021-01-22 00:28:57',NULL,'\0','1971-07-18 08:40:47'),(10,10,5,'2021-01-22 00:28:57',NULL,'\0','1978-03-25 23:59:06'),(11,11,1,'2021-01-22 00:28:57',NULL,'\0','2008-01-06 16:43:46'),(12,12,2,'2021-01-22 00:28:57',NULL,'','2017-08-02 20:51:19'),(13,13,3,'2021-01-22 00:28:57',NULL,'\0','2016-01-14 16:49:42'),(14,14,4,'2021-01-22 00:28:57',NULL,'\0','1996-08-10 12:14:53'),(15,15,5,'2021-01-22 00:28:57',NULL,'\0','1978-06-19 20:21:03'),(16,16,1,'2021-01-22 00:28:57',NULL,'','1970-06-22 01:39:12'),(17,17,2,'2021-01-22 00:28:57',NULL,'','1988-10-01 22:09:29'),(18,18,3,'2021-01-22 00:28:57',NULL,'','1979-12-16 21:35:01'),(19,19,4,'2021-01-22 00:28:57',NULL,'\0','1991-01-27 17:31:00'),(20,20,5,'2021-01-22 00:28:57',NULL,'\0','2003-12-09 19:09:16'),(21,21,1,'2021-01-22 00:28:57',NULL,'\0','1977-10-07 23:25:05'),(22,22,2,'2021-01-22 00:28:57',NULL,'','1996-02-29 08:50:40'),(23,23,3,'2021-01-22 00:28:57',NULL,'\0','2014-01-16 21:31:19'),(24,24,4,'2021-01-22 00:28:57',NULL,'\0','2018-10-17 11:09:36'),(25,25,5,'2021-01-22 00:28:57',NULL,'\0','1971-10-19 00:01:12'),(26,26,1,'2021-01-22 00:28:57',NULL,'','2000-05-15 05:23:35'),(27,27,2,'2021-01-22 00:28:57',NULL,'','1988-01-03 16:52:05'),(28,28,3,'2021-01-22 00:28:57',NULL,'\0','1977-06-23 06:28:36'),(29,29,4,'2021-01-22 00:28:57',NULL,'','1988-05-02 21:26:00'),(30,30,5,'2021-01-22 00:28:57',NULL,'\0','1987-10-19 05:35:42'),(31,31,1,'2021-01-22 00:28:57',NULL,'','1984-12-28 05:56:30'),(32,32,2,'2021-01-22 00:28:57',NULL,'','1981-12-05 16:20:20'),(33,33,3,'2021-01-22 00:28:57',NULL,'\0','1978-02-19 17:02:28'),(34,34,4,'2021-01-22 00:28:57',NULL,'\0','2014-09-26 05:04:34'),(35,35,5,'2021-01-22 00:28:57',NULL,'\0','1987-03-30 17:45:56'),(36,36,1,'2021-01-22 00:28:57',NULL,'','2007-09-11 17:06:16'),(37,37,2,'2021-01-22 00:28:57',NULL,'','2001-09-14 00:46:04'),(38,38,3,'2021-01-22 00:28:57',NULL,'','1983-07-06 10:17:09'),(39,39,4,'2021-01-22 00:28:57',NULL,'','2018-09-01 19:25:44'),(40,40,5,'2021-01-22 00:28:57',NULL,'','1971-08-28 10:51:00'),(41,41,1,'2021-01-22 00:28:57',NULL,'\0','1973-06-07 05:27:38'),(42,42,2,'2021-01-22 00:28:57',NULL,'','1990-10-11 14:17:35'),(43,43,3,'2021-01-22 00:28:57',NULL,'\0','1994-07-19 22:51:11'),(44,44,4,'2021-01-22 00:28:57',NULL,'\0','1998-03-12 21:50:27'),(45,45,5,'2021-01-22 00:28:57',NULL,'\0','2020-04-05 05:24:56'),(46,46,1,'2021-01-22 00:28:57',NULL,'\0','1984-09-10 20:39:56'),(47,47,2,'2021-01-22 00:28:57',NULL,'','1973-08-21 00:40:31'),(48,48,3,'2021-01-22 00:28:57',NULL,'\0','1985-05-19 22:40:50'),(49,49,4,'2021-01-22 00:28:57',NULL,'','1983-07-25 23:21:27'),(50,50,5,'2021-01-22 00:28:57',NULL,'','1971-09-16 23:52:12'),(51,51,1,'2021-01-22 00:28:57',NULL,'','2015-06-17 12:49:05'),(52,52,2,'2021-01-22 00:28:57',NULL,'','2011-02-15 09:00:54'),(53,53,3,'2021-01-22 00:28:57',NULL,'\0','1997-10-19 11:00:12'),(54,54,4,'2021-01-22 00:28:57',NULL,'\0','2004-08-03 21:50:08'),(55,55,5,'2021-01-22 00:28:57',NULL,'','2005-10-17 20:48:40'),(56,56,1,'2021-01-22 00:28:57',NULL,'','1987-06-16 17:32:57'),(57,57,2,'2021-01-22 00:28:57',NULL,'','1984-04-24 11:09:56'),(58,58,3,'2021-01-22 00:28:57',NULL,'','1987-04-07 01:05:52'),(59,59,4,'2021-01-22 00:28:57',NULL,'','1972-09-18 18:12:47'),(60,60,5,'2021-01-22 00:28:57',NULL,'','1981-06-04 20:58:02'),(61,61,1,'2021-01-22 00:28:57',NULL,'','1985-12-30 10:30:02'),(62,62,2,'2021-01-22 00:28:57',NULL,'\0','2003-01-21 13:14:29'),(63,63,3,'2021-01-22 00:28:57',NULL,'','2010-04-04 04:24:20'),(64,64,4,'2021-01-22 00:28:57',NULL,'','1998-06-05 03:47:12'),(65,65,5,'2021-01-22 00:28:57',NULL,'\0','1995-07-05 03:57:33'),(66,66,1,'2021-01-22 00:28:57',NULL,'\0','1999-08-21 05:31:30'),(67,67,2,'2021-01-22 00:28:57',NULL,'','1990-05-18 22:14:35'),(68,68,3,'2021-01-22 00:28:57',NULL,'','1983-09-25 13:32:06'),(69,69,4,'2021-01-22 00:28:57',NULL,'','2012-07-02 20:04:43'),(70,70,5,'2021-01-22 00:28:57',NULL,'\0','2015-05-15 15:35:52'),(71,71,1,'2021-01-22 00:28:57',NULL,'\0','1985-10-31 01:13:11'),(72,72,2,'2021-01-22 00:28:57',NULL,'\0','2013-05-23 04:14:31'),(73,73,3,'2021-01-22 00:28:57',NULL,'\0','2016-04-17 13:49:22'),(74,74,4,'2021-01-22 00:28:57',NULL,'','1998-06-15 19:01:08'),(75,75,5,'2021-01-22 00:28:57',NULL,'\0','1976-08-01 02:52:18'),(76,76,1,'2021-01-22 00:28:57',NULL,'','1994-02-06 23:48:54'),(77,77,2,'2021-01-22 00:28:57',NULL,'\0','1989-12-25 07:32:50'),(78,78,3,'2021-01-22 00:28:57',NULL,'','1991-07-20 04:39:48'),(79,79,4,'2021-01-22 00:28:57',NULL,'\0','1990-05-28 09:28:48'),(80,80,5,'2021-01-22 00:28:57',NULL,'','1996-05-06 06:58:52'),(81,81,1,'2021-01-22 00:28:57',NULL,'','1972-08-12 11:07:08'),(82,82,2,'2021-01-22 00:28:57',NULL,'','2002-11-12 00:26:27'),(83,83,3,'2021-01-22 00:28:57',NULL,'','2014-01-16 08:56:57'),(84,84,4,'2021-01-22 00:28:57',NULL,'\0','2002-04-04 06:10:54'),(85,85,5,'2021-01-22 00:28:57',NULL,'\0','1998-09-11 14:14:17'),(86,86,1,'2021-01-22 00:28:57',NULL,'\0','1971-02-17 14:27:37'),(87,87,2,'2021-01-22 00:28:57',NULL,'\0','1970-11-12 07:28:41'),(88,88,3,'2021-01-22 00:28:57',NULL,'','2002-07-03 01:24:13'),(89,89,4,'2021-01-22 00:28:57',NULL,'','2007-09-11 19:32:07'),(90,90,5,'2021-01-22 00:28:57',NULL,'','1976-06-19 13:43:51'),(91,91,1,'2021-01-22 00:28:57',NULL,'','1971-10-14 21:48:54'),(92,92,2,'2021-01-22 00:28:57',NULL,'\0','2011-02-12 14:18:48'),(93,93,3,'2021-01-22 00:28:57',NULL,'','1981-11-19 06:15:50'),(94,94,4,'2021-01-22 00:28:57',NULL,'\0','1983-03-15 20:33:24'),(95,95,5,'2021-01-22 00:28:57',NULL,'','1984-08-07 08:22:54'),(96,96,1,'2021-01-22 00:28:57',NULL,'\0','1984-10-21 11:48:33'),(97,97,2,'2021-01-22 00:28:57',NULL,'\0','1987-11-11 09:07:06'),(98,98,3,'2021-01-22 00:28:57',NULL,'','2004-02-20 07:12:51'),(99,99,4,'2021-01-22 00:28:57',NULL,'\0','1996-10-20 05:21:08'),(100,100,5,'2021-01-22 00:28:57',NULL,'\0','2006-12-29 06:58:12');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_type`
--

DROP TABLE IF EXISTS `subscription_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_name` (`subscription_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='различные абонементы, например круглосуточный доступ, только вечерние или только групповые тренировки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_type`
--

LOCK TABLES `subscription_type` WRITE;
/*!40000 ALTER TABLE `subscription_type` DISABLE KEYS */;
INSERT INTO `subscription_type` VALUES (1,' \"evening trainings 18-6\"',9673.00),(2,' \"group trainings only\"',9751.00),(3,'\"full day 24/7\"',6796.00),(4,' \"morning trainings 6-18\"',7586.00),(5,' \"personal trainings only:',6463.00);
/*!40000 ALTER TABLE `subscription_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wage` int(10) unsigned DEFAULT 30000,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Тренеры';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
INSERT INTO `trainers` VALUES (1,'Hallie','Koelpin','uwaelchi@example.net',97940),(2,'Fanny','Rowe','theron90@example.com',68169),(3,'Willard','Murazik','grimes.robbie@example.net',24135),(4,'Patience','Keeling','barton.cale@example.com',87188),(5,'Isabelle','Hahn','cgleason@example.net',43247),(6,'Karli','Kuphal','vida.cronin@example.net',84637),(7,'Karl','Hahn','selena.predovic@example.org',77001),(8,'Ila','Batz','albertha19@example.net',86179),(9,'Abagail','Ledner','gpfannerstill@example.net',88424),(10,'Jaiden','Gerlach','vmohr@example.com',37021),(11,'Muhammad','Cummerata','hagenes.emie@example.net',29659),(12,'Ramon','Dietrich','mbeer@example.org',23741),(13,'Raphaelle','Kertzmann','hayes.demarcus@example.com',97951),(14,'Mona','Hahn','ibogisich@example.net',53143),(15,'Betsy','Wiegand','nmccullough@example.com',45704),(16,'Jonathon','Collins','ettie33@example.org',85437),(17,'Natalie','Schuster','wilkinson.corene@example.net',33008),(18,'Ines','Wyman','keenan.ruecker@example.org',63499),(19,'Claudine','Rowe','fo\'keefe@example.com',27661),(20,'Lula','Dickinson','terry.nina@example.org',71526),(21,'Fletcher','Upton','heidi15@example.net',43400),(22,'Hubert','Schaefer','bins.paul@example.net',51304),(23,'Jadyn','Collier','justina.simonis@example.org',68758),(24,'Myrtle','Hauck','ppacocha@example.org',35364),(25,'Myrna','Huel','lakin.madison@example.org',42789),(26,'Eulalia','Cole','ifisher@example.org',29628),(27,'Deon','Corwin','russ43@example.com',79809),(28,'Bennett','Bode','craig82@example.com',80239),(29,'Hilbert','Jaskolski','howell.emmanuelle@example.com',82318),(30,'Vanessa','Kunde','go\'connell@example.net',49841);
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-22  0:33:13
