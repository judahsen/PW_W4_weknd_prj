CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(200)
)CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    new_cars VARCHAR,
    used_cars VARCHAR
)CREATE TABLE sales(
    sales_id SERIAL PRIMARY KEY,
    sale_date DATETIME
)CREATE TABLE repairs(
    repair_id SERIAL PRIMARY KEY,
    repair_type VARCHAR
)CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    FOREIGN KEY (sales_id) REFERENCES sales(sales_id)
    FOREIGN KEY (repair_id) REFERENCES repair(repair_id)
)  CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    sale_id INTEGER NOT NULL,
    carservice_id INTEGER NOT NULL,
    date TIMESTAMP,
    price NUMERIC(10, 2),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)