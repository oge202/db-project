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

CREATE TABLE Buchung (
    id INT PRIMARY KEY AUTO AUTO_INCREMENT,
    kunden_id INT,
    Zimmer_Nr INT
    Buchungsdatum DATE DEFAULT CURRENT_DATE 
    FOREIGN KEY (kunden_id) REFERENCES Kunde(kunden_id),
    FOREIGN KEY (Zimmer_Nr) REFERENCES Zimmer(Zimmer_Nr)
)
CREATE TABLE Mitarbeiter (
    Mitarbeiter_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR (50),
    Rolle VARCHAR(100)
    FOREIGN KEY (hotel_adresse) REFERENCES Hotel(Adresse)
);


CREATE TABLE Restaurant (
    Restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Stockort VARCHAR(50),
    Oeffnungszeiten VARCHAR(50)
);

CREATE TABLE Speise (
    Speise_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Preis NUMERIC(6,2) NOT NULL,
    Art VARCHAR(50) --Vorspeise, Hauptgericht oder Dessert?
);

CREATE TABLE Getraenk (
    Getraenk_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Preis NUMERIC(6,2) NOT NULL,
    Art VARCHAR(50) -- Softdrink, Alkoholisches Getränk
);

CREATE TABLE Bestellung (
    Bestellung_id INT PRIMARY KEY AUTO_INCREMENT,
    Restaurant_id INT,
    Speise_id INT,
    Getraenk_id INT,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id),
    FOREIGN KEY (speise_id) REFERENCES Speise(speise_id),
    FOREIGN KEY (getraenk_id) REFERENCES Getraenk(getraenk_id),
    
);

CREATE TABLE Parkplatz (
    parkplatz_id INT AUTO_INCREMENT PRIMARY KEY,
    nummer VARCHAR(10) NOT NULL UNIQUE,
    kunde_id INT,
    FOREIGN KEY (kunde_id) REFERENCES Kunde(kunden_id)
);

CREATE TABLE ParkplatzReservierung (
    reservierung_id INT AUTO_INCREMENT PRIMARY KEY,
    parkplatz_id INT,
    kunde_id INT,
    FOREIGN KEY (parkplatz_id) REFERENCES Parkplatz(parkplatz_id),
    FOREIGN KEY (kunde_id) REFERENCES Kunde(kunden_id)
);

)