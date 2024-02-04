BEGIN;

ALTER TABLE itresume7605981.mobile_phones
ADD COLUMN manufacturer_id INT,
ADD CONSTRAINT mobile_phones_manufacturer_id_fk
FOREIGN KEY (manufacturer_id) REFERENCES itresume7605981.manufacturer (id)
ON DELETE SET NULL;

UPDATE itresume7605981.mobile_phones
SET manufacturer_id = itresume7605981.manufacturer.id
FROM itresume7605981.manufacturer
WHERE itresume7605981.mobile_phones.manufacturer = itresume7605981.manufacturer.name;

ALTER TABLE itresume7605981.mobile_phones
DROP COLUMN manufacturer;

COMMIT;

SELECT id, product_name, manufacturer_id
FROM itresume7605981.mobile_phones;