-- drop table applies_to;

CREATE TABLE applies_to (
  job_id VARCHAR(50),
  person_id INT,
  is_protected bool,
  curr_status varchar(50),
  PRIMARY KEY (job_id, person_id),
  FOREIGN KEY (person_id) REFERENCES student(person_id),
  FOREIGN KEY (job_id) REFERENCES job_profile(job_id)
);