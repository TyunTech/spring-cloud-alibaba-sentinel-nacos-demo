DROP DATABASE  IF EXISTS `spring_security_custom_user_demo`;

CREATE DATABASE  IF NOT EXISTS `spring_security_custom_user_demo` default char set utf8 collate utf8_general_ci;
USE `spring_security_custom_user_demo`;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(80) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `user` (username,password,first_name,last_name,email)
VALUES
('john','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','John','Doe','john@lavenliu.cn'),
('mary','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','Mary','Public','mary@lavenliu.cn'),
('susan','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','Susan','Adams','susan@lavenliu.cn');


--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `role` (name)
VALUES
('ROLE_EMPLOYEE'),('ROLE_MANAGER'),('ROLE_ADMIN');

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,

  PRIMARY KEY (`user_id`,`role_id`),

  KEY `FK_ROLE_idx` (`role_id`),

  CONSTRAINT `FK_USER_05` FOREIGN KEY (`user_id`)
  REFERENCES `user` (`id`)
  ON DELETE NO ACTION ON UPDATE NO ACTION,

  CONSTRAINT `FK_ROLE` FOREIGN KEY (`role_id`)
  REFERENCES `role` (`id`)
  ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (user_id,role_id)
VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3)

