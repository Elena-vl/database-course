CREATE database `example`;
CREATE TABLE `example`.`users` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
INSERT INTO `example`.`users` (`id`, `name`) VALUES ('1', 'test1');
INSERT INTO `example`.`users` (`id`, `name`) VALUES ('2', 'test2');
INSERT INTO `example`.`users` (`id`, `name`) VALUES ('3', 'test3');