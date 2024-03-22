CREATE TABLE Sales (
    transaction_id INT PRIMARY KEY,
    client_id INT,
    store_id INT,
    product_id INT,
    address_id INT,
    quantity_of_items_sold INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(10,2),
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (store_id) REFERENCES Store(store_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

INSERT INTO Sales (transaction_id, client_id, store_id, product_id, address_id, quantity_of_items_sold, unit_price, discount)
SELECT DISTINCT 
    TRANSACTION_ID,
    CLIENT_ID,
    STORE_ID,
    PRODUCT_ID,
    ADDRESS_ID,
    QUANTITY_OF_ITEMS_SOLD,
    UNIT_PRICE,
    DISCOUNT
FROM 
    TransactionClean;



