--Q1: How to keep track of who last modified a record?
--A1: This works for the server user and the initial INSERT

-- Alter Table dbo.t_hello world
-- Add last_modified_by Varchar(50) Default Suser_name()
;

--Q2: How to keep track of who last modified a record?
--A2: Maybe use an after update trigger?

--Q3: Did it work?
--A3: Well, lets see...yup

-- remove stuff if it is already there
Delete From dbo.t_hello_world
where my_message IN('Hello World2','Hello World3','Hello World4')
;

-- load test rows
Insert into dbo.t_hello_world(my_message)
values('hello world'),('Hello world2'),('Hello world3')
;

-- See if the trigger worked
Select t.*
from dbo.t_hello_world AS t

-- Try it again
Update dbo.t_hello_world set my_message = 'Hello World4'
Where my_message = 'Hello World3'

-- see if the trigger worked
select t.*
From dbo.t_hello_world AS t;

-- Q4: How to keep track of who last modified a record?
-- A4: This works for server user and the initial INSERT...

Alter Table dbo.t_hello_world
Add last_modified_by varchar(50) default suser_name();