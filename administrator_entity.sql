use placement_management_system;
DROP TABLE IF EXISTS placement_management_system.administrator; 


CREATE TABLE placement_management_system.administrator(
    admin_id VARCHAR(20) NOT NULL PRIMARY KEY,
    designation VARCHAR(50) NOT NULL
);

INSERT INTO placement_management_system.administrator (admin_id, designation) VALUES
('A001', 'HR Manager'),
('A002', 'Recruiting Specialist'),
('A003', 'Talent Acquisition Manager'),
('A004', 'Human Resources Director'),
('A005', 'Compensation Analyst'),
('A006', 'Benefits Administrator'),
('A007', 'Training Coordinator'),
('A008', 'Employee Relations Specialist'),
('A009', 'Organizational Development Manager'),
('A010', 'Payroll Coordinator');




