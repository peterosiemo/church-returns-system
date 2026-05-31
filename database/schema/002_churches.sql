
CREATE TABLE churches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    region_id INT NOT NULL,
    church_name VARCHAR(150) NOT NULL,
    pastor_name VARCHAR(150),
    phone VARCHAR(30),
    email VARCHAR(150),
    location VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (region_id) REFERENCES regions(id)
);
