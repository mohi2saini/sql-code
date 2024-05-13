-- Create table command
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL
);

-- Insert data command
INSERT INTO users (name, email) VALUES ('John Doe', 'john.doe@example.com');
INSERT INTO users (name, email) VALUES ('Jane Doe', 'jane.doe@example.com');

-- Delete data command
DELETE FROM users WHERE id = 1;

-- Update data command
UPDATE users SET name = 'John Updated' WHERE id = 1;

-- Select data command
SELECT * FROM users;