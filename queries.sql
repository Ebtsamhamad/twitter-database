-- Tweets per user
SELECT u.username, t.content
FROM users u
JOIN tweet t ON u.user_id = t.user_id;

-- Followers of user 1
SELECT u.username
FROM follow f
JOIN users u ON f.follower_id = u.user_id
WHERE f.following_id = 1;

-- Likes per tweet
SELECT tweet_id, COUNT(user_id) AS likes
FROM like_user
GROUP BY tweet_id;