use placement_management_system;
DROP TABLE IF EXISTS placement_management_system.student; 

CREATE TABLE student(
  student_id INT PRIMARY KEY,
  cpi DECIMAL(4,2) not null constraint student_cpi_chk check(CPI>0),
  backlogs BOOLEAN DEFAULT 0,
  category VARCHAR(20),
  gender VARCHAR(20) not null,
  dob date NOT NULL,
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

INSERT INTO student (student_id, cpi, backlogs, category, gender, dob, professional_experience, personal_mail, year_of_graduation, current_program, cv, major_disciplines, minor_disciplines, date_of_joining) VALUES
  (1, 8.5, false, 'General', 'Male', '2000-01-01', 2, 'john.doe@example.com', 2022, 'Bachelor of Science', '0x123456789abcdef', 'Computer Science', NULL, '2023-02-26'),
  (2, 9.0, false, 'General', 'Female', '2001-03-15', 1, 'jane.doe@example.com', 2022, 'Bachelor of Arts', '0xabcdef0123456789', 'English Literature', NULL, '2023-02-26'),
  (3, 7.5, true, 'SC', 'Male', '1999-07-23', 3, 'jimmy@example.com', 2021, 'Bachelor of Technology', '0x0123456789abcdef', 'Mechanical Engineering', 'Mathematics', '2023-02-26'),
  (4, 8.2, false, 'General', 'Male', '2000-05-19', 0, 'smith@example.com', 2022, 'Bachelor of Science', '0x89abcdef01234567', 'Physics', 'Computer Science', '2023-02-26'),
  (5, 6.9, true, 'ST', 'Female', '2000-10-10', 2, 'sara@example.com', 2021, 'Bachelor of Technology', '0x23456789abcdef01', 'Electronics and Communication Engineering', NULL, '2023-02-26'),
  (6, 8.8, false, 'General', 'Male', '1999-11-02', 1, 'peter@example.com', 2022, 'Bachelor of Science', '0x3456789abcdef012', 'Chemistry', NULL, '2023-02-26'),
  (7, 9.5, false, 'General', 'Female', '2001-01-10', 0, 'emma@example.com', 2022, 'Bachelor of Arts', '0x456789abcdef0123', 'History', NULL, '2023-02-26');

SELECT * from placement_management_system.student;