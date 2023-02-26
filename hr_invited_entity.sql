use placement_management_system;
DROP TABLE IF EXISTS placement_management_system.hr_invited; 

CREATE TABLE placement_management_system.hr_invited(
    email_id VARCHAR(255) NOT NULL PRIMARY KEY,
    hr_status VARCHAR(50) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    admin_id VARCHAR(20) NOT NULL DEFAULT('A005'),
    FOREIGN KEY (admin_id) REFERENCES placement_management_system.administrator(admin_id)
);

INSERT INTO placement_management_system.hr_invited (email_id, hr_status, company_name) VALUES
('john.doe@example.com', 'Pending', 'Acme Inc.'),
('jane.doe@example.com', 'Accepted', 'Globex Corporation'),
('bob.smith@example.com', 'Rejected', 'Initech'),
('alice.jones@example.com', 'Pending', 'Stark Industries'),
('david.wong@example.com', 'Accepted', 'Wayne Enterprises'),
('sarah.jackson@example.com', 'Rejected', 'Umbrella Corporation'),
('michael.chang@example.com', 'Pending', 'Weyland-Yutani'),
('emma.nguyen@example.com', 'Accepted', 'Tyrell Corporation'),
('kevin.brown@example.com', 'Rejected', 'Oscorp'),
('lisa.kim@example.com', 'Pending', 'Spacely Sprockets');

SELECT * from placement_management_system.hr_invited
