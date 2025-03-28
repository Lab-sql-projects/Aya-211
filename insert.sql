-- Insert Users
INSERT INTO Users (name, email) VALUES 
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Brown', 'charlie@example.com');

-- Insert Movies
INSERT INTO Movies (title, genre, release_year) VALUES 
('Inception', 'Sci-Fi', 2010),
('The Dark Knight', 'Action', 2008),
('Interstellar', 'Sci-Fi', 2014);

-- Insert Subscriptions
INSERT INTO Subscriptions (user_id, plan, start_date, end_date) VALUES 
(1, 'Premium', '2024-01-01', '2024-12-31'),
(2, 'Basic', '2024-02-01', '2024-08-01'),
(3, 'Standard', '2024-03-15', '2024-09-15');

-- Insert Reviews
INSERT INTO Reviews (user_id, movie_id, rating, review_text) VALUES 
(1, 1, 5, 'Amazing movie! Must watch.'),
(2, 2, 4, 'Great action scenes!'),
(3, 3, 5, 'Mind-blowing and emotional.');
