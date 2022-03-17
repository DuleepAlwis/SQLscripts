USE employeedb;

SELECT * FROM department

delimiter $$
CREATE PROCEDURE insertDept(IN name VARCHAR(255),IN location VARCHAR(255))
BEGIN 

declare idVar INT DEFAULT 0;
SELECT MAX(id) INTO idVar FROM department;

#select Max(id) from department;
if idVar is null Then
set idVar = 1;
ELSE
set idVar = idVar +1;
END IF;

INSERT INTO department(id,NAME,location) VALUES(idVar,name ,location);

END $$
delimiter;

DROP PROCEDURE `insertDept`;
CALL insertDept('Employee1','Location1');

SELECT * FROM department