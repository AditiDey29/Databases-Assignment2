CREATE TABLE address (
  person_id INT,
  zip_code int NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(50) NOT NULL,
  address_line VARCHAR(255) NOT NULL,
  parent_id INT,
  FOREIGN KEY (parent_id) REFERENCES person(person_id),
  PRIMARY KEY (person_id, parent_id)
);

-- drop table address;
INSERT INTO address (person_id, zip_code, city, state, address_line, parent_id) VALUES 
(20110007, 229908, "jhansi", "up", "xyz road", 20110007), 
(20110026, 229907, "lucknow", "up", "abc road", 20110026), 
(20110142, 229903, "ahemdabad", "gujarat", "pqr road", 20110142), 
(20110145, 229908, "jhansi", "up", "xyz road", 20110145), 
(20110146, 229908, "panaji", "goa", "xyz road", 20110146);





