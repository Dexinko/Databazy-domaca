DROP DATABASE IF EXISTS moja_databaza;

CREATE DATABASE moja_databaza;

USE moja_databaza;


CREATE TABLE dodavatelia (
    id INT PRIMARY KEY,
    nazov_dodavatela VARCHAR(100) NOT NULL
);

CREATE TABLE papiernictvo (
    id INT PRIMARY KEY,
    nazov_tovaru VARCHAR(100) NOT NULL,
    kategoria VARCHAR(50) NOT NULL,
    cena_eur DECIMAL(6,2) NOT NULL,
    dodavatel_id INT,

    CONSTRAINT chk_papiernictvo_cena
        CHECK (cena_eur >= 0),

    CONSTRAINT fk_papiernictvo_dodavatelia
        FOREIGN KEY (dodavatel_id)
        REFERENCES dodavatelia(id)
    
);

CREATE TABLE horske_chaty (
    id INT PRIMARY KEY,
    nazov_chaty VARCHAR(100) NOT NULL,
    pohorie VARCHAR(50) NOT NULL,
    nadmorska_vyska_m INT NOT NULL,
    
    CONSTRAINT chk_horske_chaty_vyska
        CHECK (nadmorska_vyska_m > 0)
);
