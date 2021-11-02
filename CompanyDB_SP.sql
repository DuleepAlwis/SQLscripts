USE company;
SHOW TABLES;
SELECT * FROM employee;

/*------------------STORED PROCEDURE FOR Inserting employees------------------------------------------------------------------*/
delimiter $$
CREATE PROCEDURE insertEmp(IN FirstName VARCHAR(255),IN LastName VARCHAR(255),IN address VARCHAR(255),city VARCHAR(255),district VARCHAR(255),
IN gender VARCHAR(255),IN department BIGINT , IN role VARCHAR(255))
BEGIN 

SET @id = 0;

SELECT @id:=MAX(id) FROM employee;

SET @id = @id +1;
INSERT INTO employee(id,FIRST_Name,Last_name,address,city,district,gender,department ,role) VALUES(@id,
FirtstName,LastName,address,city,district,gender,department,role);
END $$
delimiter;


/*----------------------------------------------------------------------------------------------------------------------------*/
SELECT * FROM department;
/*-------------------------------Stored procedure for inserting departments-----------------------------------------------------*/
delimiter $$
CREATE PROCEDURE insertDP(IN NAME VARCHAR(255),IN location VARCHAR(255))
BEGIN 

SET @Id = 0;

SELECT @id:= MAX(id) FROM department;

if @id IS NULL then 
SET @id = 1;
ELSE 
SET @id = @id +1;
END IF;
INSERT INTO department(id,NAME,location) VALUES(@id,NAME,location);
END $$
delimiter;
/*----------------------------------------------------------------------------------------------------------------------------------*/
CALL insertDP("SALES","ABC building");
CALL insertDP("MARKETING","ABY building");
CALL insertDP("ADMIN","ABK building");
DROP PROCEDURE insertDP;
