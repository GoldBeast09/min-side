-- Oppgave 5: databasen din.
--
-- Én tabell holder. Kravene:
--
--   * en id som primærnøkkel:   id INTEGER PRIMARY KEY
--   * minst 5 kolonner i tillegg til id
--   * minst 5 rader med data
--   * tabellnavnet uten æ, ø og å. Navnet blir også en adresse,
--     /api/<tabellnavn>, og Express finner ikke adresser med æøå.
--
-- Bygg databasen:   npm run reset-db
-- Sjekk den:        npm run database
--
-- Lager du flere tabeller, regner testene den med flest kolonner som
-- hovedtabellen – den som skal vises på sida.

CREATE TABLE Brukere (
    ID INTEGER PRIMARY KEY,
    FORNAVN TEXT NOT NULL,
    ETTERNAVN TEXT NOT NULL,
    EPOST TEXT NOT NULL UNIQUE,
    TELEFON TEXT,
    ALDER INTEGER
);

INSERT INTO Brukere (FORNAVN, ETTERNAVN, EPOST, TELEFON, ALDER) VALUES
('Ola', 'Nordmann', 'ola.nordmann@example.com', '12345678', 17),
('Kari', 'Nordmann', 'kari.nordmann@example.com', '87654321', 16),
('Per', 'Hansen', 'per.hansen@example.com', '55555555', 20),
('Lise', 'Olsen', 'lise.olsen@example.com', '11111111', 17),
('Nina', 'Larsen', 'nina.larsen@example.com', '22222222', 17);