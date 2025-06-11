CREATE TABLE Sensore (
    id_sensore SERIAL PRIMARY KEY,
    nome_sensore VARCHAR(100) NOT NULL,
    tipo_sensore VARCHAR(50) NOT NULL,
    posizione_sensore VARCHAR(255),
    datainstallazione TIMESTAMP,
    stato BOOLEAN DEFAULT TRUE
);

CREATE TABLE Rilevamento (
    id_rilevamento SERIAL PRIMARY KEY,
    codice_sensore INT NOT NULL,
    watt_rilevati FLOAT NOT NULL,
	ampere_rilevati FLOAT NOT NULL,
	volt_rilevati FLOAT NOT NULL,
    timestamp_rilevamento TIMESTAMP NOT NULL,
    FOREIGN KEY (codice_sensore) REFERENCES Sensore(id_sensore)
);

-- INSERT

INSERT INTO Sensore (nome_sensore, tipo_sensore, posizione_sensore, datainstallazione, stato) VALUES
('Sensore Elettricità Ufficio 1', 'Elettricità', 'Reparto Uffici - Piano 1', '2024-01-15 09:00:00', TRUE),
('Sensore Elettricità Magazzino', 'Elettricità', 'Magazzino Centrale', '2024-01-20 14:30:00', TRUE),
('Sensore Elettricità Laboratorio', 'Elettricità', 'Laboratorio Qualità', '2024-02-01 08:45:00', TRUE);
