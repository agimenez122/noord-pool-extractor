-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS Nord_Pool_Market_Scrapp;
USE Nord_Pool_Market_Scrapp;




CREATE TABLE iso_country_codes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100),
    iso_code CHAR(2)
);

INSERT INTO iso_country_codes (country_name, iso_code) VALUES
('Afghanistan', 'AF'),
('Albania', 'AL'),
('Algeria', 'DZ'),
('Andorra', 'AD'),
('Angola', 'AO'),
('Antigua and Barbuda', 'AG'),
('Argentina', 'AR'),
('Armenia', 'AM'),
('Australia', 'AU'),
('Austria', 'AT'),
('Azerbaijan', 'AZ'),
('Bahamas', 'BS'),
('Bahrain', 'BH'),
('Bangladesh', 'BD'),
('Barbados', 'BB'),
('Belarus', 'BY'),
('Belgium', 'BE'),
('Belize', 'BZ'),
('Benin', 'BJ'),
('Bhutan', 'BT'),
('Bolivia', 'BO'),
('Bosnia and Herzegovina', 'BA'),
('Botswana', 'BW'),
('Brazil', 'BR'),
('Brunei', 'BN'),
('Bulgaria', 'BG'),
('Burkina Faso', 'BF'),
('Burundi', 'BI'),
('Cabo Verde', 'CV'),
('Cambodia', 'KH'),
('Cameroon', 'CM'),
('Canada', 'CA'),
('Central African Republic', 'CF'),
('Chad', 'TD'),
('Chile', 'CL'),
('China', 'CN'),
('Colombia', 'CO'),
('Comoros', 'KM'),
('Congo (Congo-Brazzaville)', 'CG'),
('Congo (Democratic Republic of the)', 'CD'),
('Costa Rica', 'CR'),
('Croatia', 'HR'),
('Cuba', 'CU'),
('Cyprus', 'CY'),
('Czech Republic (Czechia)', 'CZ'),
('Denmark', 'DK'),
('Djibouti', 'DJ'),
('Dominica', 'DM'),
('Dominican Republic', 'DO'),
('Ecuador', 'EC'),
('Egypt', 'EG'),
('El Salvador', 'SV'),
('Equatorial Guinea', 'GQ'),
('Eritrea', 'ER'),
('Estonia', 'EE'),
('Eswatini (fmr. Swaziland)', 'SZ'),
('Ethiopia', 'ET'),
('Fiji', 'FJ'),
('Finland', 'FI'),
('France', 'FR'),
('Gabon', 'GA'),
('Gambia', 'GM'),
('Georgia', 'GE'),
('Germany', 'DE'),
('Ghana', 'GH'),
('Greece', 'GR'),
('Grenada', 'GD'),
('Guatemala', 'GT'),
('Guinea', 'GN'),
('Guinea-Bissau', 'GW'),
('Guyana', 'GY'),
('Haiti', 'HT'),
('Honduras', 'HN'),
('Hungary', 'HU'),
('Iceland', 'IS'),
('India', 'IN'),
('Indonesia', 'ID'),
('Iran', 'IR'),
('Iraq', 'IQ'),
('Ireland', 'IE'),
('Israel', 'IL'),
('Italy', 'IT'),
('Jamaica', 'JM'),
('Japan', 'JP'),
('Jordan', 'JO'),
('Kazakhstan', 'KZ'),
('Kenya', 'KE'),
('Kiribati', 'KI'),
('Kuwait', 'KW'),
('Kyrgyzstan', 'KG'),
('Laos', 'LA'),
('Latvia', 'LV'),
('Lebanon', 'LB'),
('Lesotho', 'LS'),
('Liberia', 'LR'),
('Libya', 'LY'),
('Liechtenstein', 'LI'),
('Lithuania', 'LT'),
('Luxembourg', 'LU'),
('Madagascar', 'MG'),
('Malawi', 'MW'),
('Malaysia', 'MY'),
('Maldives', 'MV'),
('Mali', 'ML'),
('Malta', 'MT'),
('Marshall Islands', 'MH'),
('Mauritania', 'MR'),
('Mauritius', 'MU'),
('Mexico', 'MX'),
('Micronesia', 'FM'),
('Moldova', 'MD'),
('Monaco', 'MC'),
('Mongolia', 'MN'),
('Montenegro', 'ME'),
('Morocco', 'MA'),
('Mozambique', 'MZ'),
('Myanmar (formerly Burma)', 'MM'),
('Namibia', 'NA'),
('Nauru', 'NR'),
('Nepal', 'NP'),
('Netherlands', 'NL'),
('New Zealand', 'NZ'),
('Nicaragua', 'NI'),
('Niger', 'NE'),
('Nigeria', 'NG'),
('North Korea', 'KP'),
('North Macedonia', 'MK'),
('Norway', 'NO'),
('Oman', 'OM'),
('Pakistan', 'PK'),
('Palau', 'PW'),
('Palestine State', 'PS'),
('Panama', 'PA'),
('Papua New Guinea', 'PG'),
('Paraguay', 'PY'),
('Peru', 'PE'),
('Philippines', 'PH'),
('Poland', 'PL'),
('Portugal', 'PT'),
('Qatar', 'QA'),
('Romania', 'RO'),
('Russia', 'RU'),
('Rwanda', 'RW'),
('Saint Kitts and Nevis', 'KN'),
('Saint Lucia', 'LC'),
('Saint Vincent and the Grenadines', 'VC'),
('Samoa', 'WS'),
('San Marino', 'SM'),
('Sao Tome and Principe', 'ST'),
('Saudi Arabia', 'SA'),
('Senegal', 'SN'),
('Serbia', 'RS'),
('Seychelles', 'SC'),
('Sierra Leone', 'SL'),
('Singapore', 'SG'),
('Slovakia', 'SK'),
('Slovenia', 'SI'),
('Solomon Islands', 'SB'),
('Somalia', 'SO'),
('South Africa', 'ZA'),
('South Korea', 'KR'),
('South Sudan', 'SS'),
('Spain', 'ES'),
('Sri Lanka', 'LK'),
('Sudan', 'SD'),
('Suriname', 'SR'),
('Sweden', 'SE'),
('Switzerland', 'CH'),
('Syria', 'SY'),
('Taiwan', 'TW'),
('Tajikistan', 'TJ'),
('Tanzania', 'TZ'),
('Thailand', 'TH'),
('Timor-Leste', 'TL'),
('Togo', 'TG'),
('Tonga', 'TO'),
('Trinidad and Tobago', 'TT'),
('Tunisia', 'TN'),
('Turkey', 'TR'),
('Turkmenistan', 'TM'),
('Tuvalu', 'TV'),
('Uganda', 'UG'),
('Ukraine', 'UA'),
('United Arab Emirates', 'AE'),
('United Kingdom', 'GB'),
('United States of America', 'US'),
('Uruguay', 'UY'),
('Uzbekistan', 'UZ'),
('Vanuatu', 'VU'),
('Vatican City', 'VA'),
('Venezuela', 'VE'),
('Vietnam', 'VN'),
('Yemen', 'YE'),
('Zambia', 'ZM'),
('Zimbabwe', 'ZW');






