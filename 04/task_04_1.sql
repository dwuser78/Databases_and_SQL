SELECT COUNT(*)
FROM likes
JOIN media ON likes.media_id = media.id
JOIN profiles ON profiles.user_id = media.user_id
WHERE profiles.gender = 'f';