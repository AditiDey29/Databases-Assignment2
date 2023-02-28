DROP TABLE IF EXISTS placement_management_system.hr;

CREATE TABLE placement_management_system.hr ( 
  email_id VARCHAR(255) UNIQUE NOT NULL,
  CHECK (email_id LIKE '%@%.%' AND email_id NOT LIKE '%@%@%'),
  hr_status VARCHAR(50) NOT NULL,
  company_name VARCHAR(100) NOT NULL,
  parent_id int,
  constraint mailed_to FOREIGN KEY(parent_id) REFERENCES administrator(person_id)
   on delete cascade
   on update cascade
);

INSERT INTO placement_management_system.hr (email_id, hr_status, company_name, parent_id)
values
('prakriti.saroj@iitgn.ac.in', 'mailed', 'google', 11007890),
('prakriti.saroj1@iitgn.ac.in', 'mailed', 'google', 11007890);


SELECT * FROM placement_management_system.hr where parent_id = 11007890;

