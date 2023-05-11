CREATE TABLE Admins (
    admin_id INT PRIMARY KEY,
    admin_name VARCHAR(50),
    admin_email VARCHAR(50),
    admin_password VARCHAR(50)
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50),
    teacher_email VARCHAR(50),
    teacher_password VARCHAR(50)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    student_email VARCHAR(50),
    student_password VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    course_semester VARCHAR(10),
    course_capacity INT,
    course_teacher_id INT,
    course_admin_id INT,
    FOREIGN KEY (course_teacher_id) REFERENCES Teachers(teacher_id),
    FOREIGN KEY (course_admin_id) REFERENCES Admins(admin_id)
);

CREATE TABLE Enrolments (
    enrolment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


-- Insert 2 Admins
INSERT INTO Admins (admin_id, admin_name, admin_email, admin_password) VALUES 
(1, 'Admin 1', 'admin1@uni.uni', 'password1'),
(2, 'Admin 2', 'admin2@uni.uni', 'password2');

-- Insert 7 Teachers
INSERT INTO Teachers (teacher_id, teacher_name, teacher_email, teacher_password) VALUES 
(1, 'Teacher 1', 'teacher1@uni.uni', 'password1'),
(2, 'Teacher 2', 'teacher2@uni.uni', 'password2'),
(3, 'Teacher 3', 'teacher3@uni.uni', 'password3'),
(4, 'Teacher 4', 'teacher4@uni.uni', 'password4'),
(5, 'Teacher 5', 'teacher5@uni.uni', 'password5'),
(6, 'Teacher 6', 'teacher6@uni.uni', 'password6'),
(7, 'Teacher 7', 'teacher7@uni.uni', 'password7');

-- Insert 20 Students
INSERT INTO Students (student_id, student_name, student_email, student_password) VALUES 
(1, 'Student 1', 'student1@uni.uni', 'password1'),
(2, 'Student 2', 'student2@uni.uni', 'password2'),
(3, 'Student 3', 'student3@uni.uni', 'password3'),
(4, 'Student 4', 'student4@uni.uni', 'password4'),
(5, 'Student 5', 'student5@uni.uni', 'password5'),
(6, 'Student 6', 'student6@uni.uni', 'password6'),
(7, 'Student 7', 'student7@uni.uni', 'password7'),
(8, 'Student 8', 'student8@uni.uni', 'password8'),
(9, 'Student 9', 'student9@uni.uni', 'password9'),
(10, 'Student 10', 'student10@uni.uni', 'password10'),
(11, 'Student 11', 'student11@uni.uni', 'password11'),
(12, 'Student 12', 'student12@uni.uni', 'password12'),
(13, 'Student 13', 'student13@uni.uni', 'password13'),
(14, 'Student 14', 'student14@uni.uni', 'password14'),
(15, 'Student 15', 'student15@uni.uni', 'password15'),
(16, 'Student 16', 'student16@uni.uni', 'password16'),
(17, 'Student 17', 'student17@uni.uni', 'password17'),
(18, 'Student 18', 'student18@uni.uni', 'password18'),
(19, 'Student 19', 'student19@uni.uni', 'password19'),
(20, 'Student 20', 'student20@uni.uni', 'password20');

-- Insert 10 Courses
INSERT INTO Courses (course_id, course_name, course_semester, course_capacity, course_teacher_id, course_admin_id) VALUES 
(1, 'Course 1', 'Fall 2023', 50, 1, 1),
(2, 'Course 2', 'Fall 2023', 30, 2, 1),
(3, 'Course 3', 'Fall 2023', 25, 3, 1),
(4, 'Course 4', 'Spring 2024', 40, 4, 1),

-- Populate Admins table
INSERT INTO Admins (admin_name, admin_email, admin_password)
VALUES 
    ('John Smith', 'john.smith@uni.uni', 'password123'),
    ('Emily Johnson', 'emily.johnson@uni.uni', 'password456');

-- Populate Teachers table
INSERT INTO Teachers (teacher_name, teacher_email, teacher_password)
VALUES 
    ('Alice Lee', 'alice.lee@uni.uni', 'teacher123'),
    ('Bob Johnson', 'bob.johnson@uni.uni', 'teacher456'),
    ('Carol Chen', 'carol.chen@uni.uni', 'teacher789'),
    ('David Kim', 'david.kim@uni.uni', 'teacher101'),
    ('Eva Wong', 'eva.wong@uni.uni', 'teacher202'),
    ('Frank Rodriguez', 'frank.rodriguez@uni.uni', 'teacher303'),
    ('Grace Liu', 'grace.liu@uni.uni', 'teacher404');

-- Populate Students table
INSERT INTO Students (student_name, student_email, student_password)
VALUES 
    ('Amy Kim', 'amy.kim@uni.uni', 'student123'),
    ('Ben Lee', 'ben.lee@uni.uni', 'student456'),
    ('Charlie Chen', 'charlie.chen@uni.uni', 'student789'),
    ('Diana Wong', 'diana.wong@uni.uni', 'student101'),
    ('Erica Rodriguez', 'erica.rodriguez@uni.uni', 'student202'),
    ('Fred Liu', 'fred.liu@uni.uni', 'student303'),
    ('Gina Kim', 'gina.kim@uni.uni', 'student404'),
    ('Henry Lee', 'henry.lee@uni.uni', 'student505'),
    ('Ivy Chen', 'ivy.chen@uni.uni', 'student606'),
    ('Jackie Wong', 'jackie.wong@uni.uni', 'student707'),
    ('Karen Rodriguez', 'karen.rodriguez@uni.uni', 'student808'),
    ('Leo Liu', 'leo.liu@uni.uni', 'student909'),
    ('Maggie Kim', 'maggie.kim@uni.uni', 'student1010'),
    ('Nancy Lee', 'nancy.lee@uni.uni', 'student1111'),
    ('Oliver Chen', 'oliver.chen@uni.uni', 'student1212'),
    ('Penny Wong', 'penny.wong@uni.uni', 'student1313'),
    ('Quincy Rodriguez', 'quincy.rodriguez@uni.uni', 'student1414'),
    ('Ryan Liu', 'ryan.liu@uni.uni', 'student1515'),
    ('Samantha Kim', 'samantha.kim@uni.uni', 'student1616'),
    ('Tina Lee', 'tina.lee@uni.uni', 'student1717');

-- Populate Courses table
INSERT INTO Courses (course_name, course_semester, course_capacity, course_admin_id)
VALUES 
    ('Introduction to Computer Science', 'Fall 2023', 50, 1),
    ('Introduction to Statistics', 'Fall 2023', 30, 1),
    ('Calculus II', 'Spring 2024', 40, 2),
    ('Database Systems', 'Spring 2024', 30, 2),
    ('Data Structures and Algorithms', 'Fall 2024', 40, 2),
    ('Operating Systems', 'Fall 2024', 30, 1),
    ('Linear Algebra', 'Spring 2025', 50, 1),
    ('Artificial Intelligence', 'Spring 2025', 30, 2),
    ('Machine Learning', 'Fall 2025', 40, 1),
    ('Computer Networks', 'Fall 2025', 30, 2);

INSERT INTO Enrol (enrol_id, enrol_student_id, enrol_course_id, enrol_status) 
VALUES 
(1, 1, 1, 'Enrolled'),
(2, 2, 1, 'Enrolled'),
(3, 3, 1, 'Enrolled'),
(4, 4, 1, 'Enrolled'),
(5, 5, 1, 'Enrolled'),
(6, 6, 1, 'Enrolled'),
(7, 7, 2, 'Enrolled'),
(8, 8, 2, 'Enrolled'),
(9, 9, 2, 'Enrolled'),
(10, 10, 2, 'Enrolled'),
(11, 1, 3, 'Enrolled'),
(12, 2, 3, 'Enrolled'),
(13, 3, 3, 'Enrolled'),
(14, 4, 3, 'Enrolled'),
(15, 5, 3, 'Enrolled'),
(16, 6, 3, 'Enrolled'),
(17, 7, 4, 'Enrolled'),
(18, 8, 4, 'Enrolled'),
(19, 9, 4, 'Enrolled'),
(20, 10, 4, 'Enrolled');