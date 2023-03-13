CREATE TABLE `Etel` (
  `ID` integer PRIMARY KEY AUTO_INCREMENT,
  `nev` string,
  `ar` integer,
  `kategoria` string,
  `telefonszam` int
);

CREATE TABLE `Felhasznalo` (
  `ID` integer PRIMARY KEY AUTO_INCREMENT,
  `f_nev` integer,
  `jelszo` integer,
  `jogosultsag` string
);

CREATE TABLE `Etterem` (
  `ID` integer PRIMARY KEY AUTO_INCREMENT,
  `nev` string,
  `telepules` string,
  `utca` string,
  `hazszam` int
);

CREATE TABLE `Rendeles` (
  `ID` int PRIMARY KEY AUTO_INCREMENT,
  `etteremID` int,
  `etelID` int NOT NULL,
  `felhasznaloID` int NOT NULL,
  `ar` int,
  `megjegyzes` string,
  `datum` date,
  `allapot` int,
  `kiszallitas` bool,
  `bankkartya` bool
);

ALTER TABLE `Rendeles` ADD FOREIGN KEY (`etteremID`) REFERENCES `Etterem` (`ID`);

ALTER TABLE `Rendeles` ADD FOREIGN KEY (`etelID`) REFERENCES `Etel` (`ID`);

ALTER TABLE `Rendeles` ADD FOREIGN KEY (`felhasznaloID`) REFERENCES `Felhasznalo` (`ID`);
