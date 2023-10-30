CREATE SCHEMA IF NOT EXISTS `linknamu` DEFAULT CHARACTER SET utf8mb4;

-- MySQL 8.0 이상에서는 CREATE USER와 ALTER USER를 사용하여 사용자를 생성하고 비밀번호를 설정합니다.
GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON linknamu.* TO 'root'@'localhost';

FLUSH PRIVILEGES;