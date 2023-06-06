-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_gerenciador_tarefas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_gerenciador_tarefas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_gerenciador_tarefas` DEFAULT CHARACTER SET utf8 ;
USE `db_gerenciador_tarefas` ;

-- -----------------------------------------------------
-- Table `db_gerenciador_tarefas`.`usuario`
-- -----------------------------------------------------
CREATE TABLE `usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_gerenciador_tarefas`.`tarefas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_gerenciador_tarefas`.`tarefas` (
  `idtarefas` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(2000) NULL,
  `prioridade` CHAR(30) NOT NULL,
  `status` CHAR(30) NOT NULL,
  `data_lancamento` DATETIME NOT NULL,
  `data_limite` DATETIME NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idtarefas`, `usuario_idusuario`),
  -- INDEX `fk_tarefas_usuario_idx` (`usuario_idusuario` ASC) VISIBLE,
  CONSTRAINT `fk_tarefas_usuario`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `db_gerenciador_tarefas`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
