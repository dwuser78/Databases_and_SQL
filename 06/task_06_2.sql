DELIMITER ;;
CREATE FUNCTION getOnlyEvenNumbers() RETURNS varchar(255)
    DETERMINISTIC
BEGIN
    DECLARE i INT;
    DECLARE evenNumbers VARCHAR(255);

    SET i = 1;
    SET evenNumbers = '';

    WHILE i <= 10 DO
        IF i % 2 = 0 THEN
            SET evenNumbers = CONCAT(evenNumbers, i, ', ');
        END IF;

        SET i = i + 1;
    END WHILE;

    RETURN SUBSTRING(evenNumbers, 1, LENGTH(evenNumbers) - 1);
END ;;
DELIMITER ;

SELECT getOnlyEvenNumbers();