-- Get all posts made by a user's friends
SELECT p.*
FROM posts p
JOIN friendships f ON p.user_id = f.user_id_2
WHERE f.user_id_1 = 1;

-- Get all comments on a specific post
SELECT c.*, u.username
FROM comments c
JOIN users u ON c.user_id = u.user_id
WHERE c.post_id = 10;

-- Get the number of posts per user
SELECT u.username, COUNT(p.post_id) AS post_count
FROM users u
LEFT JOIN posts p ON u.user_id = p.user_id
GROUP BY u.username;

-- Find mutual friends between two users
SELECT u.username
FROM users u
JOIN friendships f1 ON u.user_id = f1.user_id_2 AND f1.user_id_1 = 1
JOIN friendships f2 ON u.user_id = f2.user_id_2 AND f2.user_id_1 = 2;
