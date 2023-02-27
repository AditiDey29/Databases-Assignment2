create database placement_management_system;
use placement_management_system;
DROP TABLE IF EXISTS placement_management_system.company_details; 

CREATE TABLE placement_management_system.company_details (
  person_id int not null PRIMARY KEY,
  company_rep VARCHAR(50) NOT NULL,
  company_name VARCHAR(100) NOT NULL,
  website VARCHAR(100),
  type_of_org VARCHAR(50) NOT NULL,
  industry_sector VARCHAR(50) NOT NULL,
  no_of_members INT NOT NULL,
  no_of_rooms_required INT NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  CONSTRAINT chk_mem CHECK (no_of_members > 0),
  CONSTRAINT chk_rooms CHECK ( no_of_rooms_required >= 0),
  parent_id int,
  FOREIGN KEY(parent_id) REFERENCES person(person_id)
);

DELIMITER ??
CREATE TRIGGER check_positive_days
BEFORE INSERT ON placement_management_system.company_details
FOR EACH ROW
BEGIN
    IF DATEDIFF(NEW.start_date, NEW.end_date) < 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'The date is in the past. Please enter a future date.';
    END IF;
END;
DELIMITER ;

INSERT INTO placement_management_system.company_details (person_id, company_rep, company_name, website, type_of_org, industry_sector, no_of_members, no_of_rooms_required, start_date, end_date, parent_id)
VALUES
(33123467, "HR", "Google", "www.google.com", "IT", "private",  3, 2, '2023-02-23', '2023-06-05', 33123467),
(33123468, "HR", "Google1", "www.google1.com", "IT", "private",  3, 1, '2023-02-23', '2023-06-05', 33123468);

select * from company_details;