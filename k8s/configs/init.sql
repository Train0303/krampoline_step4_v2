CREATE SCHEMA IF NOT EXISTS `krampoline` DEFAULT CHARACTER SET utf8mb4;

-- MySQL 8.0 이상에서는 CREATE USER와 ALTER USER를 사용하여 사용자를 생성하고 비밀번호를 설정합니다.
CREATE USER IF NOT EXISTS 'root'@'localhost' IDENTIFIED BY 'root';
GRANT ALL ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT ALL ON krampoline.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `krampoline`;

DROP TABLE IF EXISTS `sample_data`;
CREATE TABLE `sample_data` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `detail` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- id 컬럼의 값을 명시적으로 지정하지 않고 자동 증가 값을 사용합니다.
INSERT INTO sample_data (`detail`) VALUES (1, 'Hello DKOS!');
