/*ALTER*/

DESCRIBE USERS;

ALTER TABLE USERS
DROP name;

ALTER TABLE USERS
ADD first_name varchar(50),
ADD last_name varchar(50);

ALTER TABLE _SALES
DROP FOREIGN KEY fk_user;

ALTER TABLE _SALES
DROP FOREIGN KEY fk_product;