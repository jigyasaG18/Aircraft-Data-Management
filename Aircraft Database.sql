CREATE DATABASE aircraft;

CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    region VARCHAR(100)
);

CREATE TABLE aircrafts (
    aircraft_id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100)
);

CREATE TABLE zones (
    zone_code CHAR(1) PRIMARY KEY,
    zone_description VARCHAR(255)
);

CREATE TABLE missions (
    mission_code VARCHAR(10) PRIMARY KEY,
    mission_description VARCHAR(255)
);

CREATE TABLE deployment (
    deployment_id INT AUTO_INCREMENT PRIMARY KEY,
    aircraft_id INT,
    country_id INT,
    zone_code CHAR(1),
    mission_code VARCHAR(10),
    deployed_count INT,
    deployment_date DATE
);

INSERT INTO countries (country_name, region) VALUES
('India', 'Asia'),
('USA', 'North America'),
('Russia', 'Europe'),
('China', 'Asia'),
('France', 'Europe'),
('UK', 'Europe'),
('Germany', 'Europe'),
('Japan', 'Asia'),
('Australia', 'Oceania'),
('Brazil', 'South America');

INSERT INTO aircrafts (model, manufacturer) VALUES
('Tejas Mk1', 'HAL'),
('Sukhoi Su-30', 'Sukhoi'),
('F-16', 'Lockheed Martin'),
('Rafale', 'Dassault'),
('J-20', 'Chengdu'),
('F-35', 'Lockheed Martin'),
('Eurofighter Typhoon', 'Eurofighter GmbH'),
('Mirage 2000', 'Dassault'),
('Mig-29', 'Mikoyan'),
('Gripen', 'Saab');

INSERT INTO zones (zone_code, zone_description) VALUES
('R', 'Red Zone - High Activity'),
('B', 'Blue Zone - Monitoring'),
('G', 'Green Zone - Safe'),
('Y', 'Yellow Zone - Caution'),
('O', 'Orange Zone - Alert'),
('W', 'White Zone - Normal'),
('K', 'Black Zone - Restricted'),
('P', 'Purple Zone - Special Ops'),
('S', 'Silver Zone - Surveillance'),
('T', 'Teal Zone - Training');

INSERT INTO missions (mission_code, mission_description) VALUES
('FIR', 'Flight Information Region'),
('SURV', 'Surveillance'),
('COMB', 'Combat'),
('PTRL', 'Patrol'),
('TRNG', 'Training'),
('RESC', 'Rescue'),
('ESC', 'Escort'),
('STRK', 'Strike'),
('INTL', 'Intelligence'),
('SUPP', 'Support');

INSERT INTO deployment (aircraft_id, country_id, zone_code, mission_code, deployed_count, deployment_date) VALUES
(1, 1, 'R', 'FIR', 15, '2024-01-10'),
(2, 2, 'B', 'SURV', 20, '2024-02-14'),
(3, 3, 'G', 'COMB', 10, '2024-03-20'),
(4, 4, 'Y', 'PTRL', 25, '2024-04-25'),
(5, 5, 'O', 'TRNG', 30, '2024-05-30'),
(6, 6, 'W', 'RESC', 12, '2024-06-15'),
(7, 7, 'K', 'ESC', 18, '2024-07-05'),
(8, 8, 'P', 'STRK', 22, '2024-08-10'),
(9, 9, 'S', 'INTL', 17, '2024-09-18'),
(10, 10, 'T', 'SUPP', 14, '2024-10-22');
