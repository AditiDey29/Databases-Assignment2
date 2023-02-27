create database placement_management_system;
use placement_management_system;

-- table5
CREATE TABLE placement_management_system.person (
    person_id int primary key,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    last_name VARCHAR(255),
    -- mobile_number VARCHAR(255) UNIQUE NOT NULL CHECK (LENGTH(mobile_number) = 10), 
	mobile_number JSON,
    email VARCHAR(255) UNIQUE NOT NULL,
    CHECK (email LIKE '%@%.%' AND email NOT LIKE '%@%@%'),
    profile_photo BLOB DEFAULT(''),
    password_hash VARCHAR(64) NOT NULL,   -- password_hash
    nationality varchar(255),
    person_role VARCHAR(255)
);
-- inserting student entries
INSERT INTO person(person_id, first_name, middle_name, last_name, mobile_number, email, profile_photo, password_hash, nationality, person_role)
VALUES 
(20110146,"John", "Doe", "", '{"country_code":1, "number":1234567890}', "johndoe@example.com", "", "password1", "American", "student"),
(20110147,"Jane", "Smith", "", '{"country_code":1, "number":2345678901}', "janesmith@example.com", "", "password2", "Canadian", "student"),
(20110148,"Alice", "Wong", "", '{"country_code":1, "number":3456789012}', "alicewong@example.com", "", "password3", "Chinese", "student"),
(20110149,"Bob", "Johnson", "", '{"country_code":1, "number":4567890123}', "bobjohnson@example.com", "", "password4", "British", "student"),
(20111050,"Sarah", "Lee", "", '{"country_code":1, "number":5678901234}', "sarahlee@example.com", "", "password5", "Korean", "student"),
(20110155,"David", "Kim", "", '{"country_code":1, "number":6789012345}', "davidkim@example.com", "", "password6", "Korean", "student"),
(20110156,"Emily", "Nguyen", "", '{"country_code":1, "number":7890123456}', "emilynguyen@example.com", "", "password7", "Vietnamese", "student"),
(20110167,"Alex", "Garcia", "", '{"country_code":1, "number":8901234567}', "alexgarcia@example.com", "", "password8", "Mexican", "student"),
(20110168,"Sophie", "Chen", "", '{"country_code":1, "number":9012345678}', "sophiechen@example.com", "", "password9", "Taiwanese", "student"),
(20110190,"Michael", "Lee", "", '{"country_code":1, "number":1234509876}', "michaellee@example.com", "", "password10", "American", "student");

-- inserting admin entries
INSERT INTO person(person_id, first_name, middle_name, last_name, mobile_number, email, profile_photo, password_hash, nationality, person_role)
VALUES
(11007890,"Sophie", "Chen", "", '{"country_code":1, "number":9012345678}', "sophiechen1@example.com", "", "password9", "Taiwanese", "admin"),
(11007891,"Michael", "Lee", "", '{"country_code":1, "number":1234509876}', "michaellee1@example.com", "", "password10", "American", "admin");

select * from person;
