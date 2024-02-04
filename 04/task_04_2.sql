SELECT
CASE
    WHEN gender = 'f' THEN 'женский'
    WHEN gender = 'm' THEN 'мужской'
END AS gender,
COUNT(*) as 'cnt'
FROM (
    SELECT p.gender, l.user_id
    FROM profiles p
    JOIN likes l ON p.user_id = l.user_id
) as temp
GROUP BY gender
ORDER BY COUNT(*) DESC;