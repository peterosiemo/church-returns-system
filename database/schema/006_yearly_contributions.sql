
CREATE TABLE church_yearly_contributions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    church_id INT NOT NULL,
    contribution_type_id INT NOT NULL,
    year INT NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (church_id) REFERENCES churches(id),
    FOREIGN KEY (contribution_type_id) REFERENCES contribution_types(id),
    UNIQUE(church_id, contribution_type_id, year)
);
