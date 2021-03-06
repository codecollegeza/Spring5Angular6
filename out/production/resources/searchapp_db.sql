-- DATABASE AND SYS USER --
DROP DATABASE IF EXISTS searchapp;
DROP USER IF EXISTS searchapp_user;

CREATE USER searchapp_user IDENTIFIED BY 'dbuser123';
CREATE DATABASE searchapp CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON searchapp.* TO searchapp_user WITH GRANT OPTION;

USE searchapp;

-- TABLES --
CREATE TABLE topic (
                     id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                     name VARCHAR(80) NULL DEFAULT NULL,
                     description VARCHAR(5000) NULL DEFAULT NULL,
                     text_field1 VARCHAR(5000) NULL DEFAULT NULL,
                     text_field2 VARCHAR(5000) NULL DEFAULT NULL,
                     created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
ENGINE=InnoDB;
