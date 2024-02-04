CREATE TABLE itresume7605981.manufacturer (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO itresume7605981.manufacturer (name)
SELECT manufacturer
FROM itresume7605981.mobile_phones;