-- Drop existing tables (if they exist)
DROP TABLE IF EXISTS "Enrolments" CASCADE;
DROP TABLE IF EXISTS "Users" CASCADE;
DROP TABLE IF EXISTS "Roles" CASCADE;
DROP TABLE IF EXISTS "Courses" CASCADE;

-- Table structure for table `Courses`
CREATE TABLE "Courses" (
  "CourseID" SERIAL PRIMARY KEY,
  "Title" VARCHAR(45),
  "TeacherID" INT DEFAULT 0,
  "isAvailable" BOOLEAN DEFAULT FALSE
);

INSERT INTO "Courses" ("Title", "TeacherID", "isAvailable") VALUES 
('Data structures',6,FALSE),
('Databases',5,FALSE),
('Machine learning',0,FALSE),
('Network security',0,FALSE),
('Computer graphics',0,FALSE),
('Computer programming I',0,FALSE),
('Game development',0,FALSE),
('Computer algorithms',0,FALSE),
('Computer programming II',0,FALSE),
('Project management',0,FALSE);

-- Table structure for table `Roles`
CREATE TABLE "Roles" (
  "RoleID" SERIAL PRIMARY KEY,
  "Role" VARCHAR(45) DEFAULT NULL
);

INSERT INTO "Roles" ("Role") VALUES ('Admin'), ('Teacher'), ('Student');

-- Table structure for table `Users`
CREATE TABLE "Users" (
  "UserID" SERIAL NOT NULL PRIMARY KEY,
  "Name" VARCHAR(45) DEFAULT NULL,
  "RoleID" INT NOT NULL,
  CONSTRAINT "fk_Users_Roles1" FOREIGN KEY ("RoleID") REFERENCES "Roles" ("RoleID")
);

INSERT INTO "Users" ("Name", "RoleID") VALUES
('Clark Taylor', 1),
('Natalie Armstrong', 1),
('Max Barrett', 2),
('Alisa Barnes', 2),
('Catherine Nelson', 2),
('Ted Casey', 2),
('Dainton Henderson', 2),
('Sarah Howard', 2),
('Carina Higgins', 2),
('Nicholas Ross', 3),
('Adrianna Hall', 3),
('Kelvin Murray', 3),
('Kate Wilson', 3),
('Marcus Johnson', 3),
('Valeria Cooper', 3),
('James Riley', 3),
('Bruce Stewart', 3),
('Alexia Barrett', 3),
('Adam Perkins', 3),
('Sam Foster', 3),
('Charlotte Howard', 3),
('Violet West', 3),
('Brianna Brooks', 3),
('Rubie Roberts', 3),
('Jessica Perkins', 3),
('Anna Roberts', 3),
('Sabrina Crawford', 3),
('Luke Murphy', 3),
('Miley Cunningham', 3),
('Julia Scott', 3);

-- Table structure for table `enrolments`
drop table enrolments cascade
CREATE TABLE "Enrolments" (
  "EnrolmentID" SERIAL NOT NULL PRIMARY KEY,
  "Mark" SMALLINT DEFAULT NULL,
  "CourseID" INT NOT NULL,
  "UserID" INT NOT NULL,
  CONSTRAINT "fk_Enrolments_Courses" FOREIGN KEY ("CourseID") REFERENCES "Courses" ("CourseID"),
  CONSTRAINT "fk_Enrolments_Users1" FOREIGN KEY ("UserID") REFERENCES "Users" ("UserID")
);

INSERT INTO "Enrolments" ("EnrolmentID", "Mark", "CourseID", "UserID") VALUES
(12, 1, 1, 16);