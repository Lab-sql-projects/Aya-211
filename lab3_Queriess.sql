
USE MovieStreaming;


CREATE OR REPLACE VIEW public_users AS
SELECT user_id, name, created_at
FROM Users;



ALTER TABLE Movies
MODIFY genre VARCHAR(50) NOT NULL;

ALTER TABLE Subscriptions
MODIFY plan VARCHAR(50) NOT NULL CHECK (plan IN ('Basic', 'Standard', 'Premium'));


CREATE INDEX idx_subscriptions_user_id ON Subscriptions(user_id);
CREATE INDEX idx_reviews_user_id ON Reviews(user_id);

START TRANSACTION;


INSERT INTO Users (name, email)
VALUES ('Aya Mahboub', 'aya@example.com');


INSERT INTO Subscriptions (user_id, plan, start_date, end_date)
VALUES (LAST_INSERT_ID(), 'Premium', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR));


UPDATE Subscriptions
SET plan = 'Standard'
WHERE user_id = LAST_INSERT_ID();

-- COMMIT;  
ROLLBACK;   


SELECT u.name, m.title, r.rating
FROM Users u
JOIN Reviews r ON u.user_id = r.user_id
JOIN Movies m ON r.movie_id = m.movie_id
WHERE r.rating > (
    SELECT AVG(rating) FROM Reviews
);


