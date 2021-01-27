-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`discounts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`discounts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `percent` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `condition` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `passport` VARCHAR(45) NULL,
  `phone` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`appartment_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`appartment_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `price` DECIMAL(10,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`type_media`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`type_media` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`media`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`media` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `link` VARCHAR(45) NOT NULL,
  `type_media_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_media_type_media1_idx` (`type_media_id` ASC) VISIBLE,
  CONSTRAINT `fk_media_type_media1`
    FOREIGN KEY (`type_media_id`)
    REFERENCES `mydb`.`type_media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`appartment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`appartment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `room_number` INT NOT NULL DEFAULT 1,
  `appartment_type_id` INT NOT NULL,
  `media_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_appartment_appartment_type1_idx` (`appartment_type_id` ASC) VISIBLE,
  INDEX `fk_appartment_media1_idx` (`media_id` ASC) VISIBLE,
  CONSTRAINT `fk_appartment_appartment_type1`
    FOREIGN KEY (`appartment_type_id`)
    REFERENCES `mydb`.`appartment_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_appartment_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `mydb`.`media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`appartment_reserv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`appartment_reserv` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `appartment_id` INT NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_appartment_reserv_customer1_idx` (`customer_id` ASC) VISIBLE,
  INDEX `fk_appartment_reserv_spr_appartment1_idx` (`appartment_id` ASC) VISIBLE,
  CONSTRAINT `fk_appartment_reserv_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `mydb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_appartment_reserv_spr_appartment1`
    FOREIGN KEY (`appartment_id`)
    REFERENCES `mydb`.`appartment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`appartment_cust`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`appartment_cust` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cust_date` DATE NOT NULL,
  `appartment_id` INT NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `appartment_price` DECIMAL(10) NOT NULL,
  `discounts_id` INT NULL,
  `appartment_reserv_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_appartment_cust_discounts1_idx` (`discounts_id` ASC) VISIBLE,
  INDEX `fk_appartment_cust_appartment_reserv1_idx` (`appartment_reserv_id` ASC) VISIBLE,
  CONSTRAINT `fk_appartment_cust_discounts1`
    FOREIGN KEY (`discounts_id`)
    REFERENCES `mydb`.`discounts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_appartment_cust_appartment_reserv1`
    FOREIGN KEY (`appartment_reserv_id`)
    REFERENCES `mydb`.`appartment_reserv` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`appartment_cust_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`appartment_cust_detail` (
  `customer_id` INT NOT NULL,
  `appartment_cust_id` INT NOT NULL,
  INDEX `fk_appartment_cust_detail_customer_idx` (`customer_id` ASC) VISIBLE,
  INDEX `fk_appartment_cust_detail_appartment_cust1_idx` (`appartment_cust_id` ASC) VISIBLE,
  CONSTRAINT `fk_appartment_cust_detail_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `mydb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_appartment_cust_detail_appartment_cust1`
    FOREIGN KEY (`appartment_cust_id`)
    REFERENCES `mydb`.`appartment_cust` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`users_booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users_booking` (
  `customer_id` INT NOT NULL,
  `number_bookings` INT NULL DEFAULT 0,
  INDEX `fk_users_booking_customer1_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_booking_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `mydb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
