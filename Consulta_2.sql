SELECT count(*) 
FROM users  LEFT JOIN friendships ON friendships.user_id = users.id
LEFT JOIN users AS user2 ON user2.id = friendships.friend_id
WHERE user2.id IS NOT NULL;