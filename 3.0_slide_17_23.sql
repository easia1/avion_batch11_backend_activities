/* Example */

CREATE TABLE lessons (
    id integer PRIMARY KEY,
    name character varying(255) NOT NULL,
    description text,
    front_end boolean DEFAULT false,
    back_end boolean DEFAULT false,
    price numeric(8, 2) DEFAULT 0.0,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

INSERT INTO lessons (id, name, description, price, created_at, updated_at, back_end)
VALUES (1, 'Ruby', 'Ruby is an interpreted, high-level, general-purpose programming language.', 199.99, current_timestamp, current_timestamp, true), 
(2, 'Python', 'Python is an interpreted, high-level, general-purpose programming language like Ruby.', 190, current_timestamp, current_timestamp, true);

INSERT INTO lessons (id, name, description, price, created_at, updated_at, back_end)
VALUES (3, 'Python lite', 'Python lite is an interpreted, high-level, general-purpose programming language.', 30.25, current_timestamp, current_timestamp, true);


/* Exercise (slide */

CREATE TABLE students (
    id integer PRIMARY KEY,
    first_name character varying(150) NOT NULL,
    middle_name character varying(150),
    last_name character varying(150) NOT NULL,
    age int,
    location text
);

INSERT INTO students (id, first_name, last_name, age, location)
VALUES (1, 'Juan', 'Cruz', 18, 'Manila'),
(2, 'Anne', 'Wall', 20, 'Manila'),
(3, 'Theresa', 'Joseph', 21, 'Manila'),
(4, 'Isaac', 'Gray', 19, 'Laguna'),
(5, 'Zack', 'Matthews', 22, 'Marikina'),
(6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students 
SET first_name = 'Ivan',
middle_name = 'Ingram',
last_name = 'Howard',
age = 25,
location = 'Bulacan'
WHERE id = 1;

DELETE FROM students where id = 6;



















SELECT COUNT(id) FROM students;

SELECT * FROM students WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * FROM students ORDER BY age DESC;