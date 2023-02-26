create database placement_management_system;
use placement_management_system;
DROP TABLE IF EXISTS placement_management_system.company_details; 

CREATE TABLE placement_management_system.company_details (
    company_id varchar(50) not null primary key,
    company_rep VARCHAR(50) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    website VARCHAR(255),
    type_of_org VARCHAR(255) NOT NULL,
    industry_sector VARCHAR(50) NOT NULL,
    no_of_members INT DEFAULT(0) CHECK(no_of_members>0),
    no_of_rooms_required INT DEFAULT(0) CHECK(no_of_rooms_required>=0),
    start_date datetime NOT NULL,
    end_date datetime NOT NULL,
    CONSTRAINT check_duration CHECK (DATEDIFF(end_date, start_date) >= 0)
);

INSERT INTO placement_management_system.company_details (company_id, company_rep, company_name, website, type_of_org, industry_sector, no_of_members, no_of_rooms_required, start_date, end_date)
VALUES
('HR41996364','CEO','Schneider Electric','https://HR41996364','Chemical Engineering-based','Private',6,5,'2023-05-21', '2023-05-21'),
('HR69955116','HR','Hitachi','https://HR69955116','Materials Science and Engineering-based','Private',3,7,'2023-07-18', '2023-07-27'),
('HR81546808','CTO','General Electric','https://HR81546808','Chemical Engineering-based','Private',5,6,'2023-07-05','2023-07-21'),
('HR64395841','HR','Emerson Electric','https://HR64395841','Electrical Engineering-based','Private',5,6,'2023-06-05','2023-06-21'),
('HR50690023','Product Manager','Emerson Electric','https://HR50690023','Environmental Engineering-based','Public',4,6,'2023-06-04','2023-06-21');

SELECT * from placement_management_system.company_details