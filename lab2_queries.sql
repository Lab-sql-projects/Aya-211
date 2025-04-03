SELECT Users.user_id, Users.name, Users.email, Subscriptions.plan, Subscriptions.start_date, Subscriptions.end_date
FROM Users
INNER JOIN Subscriptions ON Users.user_id = Subscriptions.user_id;
SELECT Users.user_id, Users.name, Reviews.movie_id, Reviews.rating, Reviews.review_text
FROM Users
LEFT JOIN Reviews ON Users.user_id = Reviews.user_id;
UPDATE Subscriptions
SET plan = 'Premium'
WHERE user_id = 2;
DELETE FROM Users
WHERE user_id NOT IN (SELECT user_id FROM Subscriptions);
SELECT plan, COUNT(*) AS total_users
FROM Subscriptions
GROUP BY plan
HAVING COUNT(*) > 1;
SELECT movie_id, title, genre, release_year
FROM Movies
WHERE movie_id IN (
    SELECT movie_id FROM Reviews 
    GROUP BY movie_id 
    HAVING AVG(rating) > (SELECT AVG(rating) FROM Reviews)
);
