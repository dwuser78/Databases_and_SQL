SELECT product_name, manufacturer, 
CASE 
    WHEN product_count < 100 THEN 'little'
    WHEN product_count >= 100 AND product_count < 300 THEN 'many'
    ELSE 'lots'
END AS product_count_status
FROM mobile_phones;