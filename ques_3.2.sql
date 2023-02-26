-- Create a user named "user1" with the password "password1". 1 x 1 = 1 Pts
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';

-- Create Views on any of the two tables formed by G1 as view1 and view2. And make sure that views contain columns from at least two tables and one additional column with the user-defined data type.  6 x 1 = 6 Pts
CREATE VIEW view1 AS SELECT job_id, job_designation, job_description, job_location FROM job_profile WHERE job_designation="SDE";
CREATE VIEW view2 AS SELECT person_id, first_name, email, mobile_number, person_role FROM person WHERE person_role="student";

select * from view1;
select * from view2;

-- Grant "user1" the following permissions on "table1": 		3 x 1 = 3 Pts
-- SELECT
-- UPDATE
-- DELETE
GRANT SELECT, UPDATE, DELETE ON placement_management_system.person TO 'user1'@'localhost';

-- Grant "user1" the following permissions on "view1":		 2 x 1  = 2 Pts
-- SELECT
GRANT SELECT ON placement_management_system.view1 TO 'user1'@'localhost';

-- ques6
-- Revoke the UPDATE and DELETE permissions on "table1" for "user1" and report your findings. 4 x 1 = 4 Pts
REVOKE UPDATE,DELETE ON placement_management_system.person  FROM 'user1'@'localhost';
set profiling = 1;
select * from job_profile where job_location="Mumbai";
set profiling = 0;
show profiles;

-- ALTER TABLE job_profile DROP INDEX loc;

CREATE INDEX job_desig ON job_profile(job_designation);
CREATE INDEX loc ON job_profile(job_location);

set profiling = 1;
select * from job_profile where job_location="Mumbai";
set profiling = 0;
show profiles;

