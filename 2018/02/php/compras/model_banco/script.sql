-- MySQL Script generated by MySQL Workbench
-- seg 17 set 2018 19:38:59 -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema compras
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema compras
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `compras` ;
USE `compras` ;

-- -----------------------------------------------------
-- Table `compras`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `compras`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`idcliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `compras`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `compras`.`produto` (
  `idproduto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `codigo_barras` VARCHAR(45) NULL,
  PRIMARY KEY (`idproduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `compras`.`itens_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `compras`.`itens_venda` ( `iditens_venda` INT NOT NULL AUTO_INCREMENT, `decimal` DECIMAL NULL, `cliente_idcliente` INT NOT NULL, `produto_idproduto` INT NOT NULL, PRIMARY KEY (`iditens_venda`), CONSTRAINT `fk_itens_venda_cliente` FOREIGN KEY (`cliente_idcliente`) REFERENCES `compras`.`cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION, CONSTRAINT `fk_itens_venda_produto1` FOREIGN KEY (`produto_idproduto`) REFERENCES `compras`.`produto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION) ENGINE = InnoDB ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
