-- Q1: How to keep track of who last modified a record?
-- A1: This works for the server user and the initail INSERT...

--Alter Table dbo.t_hello_world
--Add last_modified_by Varchar(50) Default User_Name()
--;

-- Q2: How to keep track of who last modified a record?
-- A2: Maybe use an after update trigger?

-- Q3: Did it work?
-- A3: Well, lets see...yup

Delete from dbo.t_hello_world
where my_message IN('Hello world','Hello world3','Hello World')
;

-- Load test rows
Insert into dbo.t_hello_world(my_message)
Values('Hello world2'),('Hello world3')
;

-- See if the trigger worked
select t.*
From dbo.t_hello_world AS t

update dbo.t_hello_world SET my_message = 'Hello world'
where my_message = 'Hello world'


Select t.*
from dbo.t_hello_world AS t