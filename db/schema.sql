DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  category_name VARCHAR(30) NOT NULL
);

CREATE TABLE product (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(30) NOT NULL,
  price DEC NOT NULL,
  stock INT NOT NULL DEFAULT 10,
  category_id INT
);

CREATE TABLE tag (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  tag_name VARCHAR(30)
);

CREATE TABLE product_tag (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  tag_id INT
);

SELECT * FROM category;
SELECT * FROM product;
SELECT * FROM tag;
SELECT * FROM product_tag;