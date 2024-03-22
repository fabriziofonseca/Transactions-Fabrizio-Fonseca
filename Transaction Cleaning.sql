--New clean table. Remove duplicates. Handle NULL values and removing invalid characters.
CREATE TABLE TransactionClean AS
SELECT 
    DISTINCT --Removing duplicates here
    CLIENT_ID,
    CASE 
        WHEN CLIENT_NAME IS NULL THEN CONCAT('Client ', CLIENT_ID) 
        ELSE CLIENT_NAME 
    END AS CLIENT_NAME,
    CLIENT_LASTNAME,
    EMAIL,
    STORE_ID,
    CASE 
        WHEN STORE_NAME IS NULL THEN CONCAT('Store ', STORE_ID) 
        ELSE STORE_NAME 
    END AS STORE_NAME,
    LOCATION,
    PRODUCT_ID,
    CASE 
        WHEN PRODUCT_NAME IS NULL THEN CONCAT('Product ', PRODUCT_ID) 
        ELSE PRODUCT_NAME 
    END AS PRODUCT_NAME,
    CATEGORY,
    BRAND,
    ADDRESS_ID,
    STREET,
    CITY,
    STATE,
    ZIP_CODE,
    TRANSACTION_ID,
    QUANTITY_OF_ITEMS_SOLD,
    UNIT_PRICE,
    DISCOUNT
    --CASE to handle NULL values. Using information provided in the dataset to create missing values and avoid leaving behind rows.
FROM 
    Transactions;

    --Removing the _ from the values
UPDATE TransactionClean
    SET 
    CLIENT_NAME = REPLACE(CLIENT_NAME, '_', ' '),
    CLIENT_LASTNAME = REPLACE(CLIENT_LASTNAME, '_', ' '),
    EMAIL = REPLACE(EMAIL, '_', ''),
    STORE_NAME = REPLACE(STORE_NAME, '_', ' '),
    LOCATION = REPLACE(LOCATION, '_', ' '),
    PRODUCT_NAME = REPLACE(PRODUCT_NAME, '_', ' '),
    BRAND = REPLACE(BRAND, '_', ' '),
    STREET = REPLACE(STREET, '_', ' '),
    CITY = REPLACE(CITY, '_', ' '),
    STATE = REPLACE(STATE, '_', ' ');

