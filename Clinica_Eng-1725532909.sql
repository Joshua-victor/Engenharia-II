CREATE TABLE IF NOT EXISTS `Medico1421292` (
	`Crm` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Nome` varchar(50) NOT NULL,
	`Salario` decimal(30) NOT NULL,
	`Especialidade` varchar(10) NOT NULL,
	PRIMARY KEY (`Crm`)
);

CREATE TABLE IF NOT EXISTS `Paciente1421292` (
	`CPF` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Nome` varchar(10) NOT NULL,
	`Endereço` varchar(10) NOT NULL,
	`Telefone` varchar(10) NOT NULL,
	`Data_Nasc` date NOT NULL,
	`Quarto` int NOT NULL,
	PRIMARY KEY (`CPF`)
);

CREATE TABLE IF NOT EXISTS `Tratamento1421292` (
	`CPFPaciente` int AUTO_INCREMENT NOT NULL UNIQUE,
	`CRMMedico` varchar(10) NOT NULL,
	`Responsavel` boolean NOT NULL,
	PRIMARY KEY (`CPFPaciente`, `CRMMedico`)
);



ALTER TABLE `Tratamento1421292` ADD CONSTRAINT `Tratamento1421292_fk0` FOREIGN KEY (`CPFPaciente`) REFERENCES `Paciente1421292`(`CPF`);

ALTER TABLE `Tratamento1421292` ADD CONSTRAINT `Tratamento1421292_fk1` FOREIGN KEY (`CRMMedico`) REFERENCES `Medico1421292`(`Crm`);