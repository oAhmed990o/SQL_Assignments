CREATE SCHEMA store;

USE store;

CREATE TABLE store.customer(
	customer_id INT NOT NULL UNIQUE,
    customer_name VARCHAR(255),
    city VARCHAR(255),
    PRIMARY KEY(customer_id)
);

CREATE TABLE store.order(
    order_id INT NOT NULL UNIQUE,
    order_date DATETIME,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES store.customer(customer_id),
    PRIMARY KEY(order_id)
);


CREATE TABLE store.item(
    item_id INT NOT NULL UNIQUE,
    unit_price FLOAT,
    PRIMARY KEY(item_id)
);

CREATE TABLE store.order_item(
    order_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES store.order(order_id),
    FOREIGN KEY (item_id) REFERENCES store.item(item_id),    
    PRIMARY KEY(order_id, item_id)
);

CREATE TABLE store.warehouse(
    warehouse_id INT NOT NULL UNIQUE,
    warehouse_city VARCHAR(255),
    PRIMARY KEY(warehouse_id)
);

CREATE TABLE store.shipment(
    order_id INT,
    warehouse_id INT,    
    ship_date DATETIME,
    FOREIGN KEY (order_id) REFERENCES store.order(order_id),
    FOREIGN KEY (warehouse_id) REFERENCES store.warehouse(warehouse_id),    
    PRIMARY KEY(order_id, warehouse_id)
);