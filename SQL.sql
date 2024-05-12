-- ---
-- Globals
-- ---
-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;
-- ---
-- Table 'Instituição'
-- 
-- ---
DROP TABLE IF EXISTS `Instituição`;

CREATE TABLE `Instituição` (
  `id Instituição` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Nome ` VARCHAR NULL DEFAULT NULL,
  `CNPJ` INTEGER NULL DEFAULT NULL,
  `Data de registro na plataforma` DATE NULL DEFAULT NULL,
  `Cidade` VARCHAR NULL DEFAULT NULL,
  `Estado` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id Instituição`),
  KEY ()
);

-- ---
-- Table 'Ações Voluntárias'
-- 
-- ---
DROP TABLE IF EXISTS `Ações Voluntárias`;

CREATE TABLE `Ações Voluntárias` (
  `id Ações Voluntárias` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Nome` VARCHAR NULL DEFAULT NULL,
  `Descrição` VARCHAR NULL DEFAULT NULL,
  `Número de vagas` INTEGER NULL DEFAULT NULL,
  `Cidade` VARCHAR NULL DEFAULT NULL,
  `Estado` VARCHAR NULL DEFAULT NULL,
  `Data de criação` DATE NULL DEFAULT NULL,
  `Horas de trabalho` TIME NULL DEFAULT NULL,
  PRIMARY KEY (`id Ações Voluntárias`)
);

-- ---
-- Table 'Usuário'
-- 
-- ---
DROP TABLE IF EXISTS `Usuário`;

CREATE TABLE `Usuário` (
  `id Usuário` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Nome` VARCHAR NULL DEFAULT NULL,
  `Idade` YEAR NULL DEFAULT NULL,
  `E-mail` VARCHAR NULL DEFAULT NULL,
  `Senha` VARCHAR NULL DEFAULT NULL,
  `Cidade` VARCHAR NULL DEFAULT NULL,
  `Estado` VARCHAR NULL DEFAULT NULL,
  `País` VARCHAR NULL DEFAULT NULL,
  `Sexo biológico` VARCHAR NULL DEFAULT NULL,
  `Gênero` VARCHAR NULL DEFAULT NULL,
  `Data de registro na plataforma` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id Usuário`)
);

-- ---
-- Table 'Voluntariado'
-- 
-- ---
DROP TABLE IF EXISTS `Voluntariado`;

CREATE TABLE `Voluntariado` (
  `id Voluntariado` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Nome` VARCHAR NULL DEFAULT NULL,
  `Descrição` INTEGER NULL DEFAULT NULL,
  `Horas de trabalho` INTEGER NULL DEFAULT NULL,
  `Data de atuação` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id Voluntariado`)
);

-- ---
-- Table 'Usuários por Ação Voluntária'
-- 
-- ---
DROP TABLE IF EXISTS `Usuários por Ação Voluntária`;

CREATE TABLE `Usuários por Ação Voluntária` (
  `id Usuários por Ação Voluntária ` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Função` VARCHAR NULL DEFAULT NULL,
  `Horas trabalhadas` TIME NULL DEFAULT NULL,
  `Data de inscrição` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id Usuários por Ação Voluntária `)
);

-- ---
-- Table 'Instituição por Ação Voluntária'
-- 
-- ---
DROP TABLE IF EXISTS `Instituição por Ação Voluntária`;

CREATE TABLE `Instituição por Ação Voluntária` (
  `id Instituição por Ação Voluntária` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Função` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id Instituição por Ação Voluntária`)
);

-- ---
-- Foreign Keys 
-- ---
ALTER TABLE
  `Voluntariado`
ADD
  FOREIGN KEY (id Voluntariado) REFERENCES `Usuário` (`id Usuário`);

ALTER TABLE
  `Voluntariado`
ADD
  FOREIGN KEY (id Voluntariado) REFERENCES `Usuário` (`id Usuário`);

ALTER TABLE
  `Usuários por Ação Voluntária`
ADD
  FOREIGN KEY (id Usuários por Ação Voluntária) REFERENCES `Usuário` (`id Usuário`);

ALTER TABLE
  `Usuários por Ação Voluntária`
ADD
  FOREIGN KEY (id Usuários por Ação Voluntária) REFERENCES `Ações Voluntárias` (`id Ações Voluntárias`);

ALTER TABLE
  `Usuários por Ação Voluntária`
ADD
  FOREIGN KEY (id Usuários por Ação Voluntária) REFERENCES `Usuário` (`id Usuário`);

ALTER TABLE
  `Instituição por Ação Voluntária`
ADD
  FOREIGN KEY (id Instituição por Ação Voluntária) REFERENCES `Ações Voluntárias` (`id Ações Voluntárias`);

ALTER TABLE
  `Instituição por Ação Voluntária`
ADD
  FOREIGN KEY (id Instituição por Ação Voluntária) REFERENCES `Instituição` (`id Instituição`);

-- ---
-- Table Properties
-- ---
-- ALTER TABLE `Instituição` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Ações Voluntárias` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Usuário` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Voluntariado` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Usuários por Ação Voluntária` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Instituição por Ação Voluntária` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ---
-- Test Data
-- ---
-- INSERT INTO `Instituição` (`id Instituição`,`Nome `,`CNPJ`,`Data de registro na plataforma`,`Cidade`,`Estado`) VALUES
-- ('','','','','','');
-- INSERT INTO `Ações Voluntárias` (`id Ações Voluntárias`,`Nome`,`Descrição`,`Número de vagas`,`Cidade`,`Estado`,`Data de criação`,`Horas de trabalho`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `Usuário` (`id Usuário`,`Nome`,`Idade`,`E-mail`,`Senha`,`Cidade`,`Estado`,`País`,`Sexo biológico`,`Gênero`,`Data de registro na plataforma`) VALUES
-- ('','','','','','','','','','','');
-- INSERT INTO `Voluntariado` (`id Voluntariado`,`Nome`,`Descrição`,`Horas de trabalho`,`Data de atuação`) VALUES
-- ('','','','','');
-- INSERT INTO `Usuários por Ação Voluntária` (`id Usuários por Ação Voluntária `,`Função`,`Horas trabalhadas`,`Data de inscrição`) VALUES
-- ('','','','');
-- INSERT INTO `Instituição por Ação Voluntária` (`id Instituição por Ação Voluntária`,`Função`) VALUES
-- ('','');