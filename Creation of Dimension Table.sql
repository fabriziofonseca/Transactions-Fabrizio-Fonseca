CREATE TABLE Client (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(255),
    client_last_name VARCHAR(255),
    email VARCHAR(255)
);

INSERT INTO Client (client_id, client_name, client_last_name, email)
SELECT DISTINCT
    CLIENT_ID, 
    CLIENT_NAME, 
    CLIENT_LASTNAME, 
    EMAIL 
FROM 
    TransactionClean;

    

CREATE TABLE Store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(255),
    location VARCHAR(255)
);

INSERT INTO Store (store_id, store_name, location)
SELECT DISTINCT 
    STORE_ID, 
    STORE_NAME, 
    LOCATION 
FROM 
    TransactionClean;


CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(255),
    brand VARCHAR(255)
);

INSERT INTO Product (product_id, product_name, category, brand)
SELECT DISTINCT 
    PRODUCT_ID, 
    PRODUCT_NAME, 
    CATEGORY, 
    BRAND 
FROM 
    TransactionClean;


CREATE TABLE Address (
    address_id INT PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code VARCHAR(20)
);

INSERT INTO Address (address_id, street, city, state, zip_code)
SELECT DISTINCT 
    ADDRESS_ID, 
    STREET, 
    CITY, 
    STATE, 
    ZIP_CODE 
FROM 
    TransactionClean;


