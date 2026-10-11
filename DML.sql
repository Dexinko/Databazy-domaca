USE moja_databaza;

INSERT INTO dodavatelia (id, nazov_dodavatela) VALUES
(1, 'Papier Plus'),
(2, 'Školské potreby s.r.o.'),
(3, 'Kreatívny svet'),
(4, 'Univerzálny dodávateľ');


INSERT INTO papiernictvo
    (id, nazov_tovaru, kategoria, cena_eur, dodavatel_id)
VALUES
(1, 'Zošit A5', 'Zošity', 1.50, 1),
(2, 'Zošit A4', 'Zošity', 2.50, 1),
(3, 'Pero modré', 'Písacie potreby', 1.20, 2),
(4, 'Ceruzka', 'Písacie potreby', 0.80, 2),
(5, 'Guma', 'Písacie potreby', 0.70, 2),
(6, 'Pravítko 30 cm', 'Pomôcky', 1.50, 1),
(7, 'Farebné ceruzky', 'Kreslenie', 4.50, 3),
(8, 'Vodové farby', 'Kreslenie', 3.90, 3),
(9, 'Lepidlo', 'Lepenie', 2.20, 3),
(10, 'Nožnice', 'Pomôcky', 3.50, 1);


INSERT INTO horske_chaty
    (id, nazov_chaty, pohorie, nadmorska_vyska_m)
VALUES
(1, 'Chata pod Rysmi', 'Vysoké Tatry', 2250),
(2, 'Téryho chata', 'Vysoké Tatry', 2015),
(3, 'Zamkovského chata', 'Vysoké Tatry', 1475),
(4, 'Zbojnícka chata', 'Vysoké Tatry', 1960),
(5, 'Skalnatá chata', 'Vysoké Tatry', 1751),
(6, 'Sliezsky dom', 'Vysoké Tatry', 1670),
(7, 'Chata pri Zelenom plese', 'Vysoké Tatry', 1551),
(8, 'Rainerova útulňa', 'Vysoké Tatry', 1301),
(9, 'Bilíkova chata', 'Vysoké Tatry', 1255),
(10, 'Chata Plesnivec', 'Belianske Tatry', 1290);


INSERT INTO objednavky
    (id, datum_objednavky, produkt_id, mnozstvo)
VALUES
(1, '2026-09-01', 1, 20),
(2, '2026-09-02', 3, 15),
(3, '2026-09-05', 7, 5),
(4, '2026-09-10', 2, 10),
(5, '2026-09-12', 3, 25),
(6, '2026-09-15', 10, 12);


SELECT * FROM dodavatelia;
SELECT * FROM papiernictvo;
SELECT * FROM horske_chaty;
SELECT * FROM objednavky;
