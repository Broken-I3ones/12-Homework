DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;
CREATE TABLE department; (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
);
    CREATE TABLE role (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salery DECIMAL UNSIGNED NOT NULL,
    DEPARTMENT_ID int unsigned not null,
    INDEX dep_ind (department_id),
    CONSTANT fk_deparment FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);
CREATE TABLE employee (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT UNSIGNED NOT NULL,
    INDEX role_ind (role_id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    manager_id INT UNSIGNED,
    INDEX man_ind (manager_id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);
use employees;
INSERT INTO department
    (name)
VALUES
    (`Operation`),
    (`Analytics`),
    (`Marketing`),
    (`Executive`),
INSERT INTO role
    (title, salery, department_id)
VALUES
    (`General Manager`, 700000, 1),
    (`Managing Lead`, 575000, 1),
    (`Team Lead Analyst`, 550000, 2),
    (`Team Analyst`, 400000, 2),
    (`Media Lead`, 1755000, 3),
    (`Media Specialist`, 175000, 3)
    (`CEO` 350000, 4)
    (`Assistant CEO` 300000, 4)
VALUES
    ('Gilbert', 'Gottfried', 1, NULL),
    ('Chris', 'Pratt', 2, 1),
    ('Sadie', 'Addler', 3, NULL),
    ('Arthur', 'Morgan', 4, 3),
    ('Sean', 'MacGuire', 5, NULL),
    ('Peter', 'Dinklage', 6, 5),
    ('Ryan', 'Reynolds', 7, NULL),
    ('Danny', 'DeVito', 8, 7);