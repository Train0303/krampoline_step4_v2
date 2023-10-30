CREATE SCHEMA IF NOT EXISTS `linknamu` DEFAULT CHARACTER SET utf8mb4;

create user root@'%' identified by 'root'
GRANT ALL ON linknamu.* TO root@'%';
FLUSH PRIVILEGES;