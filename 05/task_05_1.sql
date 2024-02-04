SELECT
    DENSE_RANK() OVER(ORDER BY COUNT(m.id) DESC) AS rank_message,
    u.firstname,
    u.lastname,
    IF(m.from_user_id IS NULL, 0, COUNT(m.id)) AS cnt
FROM users u
LEFT JOIN messages m ON u.id = m.from_user_id
GROUP BY u.id
ORDER BY rank_message ASC;