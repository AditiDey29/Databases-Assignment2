use placement_management_system;
DROP TABLE IF EXISTS placement_management_system.student; 

CREATE TABLE student(
  person_id INT PRIMARY KEY,
  cpi DECIMAL(4,2) not null constraint student_cpi_chk check(CPI>0),
  backlogs BOOLEAN DEFAULT 0,
  category VARCHAR(20),
  gender VARCHAR(20) not null,
  dob date NOT NULL,
  professional_experience INT DEFAULT 0,
  personal_mail VARCHAR(319),
  constraint student_email_chk CHECK (personal_mail LIKE '%@%.%' AND personal_mail NOT LIKE '%@%@%'),
  year_of_graduation INT not null,
  current_program VARCHAR(50) not null,
  cv LONGBLOB not null,
  major_disciplines VARCHAR(50) not null,
  minor_disciplines VARCHAR(50) DEFAULT 0,
  date_of_joining date,
  parent_id int,
  FOREIGN KEY (parent_id) REFERENCES person(person_id)
); 

INSERT INTO student (person_id, cpi, backlogs, category, gender, dob, professional_experience, personal_mail, year_of_graduation, current_program, cv, major_disciplines, minor_disciplines, date_of_joining,parent_id) VALUES
  (20110146, 9.77, false, 'General', 'Male', '2000-01-01', 2, 'john.doe@example.com', 2022, 'Bachelor of Science', '0x123456789abcdef', 'Computer Science', NULL, '2023-02-26',20110146),
  (20110147, 9.0, false, 'General', 'Female', '2001-03-15', 1, 'jane.doe@example.com', 2022, 'Bachelor of Arts', '0xabcdef0123456789', 'English Literature', NULL, '2023-02-26',20110147),
  (20110148, 7.5, true, 'SC', 'Male', '1999-07-23', 3, 'jimmy@example.com', 2021, 'Bachelor of Technology', '0x0123456789abcdef', 'Mechanical Engineering', 'Mathematics', '2023-02-26',20110148),
  (20110149, 8.2, false, 'General', 'Male', '2000-05-19', 0, 'smith@example.com', 2022, 'Bachelor of Science', '0x89abcdef01234567', 'Physics', 'Computer Science', '2023-02-26',20110149);
  
  INSERT INTO student (person_id, cpi, backlogs, category, gender, dob, professional_experience, personal_mail, year_of_graduation, current_program, cv, major_disciplines, minor_disciplines, date_of_joining,parent_id) VALUES
  (20110155, 8.8, false, 'General', 'Male', '1999-11-02', 1, 'peter@example.com', 2022, 'Bachelor of Science', '0x3456789abcdef012', 'Chemistry', NULL, '2023-02-26',20110155),
  (20110156, 9.5, false, 'General', 'Female', '2001-01-10', 0, 'emma@example.com', 2022, 'Bachelor of Arts', '0x456789abcdef0123', 'History', NULL, '2023-02-26',20110156);
  
  INSERT INTO student (person_id, cpi, backlogs, category, gender, dob, professional_experience, personal_mail, year_of_graduation, current_program, cv, major_disciplines, minor_disciplines, date_of_joining,parent_id) VALUES
  (20110167, 8.5, false, 'General', 'Male', '2000-01-01', 2, 'john.doe@example.com', 2022, 'Bachelor of Science', '0x123456789abcdef', 'Computer Science', NULL, '2023-02-26',20110167),
  (20110168, 9.0, false, 'General', 'Female', '2001-03-15', 1, 'jane.doe@example.com', 2022, 'Bachelor of Arts', '0xabcdef0123456789', 'English Literature', NULL, '2023-02-26',20110168),
  (20110190, 7.5, true, 'SC', 'Male', '1999-07-23', 3, 'jimmy@example.com', 2021, 'Bachelor of Technology', '0x0123456789abcdef', 'Mechanical Engineering', 'Mathematics', '2023-02-26',20110190);
  
SELECT * from placement_management_system.student;
