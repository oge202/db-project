CREATE TABLE Hotel (
    Adresse INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(250) NOT NULL,
    Events VARCHAR(250) NOT NULL
);

CREATE TABLE Zimmer ( 
    Zimmer_Nr INT AUTO_INCREMENT PRIMARY KEY,
    Anzahl_Gäste INT,
    Preis_pro_Nacht NUMERIC(7,2),
    Zimmer_Art VARCHAR(150),
    Anzahl_Nächte INT,
    FOREIGN KEY (hotel_adresse) REFERENCES Hotel(Adresse)
);

CREATE TABLE Kunde (
    kunden_id INT AUTO_INCREMENT PRIMARY KEY,
    Handynummer VARCHAR(13) NOT NULL UNIQUE
    Name VARCHAR(100),
    Kreditkarteninformation VARCHAR (100) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Mitarbeiter (
    Mitarbeiter_id INT AUTO_INCREMENT PRIMARY KEY
    Name VARCHAR (50),
    Rolle VARCHAR(100)
    FOREIGN KEY (hotel_adresse) REFERENCES Hotel(Adresse)
);

CREATE TABLE Restaurant