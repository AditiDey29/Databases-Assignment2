create database placement_management_system;

CREATE TYPE Phone AS (
    area_code CHAR(3),
    exchange CHAR(3),
    number CHAR(4)
    );

-- table1
CREATE TABLE placement_management_system.student(
  student_id INT PRIMARY KEY,
  cpi DECIMAL(1,2) not null constraint student_cpi_chk check(CPI>0),
  backlogs BOOLEAN DEFAULT 0,
  category VARCHAR(20),
  gender VARCHAR(20) not null,
  dob date NOT NULL CHECK (DOB >= 16),
  professional_experience INT DEFAULT 0,
  personal_mail VARCHAR(319),
  CHECK (personal_mail LIKE '%@%.%' AND personal_mail NOT LIKE '%@%@%'),
  year_of_graduation INT not null,
  current_program VARCHAR(50) not null,
  cv LONGBLOB not null,
  major_disciplines VARCHAR(50) not null,
  minor_disciplines VARCHAR(50) DEFAULT 0,
  date_of_joining date
);

-- table2
CREATE TABLE placement_management_system.administrator(
admin_id varchar(20) PRIMARY KEY,
designation varchar(50) not null
);

-- table3
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
    eligible_minor_disc VARCHAR(30) DEFAULT 0,
    ppt BOOLEAN DEFAULT 0,
    eligible_major_disc VARCHAR(30) NOT NULL,
    technical_test BOOLEAN DEFAULT 0,
    aptitude_test BOOLEAN,
    psychometric_test BOOLEAN DEFAULT 0,
    group_discussion BOOLEAN DEFAULT 0,
    technical_interviews BOOLEAN DEFAULT 0 constraint no_of_interview check(technical_interviews>=0),
    hr_interviews BOOLEAN DEFAULT 0 constraint no_of_interview check(technical_interviews>=0)
);

-- table4
CREATE TABLE placement_management_system.hr_invited(
    email_id VARCHAR(255) NOT NULL PRIMARY KEY,
    hr_status VARCHAR(50) NOT NULL,
    company_name VARCHAR(100) NOT NULL
);

-- table5
CREATE TABLE placement_management_system.person (
    person_id int primary key,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    last_name VARCHAR(255),
    country_code VARCHAR(255) NOT NULL,
 --    mobile_number VARCHAR(255) UNIQUE NOT NULL CHECK (LENGTH(mobile_number) = 10), 
	mobile_number Phone,
    email VARCHAR(255) UNIQUE NOT NULL,
    CHECK (email LIKE '%@%.%' AND email NOT LIKE '%@%@%'),
    profile_photo BLOB DEFAULT(''),
    password_hash VARCHAR(64) NOT NULL,   -- password_hash
    nationality varchar(255),
    person_role VARCHAR(255)
);

-- table6
CREATE TABLE placement_management_system.company_details (
    company_id int primary key,
    company_rep VARCHAR(255) NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    website VARCHAR(255),
    type_of_org VARCHAR(255) NOT NULL,
    industry_sector VARCHAR(255) NOT NULL,
    no_of_members INT DEFAULT(0) CHECK(no_of_members>=0),
    no_of_rooms_required INT DEFAULT(0) CHECK(no_of_rooms_required>=0),
    start_date datetime NOT NULL,
    end_date datetime NOT NULL,
    CONSTRAINT check_duration CHECK (DATEDIFF('day', start_date, end_date) >= 30)
);



