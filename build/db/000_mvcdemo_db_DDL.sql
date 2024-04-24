-- CREATE DATABASE IF NOT EXISTS mvc_dev_db;
-- USE `mvc_dev_db`;

CREATE TABLE IF NOT EXISTS `tCustomer`
(
    `CustomerPK` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key, used internally',
    `CustomerUUID` VARCHAR( 36 ) NULL COMMENT 'External unique identifier for this item. Can be used in public facing things, URLs and Forms, etc.',
    `FirstName` VARCHAR( 20 ) NULL COMMENT 'Customer first name',
    `LastName` VARCHAR( 20 ) NULL COMMENT 'Customer last name',
    `Email` VARCHAR( 50 ) NULL COMMENT 'Customer email address',
    `Address` VARCHAR( 50 ) NULL COMMENT 'Customer address',
    `City` VARCHAR( 50 ) NULL COMMENT 'Customer city',
    `State` VARCHAR( 2 ) NULL COMMENT 'Customer state code',
    `ZipCode` VARCHAR( 5 ) NULL COMMENT 'Customer zip code',

    PRIMARY KEY  (`CustomerPK`)
)
COMMENT='Customer records'
DEFAULT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_BIN;

CREATE TABLE IF NOT EXISTS `tOrder`
(
    `OrderPK` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key, used internally',
    `OrderUUID` VARCHAR( 36 ) NULL COMMENT 'External unique identifier for this item. Can be used in public facing things, URLs and Forms, etc.',
    `CustomerFK` INT NOT NULL COMMENT 'Foreign key to the customer that placed this order',
    `OrderNumber` INT NOT NULL AUTO_INCREMENT DEFAULT 100 COMMENT 'Customer friendly order number',
    `OrderDate` DATE NULL COMMENT 'Date this order was placed',
    `ShipDate` DATE NULL COMMENT 'Date this order was shipped to customer',

    PRIMARY KEY  (`OrderPK`)
)
COMMENT='Order records'
DEFAULT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_BIN;

