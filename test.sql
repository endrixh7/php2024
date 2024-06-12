CREATE TABLE posts(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR (255) NOT NULL,
    body        TEXT NOT NULL,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

INSERT INTO posts (title, body) VALUES 
('Post four', 'This is post four'),
('Post five', 'This is post five');

Try to learn CRUD in SQL and you are good to go ❤️

