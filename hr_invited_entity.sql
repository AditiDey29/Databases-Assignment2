create database hr_invited;
use hr_invited;
DROP TABLE IF EXISTS hr_invited.hr;

CREATE TABLE hr_invited.hr ( 
  email_id VARCHAR(255) UNIQUE NOT NULL,
  CHECK (email_id LIKE '%@%.%' AND email_id NOT LIKE '%@%@%'),
  hr_status VARCHAR(50) NOT NULL,
  company_name VARCHAR(100) NOT NULL
);

INSERT INTO hr_invited.hr (email_id, hr_status, company_name)
SELECT p.email_id, 
       CASE 
         WHEN RAND() < 0.25 THEN 'called' 
         WHEN RAND() BETWEEN 0.25 AND 0.5 THEN 'Mail sent' 
         WHEN RAND() BETWEEN 0.5 AND 0.75 THEN 'Reply received' 
         ELSE 'Received details' 
       END AS hr_status, 
       cd.company_name
FROM people.person p
JOIN people.company_details cd ON p.person_id = cd.company_id
WHERE p.email_id NOT IN (SELECT email_id FROM hr_invited.hr);


SELECT * FROM hr_invited.hr;

