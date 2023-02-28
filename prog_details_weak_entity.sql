CREATE TABLE prog_details (
  job_id VARCHAR(50),
  no_of_pos_available INT NOT NULL CONSTRAINT cons1 CHECK(no_of_pos_available>0),
  basic INT NOT NULL CONSTRAINT cons2 CHECK (basic > 0),
  hra INT DEFAULT 0 NULL CONSTRAINT cons3 CHECK (hra > 0 OR hra IS NULL),
  gross INT DEFAULT 0 NULL CONSTRAINT cons4 CHECK (gross > 0 OR gross IS NULL),
  other INT DEFAULT 0 NULL CONSTRAINT cons5 CHECK (other > 0 OR other IS NULL),
  take_home INT NOT NULL CONSTRAINT cons6 CHECK (take_home > 0),
  ctc INT NOT NULL CONSTRAINT cons7 CHECK (ctc > 0),
  program VARCHAR(255) NOT NULL,
  parent_id VARCHAR(50),
  PRIMARY KEY (job_id, parent_id),
  constraint var_program FOREIGN KEY (parent_id) REFERENCES job_profile (job_id)
  on update cascade
  on delete cascade
);

-- select * from job_profile;
-- drop table prog_details;

insert into prog_details(job_id, no_of_pos_available, basic, hra, gross, other, take_home, ctc, program, parent_id) values
("00000000001", 2, 12200, 678979, 8768, 098756, 7889, 897998899, "BTECH", "00000000014"),
("00000000002", 3, 12200, 698979, 87680, 098756, 7889, 899799, "MTECH", "00000000014"),
("00000000003", 2, 12200, 678979, 8768, 098756, 7889, 897998899, "BTECH", "00000000018"),
("00000000004", 2, 12200, 678979, 8768, 098756, 7889, 897998899, "MSC", "00000000019");