CREATE DATABASE  IF NOT EXISTS `ssafytest`;
USE `ssafytest`;

DROP TABLE IF EXISTS `electronics`;

CREATE TABLE `electronics` (
  `electronicsCode` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `price` int NOT NULL,
  `company` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`electronicsCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `electronics` WRITE;
INSERT INTO `electronics` VALUES ('ios-2655','iphoneX','휴대폰',1700000,'애플'),('S236ZD95P','갤럭시S24','휴대폰',1475900,'삼성'),('NT550XDZ-AD5A','갤럭시 폴드','휴대폰',1729000,'삼성'),('NT750XFT-A71A','갤럭시북3','노트북',1280000,'삼성'),('MNP23KHA','애플워치 8 45mm','스마트워치',639000,'애플');

UNLOCK TABLES;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES ('admin','admin'),('ssafy','ssafy');
UNLOCK TABLES;
