DELIMITER ;;
CREATE FUNCTION sec2time(seconds INT) RETURNS varchar(255)
    DETERMINISTIC
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE retMsg VARCHAR(255);

    SET days = seconds DIV (60 * 60 * 24);
    SET seconds = seconds MOD (60 * 60 * 24);
    SET hours = seconds DIV (60 * 60);
    SET seconds = seconds MOD (60 * 60);
    SET minutes = seconds DIV 60;
    SET seconds = seconds MOD 60;
    SET retMsg = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');

    RETURN retMsg;
END ;;
DELIMITER ;

SELECT sec2time(123456);