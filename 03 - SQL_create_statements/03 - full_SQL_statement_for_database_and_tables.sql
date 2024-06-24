CREATE DATABASE inventoryRecords
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE contact (
    contact_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    contact_name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    province CHAR(2) NOT NULL,
    postal_code CHAR(6) NOT NULL,
    email_address VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL
);

CREATE TABLE product (
    product_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    product_name VARCHAR(50) NOT NULL,
    sell_price MONEY NOT NULL,
    cost_price MONEY NOT NULL,
    amount_in_stock INTEGER NOT NULL
);

CREATE TABLE supplier (
    supplier_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    supplier_name VARCHAR(50) NOT NULL,
    contact_id INTEGER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
);

CREATE TABLE warehouse (
    warehouse_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    warehouse_name VARCHAR(50) NOT NULL,
    warehouse_city VARCHAR(50) NOT NULL,
    sq_ft_capacity INTEGER NOT NULL
);

CREATE TABLE salesperson (
    salesperson_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    contact_id INTEGER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
);

CREATE TABLE sales (
    sales_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    salesperson_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    sales_date DATE NOT NULL,
    total_revenue MONEY NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    sales_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    total_order_value MONEY NOT NULL,
    FOREIGN KEY (sales_id) REFERENCES sales(sales_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

CREATE TABLE deliveries (
    delivery_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    warehouse_id INTEGER NOT NULL,
    sales_id INTEGER,
    delivery_date DATE NOT NULL,
    total_pieces INTEGER NOT NULL,
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id),
    FOREIGN KEY (sales_id) REFERENCES sales(sales_id)
);

CREATE TABLE purchase (
    purchase_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    supplier_id INTEGER NOT NULL,
    purchase_date DATE NOT NULL,
    total_cost MONEY NOT NULL,
    delivery_id INTEGER,
    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);

CREATE TABLE inventory (
    inventory_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    product_id INTEGER NOT NULL,
    supplier_id INTEGER NOT NULL,
    quantity_in_stock INTEGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);

CREATE TABLE purchase_item (
    purchase_item_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    purchase_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (purchase_id) REFERENCES purchase(purchase_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE sales_item (
    sales_item_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    sales_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    revenue_per_item MONEY NOT NULL,
    FOREIGN KEY (sales_id) REFERENCES sales(sales_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE payment (
    payment_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    sales_id INTEGER NOT NULL,
    payment_date DATE NOT NULL,
    payment_amount MONEY NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    FOREIGN KEY (sales_id) REFERENCES sales(sales_id)
);

CREATE TABLE reward_points (
    reward_points_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    contact_id INTEGER NOT NULL,
    points_earned INTEGER NOT NULL,
    points_redeemed INTEGER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
);

CREATE TABLE delivery_sales (
    delivery_sales_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    delivery_id INTEGER NOT NULL,
    sales_id INTEGER NOT NULL,
    FOREIGN KEY (delivery_id) REFERENCES deliveries(delivery_id),
    FOREIGN KEY (sales_id) REFERENCES sales(sales_id)
);

CREATE TABLE salesperson_sales (
    salesperson_sales_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    salesperson_id INTEGER NOT NULL,
    sales_id INTEGER NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (sales_id) REFERENCES sales(sales_id)
);