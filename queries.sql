-- View all users
SELECT * FROM Users;

-- View all movies
SELECT * FROM Movies;

-- Get movies released after 2010
SELECT * FROM Movies WHERE release_year > 2010;

-- Get all Premium subscriptions
SELECT * FROM Subscriptions WHERE plan = 'Premium';

-- Get reviews with ratings above 4, sorted by review date
SELECT * FROM Reviews WHERE rating > 4 ORDER BY review_date DESC;

-- Get the latest 2 movie reviews
SELECT * FROM Reviews ORDER BY review_date DESC LIMIT 2;
