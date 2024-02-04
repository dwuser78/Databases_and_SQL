CREATE TABLE itresume7605981.mobile_phones (
  id SERIAL PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  product_count INTEGER NOT NULL,
  price INTEGER NOT NULL
);

INSERT INTO itresume7605981.mobile_phones (product_name, manufacturer, product_count, price)
VALUES ('iPhone X', 'Apple', 156, 76000);
INSERT INTO itresume7605981.mobile_phones (product_name, manufacturer, product_count, price)
VALUES ('iPhone 8', 'Apple', 180, 51000);
INSERT INTO itresume7605981.mobile_phones (product_name, manufacturer, product_count, price)
VALUES ('Galaxy S9', 'Samsung', 21, 56000);
INSERT INTO itresume7605981.mobile_phones (product_name, manufacturer, product_count, price)
VALUES ('Galaxy S8', 'Samsung', 124, 41000);
INSERT INTO itresume7605981.mobile_phones (product_name, manufacturer, product_count, price)
VALUES ('P20 Pro', 'Huawei', 341, 36000);