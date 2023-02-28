drop table job_profile;
use placement_management_system;

CREATE TABLE placement_management_system.job_profile(
	job_id VARCHAR(50) PRIMARY KEY,
    job_designation VARCHAR(50) NOT NULL,
    job_description LONGBLOB NOT NULL,
    job_location VARCHAR(150),
    service_bond BOOLEAN NOT NULL,
    terms_and_condition LONGBLOB,
    six_month_intern_possibility BOOLEAN DEFAULT 0,
    early_onboarding_possibility BOOLEAN DEFAULT 0,
    particularly_early_onboarding_required BOOLEAN DEFAULT 0,
    early_graduate_students_are_excluded BOOLEAN DEFAULT 0,
    current_status VARCHAR(50) NOT NULL,
    start_date date,
    end_date date,
    shortlist_from_resume BOOLEAN DEFAULT 0,
    eligible_minor_disc VARCHAR(30) constraint length1 check(CHAR_LENGTH(eligible_minor_disc)=15),
    ppt BOOLEAN DEFAULT 0,
    eligible_major_disc VARCHAR(30) NOT NULL constraint length2 check(CHAR_LENGTH(eligible_major_disc)=15),
    technical_test BOOLEAN DEFAULT 0,
    aptitude_test BOOLEAN,
    psychometric_test BOOLEAN DEFAULT 0,
    group_discussion BOOLEAN DEFAULT 0,
    technical_interviews BOOLEAN DEFAULT 0 CONSTRAINT tech_interview CHECK(technical_interviews>=0),
    hr_interviews BOOLEAN DEFAULT 0 constraint hr_interview check(hr_interviews>=0)
);


INSERT INTO job_profile(job_id, job_designation, job_description, job_location, service_bond, terms_and_condition, six_month_intern_possibility, early_onboarding_possibility, particularly_early_onboarding_required,early_graduate_students_are_excluded, current_status, start_date, end_date, shortlist_from_resume,eligible_minor_disc,ppt ,eligible_major_disc,technical_test ,aptitude_test,psychometric_test,group_discussion,technical_interviews,hr_interviews)
VALUES
("0000000001", "SDE", "", "Hyderabad", 1, "", 1, 1, 0, 1, "coding round", '2023-02-25', '2023-02-26', 1, "111111110000000", 1, "111111110000000", 1, 0,1,0,1,0),
("0000000002", "Software Engineer", "", "Bangalore", 0, "", 0, 1, 1, 0, "interview round", '2023-02-26', '2023-02-27', 1, "111111110000000", 0, "111111111000000", 1, 0,1,1,1,1),
("0000000003", "Data Analyst", "", "Mumbai", 0, "", 1, 1, 0, 1, "coding round", '2023-02-27', '2023-02-28', 0, "111111100000000", 0, "111111111100000", 0, 1,1,0,1,1),
("0000000004", "DevOps Engineer", "", "Pune", 1, "", 1, 1, 0, 1, "interview round", '2023-02-28', '2023-03-01', 1, "111111110000000", 1, "111111111000000", 1, 1,1,1,1,1),
("0000000005", "Product Manager", "", "Delhi", 0, "", 1, 1, 1, 0, "coding round", '2023-03-01', '2023-03-02', 0, "111111110000000", 1, "111111111000000", 0, 1,1,1,1,1),
("0000000006", "QA Analyst", "", "Chennai", 0, "", 0, 1, 0, 0, "interview round", '2023-03-02', '2023-03-03', 1, "111111111000000", 0, "111111111000000", 1, 1,1,0,1,1),
("0000000007", "Full Stack Developer", "", "Bangalore", 0, "", 0, 0, 0, 1, "coding round", '2023-03-03', '2023-03-04', 1, "111111110000000", 1, "111111111100000", 0, 0,1,1,1,1),
("0000000008", "Backend Developer", "", "Mumbai", 0, "", 1, 1, 0, 1, "coding round", '2023-03-04', '2023-03-05', 1, "111111110000000", 1, "111111111000000", 1, 1,1,1,1,1),
("0000000009", "Frontend Developer", "", "Chennai", 0, "", 1, 1, 1, 0, "interview round", '2023-03-05', '2023-03-06', 0, "111111110000000", 1, "111111111000000", 0, 1,1,1,1,1),
("0000000010", "Business Analyst", "", "Delhi", 1, "", 1, 0, 0, 1, "coding round", '2023-03-06', '2023-03-07', 1, "111111111000000", 1, "111111111000000", 0, 1,0,0,1,1),
("0000000011", "Database Administrator", "", "Hyderabad", 0, "", 1, 1, 1, 0, "interview round", '2023-03-07', '2023-03-08', 1, "111111110000000", 1, "111111111000000", 0, 0,1,0,1,1),
("0000000012", "DevOps Engineer", "", "Pune", 0, "", 0, 1, 0, 0, "coding round", '2023-03-08', '2023-03-09', 1, "111111110000000", 0, "111111111100000", 0, 1,1,1,1,1),
("0000000013", "Technical Writer", "", "Bangalore", 0, "", 0, 1, 0, 1, "interview round", '2023-03-09', '2023-03-10', 0, "111111111000000", 1, "111111111100000", 0, 0,1,1,1,1),
("00000000014", "SDE", "", "Hyderabad", 1, "", 1, 1, 0, 1, "coding round", '2023-03-11', '2023-03-12', 1, "111111110000000", 1, "111111110000000", 1, 0,1,0,1,0),
("00000000015", "SDE", "", "Bangalore", 0, "", 0, 1, 1, 0, "interview round", '2023-03-12', '2023-03-13', 1, "111111110000000", 0, "111111111000000", 1, 1,0,1,1,1),
("00000000016", "SDE", "", "Delhi", 0, "", 1, 1, 0, 1, "coding round", '2023-03-13', '2023-03-14', 0, "111111111000000", 0, "111111110000000", 1, 1,1,1,0,1),
("00000000017", "SDE", "", "Mumbai", 1, "", 0, 1, 1, 0, "interview round", '2023-03-14', '2023-03-15', 0, "111111111000000", 0, "111111110000000", 0, 0,1,0,1,1),
("00000000018", "SDE", "", "Pune", 0, "", 1, 1, 1, 0, "coding round", '2023-03-15', '2023-03-16', 1, "111111110000000", 1, "111111111000000", 0, 1,1,1,1,0),
("00000000019", "SDE", "", "Chennai", 0, "", 1, 0, 0, 1, "interview round", '2023-03-16', '2023-03-17', 1, "111111110000000", 1, "111111110000000", 0, 0,1,1,1,1)


