CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

DESCRIBE student;
DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP COLUMN gpa;

SELECT name, major 
FROM student
WHERE ROWNUM < 3 AND major = 'Biology'
ORDER BY student_id DESC;

SELECT * 
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

-- <> is NOT EQUALS TO [unlike other programming languages where it is !=]

INSERT INTO student VALUES(student_id.NEXTVAL, 'Jack', 'Biology');
INSERT INTO student VALUES(student_id.NEXTVAL, 'Kate', 'Sociology');
INSERT INTO student VALUES(student_id.NEXTVAL, 'Claire', 'Chemistry');
INSERT INTO student VALUES(student_id.NEXTVAL, 'Jack', 'Biology');
INSERT INTO student VALUES(student_id.NEXTVAL, 'Mike', 'Computer Science');

CREATE SEQUENCE student_id MINVALUE 1 START WITH 1 CACHE 10;
DROP SEQUENCE student_id;

UPDATE student
SET name = 'TOM', major = 'undecided'
WHERE student_id = 1;

DELETE FROM student
WHERE student_id = 5;

-- END OF LESSON 1





























