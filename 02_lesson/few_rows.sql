/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `help_keyword` VALUES (0,'HELP_DATE'),(1,'HELP_VERSION'),(2,'DEFAULT'),(3,'SERIAL'),(4,'VALUE'),(5,'HELP'),(6,'ASYMMETRIC_DECRYPT'),(7,'ASYMMETRIC_DERIVE'),(8,'ASYMMETRIC_ENCRYPT'),(9,'ASYMMETRIC_SIGN'),(10,'ASYMMETRIC_VERIFY'),(11,'CREATE_ASYMMETRIC_PRIV_KEY'),(12,'CREATE_ASYMMETRIC_PUB_KEY'),(13,'CREATE_DH_PARAMETERS'),(14,'CREATE_DIGEST'),(15,'FALSE'),(16,'TRUE'),(17,'BOOL'),(18,'BOOLEAN'),(19,'INT1'),(20,'UNSIGNED'),(21,'ZEROFILL'),(22,'INT2'),(23,'INT3'),(24,'MIDDLEINT'),(25,'INT4'),(26,'INTEGER'),(27,'INT8'),(28,'DEC'),(29,'FIXED'),(30,'NUMERIC'),(31,'DECIMAL'),(32,'FLOAT4'),(33,'FLOAT8'),(34,'PRECISION'),(35,'REAL'),(36,'DATE'),(37,'TIMESTAMP'),(38,'TIME'),(39,'CHARACTER'),(40,'NATIONAL'),(41,'NCHAR'),(42,'BYTE'),(43,'CHAR'),(44,'NVARCHAR'),(45,'VARCHARACTER'),(46,'VARYING'),(47,'LONG'),(48,'LONGBINARY'),(49,'ADD'),(50,'ALTER'),(51,'CREATE'),(52,'INDEX'),(53,'KEY'),(54,'TABLE'),(55,'='),(56,'<=>'),(57,'<>'),(58,'<='),(59,'<'),(60,'>='),(61,'>'),(62,'AND'),(63,'BETWEEN'),(64,'NOT'),(65,'COALESCE'),(66,'GREATEST'),(67,'IN'),(68,'INTERVAL'),(69,'IS'),(70,'NULL'),(71,'ISNULL'),(72,'LEAST'),(73,'OR'),(74,'XOR'),(75,':='),(76,'CASE'),(77,'ELSE'),(78,'END'),(79,'THEN'),(80,'WHEN'),(81,'IF'),(82,'IFNULL'),(83,'NULLIF'),(84,'+'),(85,'-'),(86,'*'),(87,'/'),(88,'DIV'),(89,'MOD'),(90,'ABS'),(91,'ACOS'),(92,'ASIN'),(93,'ATAN'),(94,'ATAN2'),(95,'CEIL'),(96,'CEILING'),(97,'CONV'),(98,'COS'),(99,'COT');
