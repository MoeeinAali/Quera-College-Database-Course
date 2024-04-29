SELECT user_id AS id, username
FROM likes
         JOIN users
              ON likes.user_id = users.id
WHERE DATE_FORMAT(created_at, '%Y-%m') = '2021-10'
GROUP BY user_id