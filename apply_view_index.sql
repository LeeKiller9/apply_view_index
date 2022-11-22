-- create database practice_view_index;

use practice_view_index;

-- create table products(
-- 	Id INT auto_increment primary key,
--     productCode int unique,
--     productName VARCHAR(50),
--     productPrice DOUBLE,
--     productAmount int,
--     productDescription VARCHAR(100),
--     productStatus BOOLEAN DEFAULT 1
-- );

-- CREATE UNIQUE index index_productCode on products(productCode);
-- alter table products add unique index_productCode (productCode);
-- alter table products add index index_name_price (productName,productPrice);

-- alter TABLE products drop index index_productCode;
-- alter TABLE products drop index index_name_price;

-- create view product_view as
-- select productCode, productName, productPrice, productStatus from products;

-- select * from product_view;

-- create or replace view product_view as
-- select productCode, productName, productPrice from products;

-- create or replace view product_view as
-- select productCode, productName, productPrice from products
-- where productPrice >= 900;

-- drop view product_view;

-- -- -- -- procedure get all information product follow id -- -- -- --
-- delimiter //

-- create procedure getAllInfoProduct()

-- begin
-- 	select * from products;
-- end //

-- delimiter ;

-- call getAllInfoProduct();

-- -- -- -- procedure add new product follow id -- -- -- --
-- delimiter //
-- create procedure insert_product
-- (in proId int, proCode int, proName varchar(50),proPrice double, proAmount int, proDescrip varchar(100), proStatus tinyint)
-- begin
-- 	INSERT INTO `practice_view_index`.`products` (`Id`, `productCode`, `productName`, `productPrice`, `productAmount`, `productDescription`, `productStatus`) 
--     VALUES (proId, proCode, proName, proPrice, proAmount, proDescrip, proStatus);
-- end //

-- delimiter ;

-- call insert_product(7,6967755,"Iphone7",499.9,50,"Plus",1);


-- -- -- -- procedure edit product follow id -- -- -- --
-- delimiter //

-- create procedure edit_product
-- (in proId int, proCode int, proName varchar(50),proPrice double, proAmount int, proDescrip varchar(100), proStatus tinyint)
-- begin
-- 	UPDATE `practice_view_index`.`products`
--     SET `productCode` = proCode, `productName` = proName, `productPrice` = proPrice,
--     `productAmount` = proAmount, `productDescription` = proDescrip, `productStatus` = proStatus
--     WHERE `Id` = proId;
-- end //

-- delimiter ;

-- delimiter //

-- DROP PROCEDURE IF EXISTS edit_product//

-- call edit_product(5,6967855,"Iphone9",499.9,50,"Plus",1);


-- -- -- -- procedure delete product follow id -- -- -- --
-- delimiter //

-- create procedure delete_product
-- (in proId int)
-- begin
-- 	DELETE FROM `practice_view_index`.`products`
--     WHERE `Id` = proId;
-- end //

-- delimiter ;

-- call delete_product(4);