-- Crear la tabla Areas si no existe
CREATE TABLE IF NOT EXISTS Areas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    AreaUUID CHAR(36) UNIQUE NOT NULL,
    AreaName VARCHAR(255) NOT NULL
);

-- Crear la tabla Countries si no existe
CREATE TABLE IF NOT EXISTS Countries (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CountryUUID CHAR(36) UNIQUE NOT NULL,
    CountryCode CHAR(4) NOT NULL UNIQUE,
    CountryName VARCHAR(255) NOT NULL,
    AreaID INT NOT NULL,
    FOREIGN KEY (AreaID) REFERENCES Areas(ID)
);

-- Crear la tabla MarketIntraDayData si no existe
CREATE TABLE IF NOT EXISTS MarketIntraDayData (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    DataUUID CHAR(36) UNIQUE NOT NULL,
    CountryID INT NOT NULL,
    Period VARCHAR(36) NOT NULL,
    Market VARCHAR(255) NOT NULL,
    MaxPrice DECIMAL(10, 2) NOT NULL,
    MinPrice DECIMAL(10, 2) NOT NULL,
    MediumPrice DECIMAL(10, 2) NOT NULL,
    Open DECIMAL(10, 2) NOT NULL,
    Close DECIMAL(10, 2) NOT NULL,
    VolumeMW DECIMAL(10, 2) NOT NULL,
    DateAdded DATE DEFAULT (CURDATE()),
    FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

-- Crear la tabla MarketDayAheadPrices si no existe
CREATE TABLE IF NOT EXISTS MarketDayAheadPrices (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    DataUUID CHAR(36) UNIQUE NOT NULL,
    CountryID INT NOT NULL,
    Period VARCHAR(36) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    DateAdded DATE DEFAULT (CURDATE()),
    FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

-- Crear la tabla MarketDayAheadVolumes si no existe
CREATE TABLE IF NOT EXISTS MarketDayAheadVolumes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    DataUUID CHAR(36) UNIQUE NOT NULL,
    CountryID INT NOT NULL,
    Period VARCHAR(36) NOT NULL,
    SellVolume DECIMAL(10, 2) NOT NULL,
    BuyVolume DECIMAL(10, 2) NOT NULL,
    DateAdded DATE DEFAULT (CURDATE()),
    FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

-- Crear la tabla MarketDayAheadSystemPriceTurnover si no existe
CREATE TABLE IF NOT EXISTS MarketDayAheadSystemPriceTurnover (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    DataUUID CHAR(36) UNIQUE NOT NULL,
    Period VARCHAR(36) NOT NULL,
    SystemPrice DECIMAL(10, 2) NOT NULL,
    SystemTurnover DECIMAL(10, 2) NOT NULL,
    DateAdded DATE DEFAULT (CURDATE())
);

INSERT INTO Areas (ID, AreaUUID, AreaName) VALUES
(1, 'db5d2956-d48b-11ee-986c-842afd10ec8b', 'BALTIC'),
(2, 'db5d298a-d48b-11ee-986c-842afd10ec8b', 'UK'),
(3, 'db5d2996-d48b-11ee-986c-842afd10ec8b', 'CWE'),
(4, '7f8b3b91-d552-11ee-986c-842afd10ec8b', 'NORDIC');

INSERT INTO Countries (ID, CountryUUID, CountryCode, CountryName, AreaID) VALUES
(1, 'db5d299e-d48b-11ee-986c-842afd10ec8b', 'EE', 'Estonia', 1),
(2, 'db5d29a6-d48b-11ee-986c-842afd10ec8b', 'LT', 'Lituania', 1),
(3, 'db5d29ad-d48b-11ee-986c-842afd10ec8b', 'LV', 'Latvia', 1),
(4, 'db5d29b6-d48b-11ee-986c-842afd10ec8b', 'UK', 'United Kingdom', 2),
(5, 'db5d29be-d48b-11ee-986c-842afd10ec8b', 'FR', 'France', 3),
(6, 'db5d29c6-d48b-11ee-986c-842afd10ec8b', 'AT', 'Austria', 3),
(7, '88d4185d-d48c-11ee-986c-842afd10ec8b', 'BE', 'Belgium', 3),
(8, '88d4187d-d48c-11ee-986c-842afd10ec8b', 'NL', 'Netherland', 3),
(9, '88d41883-d48c-11ee-986c-842afd10ec8b', 'PL', 'Poland', 3),
(10, '5fd9b1d5-d553-11ee-986c-842afd10ec8b', 'DK1', 'DK1 Denmark', 4),
(11, '5fd9b5aa-d553-11ee-986c-842afd10ec8b', 'DK2', 'DK2 Denmark', 4),
(12, '5fd9b5b9-d553-11ee-986c-842afd10ec8b', 'FI', 'Finland', 4),
(13, '5fd9b5be-d553-11ee-986c-842afd10ec8b', 'NO1', 'NO1 Norway', 4),
(14, '5fd9b5c3-d553-11ee-986c-842afd10ec8b', 'NO2', 'NO2 Norway', 4),
(15, '5fd9b5c8-d553-11ee-986c-842afd10ec8b', 'NO3', 'NO3 Norway', 4),
(16, '5fd9b5cc-d553-11ee-986c-842afd10ec8b', 'NO4', 'NO4 Norway', 4),
(17, '5fd9b5d0-d553-11ee-986c-842afd10ec8b', 'NO5', 'NO5 Norway', 4),
(18, '5fd9b5d5-d553-11ee-986c-842afd10ec8b', 'SE1', 'SE1 Sweden', 4),
(19, '5fd9b5d9-d553-11ee-986c-842afd10ec8b', 'SE2', 'SE2 Sweden', 4),
(20, '5fd9b5dd-d553-11ee-986c-842afd10ec8b', 'SE3', 'SE3 Sweden', 4),
(21, '5fd9b5e2-d553-11ee-986c-842afd10ec8b', 'SE4', 'SE4 Sweden', 4);



