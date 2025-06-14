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