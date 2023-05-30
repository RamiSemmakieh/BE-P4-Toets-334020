-- Check if the database exists
DROP DATABASE IF EXISTS `mvc2209aP4toets`;

-- Create a new Database
CREATE DATABASE IF NOT EXISTS `mvc2209aP4toets`;

-- Use database Mvc-2209a-P4
USE mvc2209aP4toets;

DROP TABLE IF EXISTS `ExamenPerExaminator`;
DROP TABLE IF EXISTS `Examen`;
DROP TABLE IF EXISTS `Examinator`;

CREATE TABLE IF NOT EXISTS `Examen` (
  `Id` INT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `StudentId` INT(6) NOT NULL,
  `Rijschool` VARCHAR(50) NOT NULL,
  `Stad` VARCHAR(30) NOT NULL,
  `Rijbewijscategorie` VARCHAR(10) NOT NULL,
  `Datum` DATE NOT NULL,
  `Uitslag` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Examen
(
     StudentId
    ,Rijschool
    ,Stad
    ,Rijbewijscategorie
    ,Datum
    ,Uitslag
)
VALUES
     ('100234', 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03','Geslaagd')
    ,('123432', 'InZijnVierDoorDeBocht', 'Slierdrecht', 'C', '2023-03-01', 'Geslaagd')
    ,('103234', 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd')
    ,('106452', 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt')
    ,('104546', 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt')
    ,('104546', 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd')
    ,('124444', 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd');
    
CREATE TABLE IF NOT EXISTS `Examinator` (
  `Id` INT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Voornaam` VARCHAR(50) NOT NULL,
  `Tussenvoegsel` VARCHAR(25) NOT NULL,
  `Achternaam` VARCHAR(50) NOT NULL,
  `Mobiel` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Examinator
(
     Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Mobiel

)
VALUES
     ('Manuel', 'van', 'Meekeren', '06-28493823')
     ,('Lissette', 'den', 'Dongen', '06-24383299')
     ,('Jurswailly', '', 'Luciano', '06-48293846')
     ,('Naswha', '', 'Salawi', '06-34291219');

CREATE TABLE IF NOT EXISTS `ExamenPerExaminator` (
  `Id` INT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ExamenId` INT(3) UNSIGNED NOT NULL,
  `ExaminatorId` INT(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`ExamenId`) REFERENCES `Examen`(`Id`),
  FOREIGN KEY (`ExaminatorId`) REFERENCES `Examinator`(`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO ExamenPerExaminator
(
     ExamenId
    ,ExaminatorId

)
VALUES
     ('1', '3')
    ,('3', '3')
    ,('2', '2')
    ,('4', '1')
    ,('7', '3')
    ,('6', '2')
    ,('5', '4');