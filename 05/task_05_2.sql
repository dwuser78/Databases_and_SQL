SELECT 
    m.id, 
    m.created_at, 
    LEAD(m.created_at, 1, NULL) OVER (ORDER BY m.created_at) as next_created_at, 
    TIMESTAMPDIFF(MINUTE, m.created_at, LEAD(m.created_at, 1, NULL) OVER (ORDER BY m.created_at)) as diff
FROM 
    messages m
ORDER BY 
    m.created_at;