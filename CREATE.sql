USE _sales_db; 

CREATE TABLE PRODUCTS (
	product_id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    description VARCHAR(300),
    type VARCHAR(20) NOT NULL, 
    price_usd FLOAT NOT NULL
    ); 
    
CREATE TABLE USERS (
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL, 
    gender varchar(2),
    zip_code varchar(5) NOT NULL,
    address varchar(200) NOT NULL,
    state varchar(50),
    city varchar(50),
    phone varchar(10) unique
);

CREATE TABLE VENTAS (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    date date,
    units int,
    amount float,
    user_id_fk int,
    product_id_fk int,
    CONSTRAINT fk_user FOREIGN KEY (user_id_fk) REFERENCES USERS(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id_fk) REFERENCES PRODUCTS(product_id) ON DELETE CASCADE
);


CREATE TABLE SALES (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    date date,
    units int,
    amount float,
    user_id_fk int,
    product_id_fk int,
    CONSTRAINT fk_user FOREIGN KEY (user_id_fk) REFERENCES USERS(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id_fk) REFERENCES PRODUCTS(product_id) ON DELETE CASCADE
);

CREATE TABLE SALES_ (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    date date,
    units int,
    amount float,
    user_id_fk int,
    product_id_fk int,
    CONSTRAINT fk_user FOREIGN KEY (user_id_fk) REFERENCES USERS(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id_fk) REFERENCES PRODUCTS(product_id) ON UPDATE CASCADE
); 

CREATE TABLE _SALES (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    date date,
    units int,
    amount float,
    user_id_fk int,
    product_id_fk int,
    CONSTRAINT fk_user FOREIGN KEY (user_id_fk) REFERENCES USERS(user_id) ON DELETE NO ACTION,
    CONSTRAINT fk_product FOREIGN KEY (product_id_fk) REFERENCES PRODUCTS(product_id) ON DELETE NO ACTION
); 
