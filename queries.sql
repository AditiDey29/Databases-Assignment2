SELECT * FROM person NATURAL JOIN address;

SELECT * FROM person LEFT JOIN address ON person.person_id = address.person_id;

SELECT job_profile.job_id, job_designation, job_location, program, parent_id FROM job_profile RIGHT JOIN prog_details ON job_profile.job_id = prog_details.parent_id;

SELECT AVG(no_of_pos_available) FROM prog_details;
SELECT MIN(no_of_pos_available) FROM prog_details;
SELECT MAX(no_of_pos_available) FROM prog_details;

RENAME TABLE person TO person_table;
select * from person;
RENAME TABLE person_table TO person;
