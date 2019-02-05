CREATE TABLE IF NOT EXISTS `print_jobs` (
  `instance` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL, 
  `status` varchar(255) NOT NULL, 
  `data` TEXT DEFAULT NULL,
  `printer` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `print_file_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `print_jobs_ibfk_1` FOREIGN KEY (`print_file_id`) REFERENCES `print_files` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `print_jobs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;