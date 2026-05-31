
CREATE TABLE monthly_returns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    church_id INT NOT NULL,
    month INT NOT NULL,
    year INT NOT NULL,
    tithes_amount DECIMAL(12,2) NOT NULL,
    member_contribution DECIMAL(12,2) NOT NULL,
    number_of_members INT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (church_id) REFERENCES churches(id),
    UNIQUE(church_id, month, year)
);
