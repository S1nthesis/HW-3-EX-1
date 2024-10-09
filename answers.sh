SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Gender='F' AND Age=30;
SELECT Points FROM students WHERE Name='Alex';
INSERT INTO students VALUES(7, 'Christopher', '21', 'M', 500);
UPDATE students SET Points = 500 WHERE Name='Basma';
UPDATE students SET Points = 100 WHERE Name='Alex';

CREATE TABLE graduates(
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM students WHERE Name='Layal';

SELECT employees.Name, employees.Company, companies.Date FROM employees JOIN companies ON employees.Company = companies.Name;
SELECT employees.Name FROM employees JOIN companies ON employees.Company = companies.Name WHERE companies.Date < 2000;
SELECT companies.Name FROM companies JOIN employees ON employees.Company = companies.Name WHERE employees.Role = 'Graphic Designer';

SELECT Name FROM students WHERE Points=(SELECT MAX(Points) FROM students);
SELECT AVG(Points) FROM students;
SELECT COUNT(Name) FROM students WHERE Points=500;
SELECT Name FROM students WHERE Name GLOB '*s*';
SELECT Name, Points FROM students ORDER BY Points DESC;