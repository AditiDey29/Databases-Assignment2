use placement_management_system;
DROP TABLE IF EXISTS placement_management_system.administrator; 


CREATE TABLE placement_management_system.administrator(
    person_id int NOT NULL PRIMARY KEY,
    designation VARCHAR(50) NOT NULL,
    parent_id int,
	FOREIGN KEY(parent_id) REFERENCES person(person_id)
);

INSERT INTO placement_management_system.administrator (person_id, designation, parent_id) VALUES
(11007890,'Placement Coordinator',11007890),
(11007891,'Placement Coordinator',11007891);

SELECT * FROM placement_management_system.administrator
