CREATE TABLE tools (
    toolName VARCHAR(100) NOT NULL,
    toolType VARCHAR(100) NULL,
    language VARCHAR(100) NULL,
    CONSTRAINT pk_toolName PRIMARY KEY (toolName)
);
CREATE TABLE multimedia (
     type VARCHAR(100) NOT NULL,
     CONSTRAINT pk_type PRIMARY KEY (type)
);
CREATE TABLE category (
     webType VARCHAR(100) NOT NULL
     CONSTRAINT pk_webType PRIMARY KEY (webType)
);
CREATE TABLE website (
     url VARCHAR(100) NOT NULL,
     pubDate DATE NULL,
     companyID INTEGER NOT NULL,
     CONSTRAINT pk_pubDate PRIMARY KEY (pubDate),
     CONSTRAINT ck_ceoID FOREIGN KEY ceo(employeeID),
     CONSTRAINT ck_companyID FOREIGN KEY company(companyID),
);
CREATE TABLE ceo (
     employeeID INTEGER PRIMARY KEY AUTOINCREMENT,
     firstName VARCHAR(100) NULL,
     lastName VARCHAR(100) NULL,
     CONSTRAINT ck_ceoName UNIQUE (firstName, lastName)
);
CREATE TABLE company (
     companyID INTEGER PRIMARY KEY AUTOINCREMENT,
     registeredName VARCHAR(100) NOT NULL,
     countryOrigin VARCHAR(100) NULL,
     currentWorth INTEGER(100) NULL,
     numberEmployees INTEGER(100) NULL,
     CONSTRAINT ck_registeredName UNIQUE (registeredName),
     CONSTRAINT ck_ceoID FOREIGN KEY ceo(employeeID),
     CONSTRAINT ck_ceoName FOREIGN KEY ceo(ck_ceoName)
);
CREATE TABLE developer (
     employeeID INTEGER PRIMARY KEY AUTOINCREMENT,
     companyID INTEGER NOT NULL,
     firstName VARCHAR(100) NULL,
     lastName VARCHAR(100) NULL,
     expertise VARCHAR(100) NULL,
     devLead INTEGER NULL,
     CONSTRAINT fk_companyID FOREIGN KEY (companyID) REFERENCES company (companyID),
     CONSTRAINT fk_devLead FOREIGN KEY (employeeID) REFERENCES developer (employeeID)
);
CREATE TABLE officeLocation (
     officeID INTEGER PRIMARY KEY AUTOINCREMENT,
     postalCode VARCHAR(100) NOT NULL,
     country VARCHAR(100) NULL,
     city VARCHAR(100) NULL,
     CONSTRAINT ck_officeLocation UNIQUE (postalCode)
);
CREATE TABLE founder (
     employeeID INTEGER PRIMARY KEY AUTOINCREMENT,
     firstName VARCHAR(100) NULL,
     lastName VARCHAR(100) NULL,
     dob DATE NULL,
     CONSTRAINT ck_founder UNIQUE (firstName, lastName)
);
CREATE TABLE websiteClassified (
    url VARCHAR(100) PRIMARY KEY,
    webType VARCHAR(100) PRIMARY KEY,
    CONSTRAINT fk_url FOREIGN KEY (url) REFERENCES website (url),
    CONSTRAINT fk_webType FOREIGN KEY (webType) REFERENCES category (webType)
);
CREATE TABLE foundedBy (
    employeeID INTEGER PRIMARY KEY,
    companyID INTEGER PRIMARY KEY,
    CONSTRAINT fk_employeeID FOREIGN KEY (employeeID) REFERENCES ceo (employeeID),
    CONSTRAINT fk_companyID FOREIGN KEY (companyID) REFERENCES company (companyID)
);
CREATE TABLE companyWebsite (
    url VARCHAR(100) PRIMARY KEY,
    companyID INTEGER PRIMARY KEY,
    CONSTRAINT fk_url FOREIGN KEY (url) REFERENCES website (url),
    CONSTRAINT fk_companyID FOREIGN KEY (companyID) REFERENCES company (companyID)
);
CREATE TABLE companyDev (
    employeeID INTEGER PRIMARY KEY,
    companyID INTEGER PRIMARY KEY,
    CONSTRAINT fk_employeeID FOREIGN KEY (employeeID) REFERENCES developer (employeeID),
    CONSTRAINT fk_companyID FOREIGN KEY (companyID) REFERENCES company (companyID)
);
CREATE TABLE websiteMedia (
    url VARCHAR(100) PRIMARY KEY,
    type VARCHAR(100) PRIMARY KEY,
    CONSTRAINT fk_url FOREIGN KEY (url) REFERENCES website (url),
    CONSTRAINT fk_multimediaType FOREIGN KEY (type) REFERENCES multimedia (type)
);
CREATE TABLE websiteTools (
    url VARCHAR(100) PRIMARY KEY,
    toolName VARCHAR(100) PRIMARY KEY,
    CONSTRAINT fk_url FOREIGN KEY (url) REFERENCES website (url),
    CONSTRAINT fk_toolName FOREIGN KEY (toolName) REFERENCES tools (toolName)
);
CREATE TABLE companyLocation (
    officeID INTEGER PRIMARY KEY,
    companyID INTEGER PRIMARY KEY,
    postalCode VARCHAR(100) NOT NULL,
    CONSTRAINT fk_officeID FOREIGN KEY (officeID) REFERENCES officeLocation (officeID),
    CONSTRAINT fk_postalCode FOREIGN KEY (postalCode) REFERENCES officeLocation (postalCode),
    CONSTRAINT fk_companyID FOREIGN KEY (companyID) REFERENCES company (companyID)
);
