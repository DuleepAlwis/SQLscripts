CREATE DATABASE if NOT exists Company;

USE Company;

CREATE TABLE if NOT EXISTS department(

id BIGINT ,
NAME VARCHAR(255),
location VARCHAR(255),
PRIMARY KEY(id)

);


CREATE TABLE if NOT EXISTS Employee(

id BIGINT ,
FIRST_Name VARCHAR(255),
Last_name VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
district VARCHAR(255),
gender VARCHAR(13),
department BIGINT ,
role VARCHAR(255),

PRIMARY KEY(id),
CONSTRAINT FK_EMP_DP FOREIGN KEY (department) REFERENCES department(id)
);


CREATE TABLE if NOT EXISTS project(

id BIGINT ,
NAME VARCHAR(255),
description VARCHAR(255),
department BIGINT,
PRIMARY KEY(id),
CONSTRAINT FK_PRJ_DP FOREIGN KEY (department) REFERENCES department(id)
);


CREATE TABLE if NOT EXISTS prj_emp(

employeeId BIGINT,
projectId BIGINT,
assignedFrom DATE,
assignedTo DATE,
PRIMARY KEY(employeeId,projectId),
CONSTRAINT FK_EMP_PR FOREIGN KEY (employeeId) REFERENCES Employee(id),
CONSTRAINT FK_PRJ_EM FOREIGN KEY (projectId) REFERENCES project(id)
);

