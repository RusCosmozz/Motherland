-- MySQL Script generated by MySQL Workbench
-- Wed Nov  6 12:40:00 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Motherland
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Motherland` ;

-- -----------------------------------------------------
-- Schema Motherland
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Motherland` DEFAULT CHARACTER SET utf8 ;
USE `Motherland` ;

-- -----------------------------------------------------
-- Table `Motherland`.`contract`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Motherland`.`contract` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Motherland`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Motherland`.`supplier` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `phoneNum` VARCHAR(45) NOT NULL,
  `contractId` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `addres_UNIQUE` (`address` ASC) VISIBLE,
  UNIQUE INDEX `phoneNum_UNIQUE` (`phoneNum` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `contract_Id_idx` (`contractId` ASC) VISIBLE,
  CONSTRAINT `contract_Id`
    FOREIGN KEY (`contractId`)
    REFERENCES `Motherland`.`contract` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Motherland`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Motherland`.`client` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `phoneNum` VARCHAR(45) NOT NULL,
  `contractId` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `address_UNIQUE` (`address` ASC) VISIBLE,
  UNIQUE INDEX `phoneNum_UNIQUE` (`phoneNum` ASC) VISIBLE,
  INDEX `contractId__idx` (`contractId` ASC) VISIBLE,
  CONSTRAINT `contractId_`
    FOREIGN KEY (`contractId`)
    REFERENCES `Motherland`.`contract` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Motherland`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Motherland`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `supplierId` INT NULL,
  `countOfProduct` INT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `supplier_idx` (`supplierId` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `supplierId_`
    FOREIGN KEY (`supplierId`)
    REFERENCES `Motherland`.`supplier` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Motherland`.`transportcompany`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Motherland`.`transportcompany` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `phoneNum` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `address_UNIQUE` (`address` ASC) VISIBLE,
  UNIQUE INDEX `phoneNum_UNIQUE` (`phoneNum` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Motherland`.`bill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Motherland`.`bill` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NULL,
  `clientId` INT NULL,
  `productId` INT NULL,
  `countOfProduct` INT NOT NULL,
  `sum` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `client_idx` (`clientId` ASC) VISIBLE,
  INDEX `product_idx` (`productId` ASC) VISIBLE,
  CONSTRAINT `clientId_`
    FOREIGN KEY (`clientId`)
    REFERENCES `Motherland`.`client` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `productId_`
    FOREIGN KEY (`productId`)
    REFERENCES `Motherland`.`product` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Motherland`.`invoicepurchase`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Motherland`.`invoicepurchase` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `supplierId` INT NULL,
  `transportCompanyId` INT NULL,
  `productId` INT NULL,
  `countOfProduct` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `product_idx` (`productId` ASC) VISIBLE,
  INDEX `supplier_idx` (`supplierId` ASC) VISIBLE,
  INDEX `transportcompany_idx` (`transportCompanyId` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `productId`
    FOREIGN KEY (`productId`)
    REFERENCES `Motherland`.`product` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `supplierId`
    FOREIGN KEY (`supplierId`)
    REFERENCES `Motherland`.`supplier` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `transportCompanyId`
    FOREIGN KEY (`transportCompanyId`)
    REFERENCES `Motherland`.`transportcompany` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Motherland`.`invoiceexpenditure`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Motherland`.`invoiceexpenditure` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `clientId` INT NULL,
  `productId` INT NULL,
  `countOfProduct` INT NOT NULL,
  `billId` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `client_idx` (`clientId` ASC) VISIBLE,
  INDEX `product_idx` (`productId` ASC) VISIBLE,
  INDEX `bill_idx` (`billId` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `clientId__`
    FOREIGN KEY (`clientId`)
    REFERENCES `Motherland`.`client` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `productId_-`
    FOREIGN KEY (`productId`)
    REFERENCES `Motherland`.`product` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `billId`
    FOREIGN KEY (`billId`)
    REFERENCES `Motherland`.`bill` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Motherland`.`supplier`
-- -----------------------------------------------------
START TRANSACTION;
USE `Motherland`;
INSERT INTO `Motherland`.`supplier` (`id`, `name`, `address`, `phoneNum`, `contractId`) VALUES (1, 'Postern', 'aaaa', '89646237416', NULL);
INSERT INTO `Motherland`.`supplier` (`id`, `name`, `address`, `phoneNum`, `contractId`) VALUES (2, 'Moron', 'bbb', '87564526472', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Motherland`.`client`
-- -----------------------------------------------------
START TRANSACTION;
USE `Motherland`;
INSERT INTO `Motherland`.`client` (`id`, `name`, `address`, `phoneNum`, `contractId`) VALUES (1, 'Magnit', 'rere', '78564632323', NULL);
INSERT INTO `Motherland`.`client` (`id`, `name`, `address`, `phoneNum`, `contractId`) VALUES (2, 'Diks', 'erer', '76548989922', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Motherland`.`product`
-- -----------------------------------------------------
START TRANSACTION;
USE `Motherland`;
INSERT INTO `Motherland`.`product` (`id`, `name`, `supplierId`, `countOfProduct`, `price`) VALUES (1, NULL, 1, 10, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Motherland`.`transportcompany`
-- -----------------------------------------------------
START TRANSACTION;
USE `Motherland`;
INSERT INTO `Motherland`.`transportcompany` (`id`, `name`, `address`, `phoneNum`) VALUES (1, 'Trans', 'ccc', '78566574535');
INSERT INTO `Motherland`.`transportcompany` (`id`, `name`, `address`, `phoneNum`) VALUES (2, 'Yogi', 'ddd', '73546257865');

COMMIT;

-- -----------------------------------------------------
-- Data for table `Motherland`.`transportcompany`
-- -----------------------------------------------------
START TRANSACTION;
USE `Motherland`;
INSERT INTO `Motherland`.`user` (`id`, `username`, `password`, `role`) VALUES (1, 'Морозов А.Н.', 'director', 'director');
INSERT INTO `Motherland`.`user` (`id`, `username`, `password`, `role`) VALUES (2, 'Смирнов Е.А.', '1234', 'sales manager');
INSERT INTO `Motherland`.`user` (`id`, `username`, `password`, `role`) VALUES (3, 'Шаповалов С.И.', '1234', 'distrib. manager');

COMMIT;

