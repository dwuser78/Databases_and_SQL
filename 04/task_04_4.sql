SELECT users.id, users.firstname, users.lastname,
    IF(temp.id IS NULL, 0, COUNT(users.id)) AS cnt
FROM (
    SELECT users.id, users.firstname, users.lastname
    FROM users
    JOIN friend_requests f_req ON users.id = f_req.initiator_user_id OR users.id = f_req.target_user_id
    WHERE f_req.status = 'approved'
) AS temp
RIGHT JOIN users ON users.id = temp.id
GROUP BY users.id
ORDER BY users.id ASC;