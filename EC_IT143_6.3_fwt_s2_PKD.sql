-- Q1: How to keep track of who last modified a record?
-- A1: This works for the server user and the initial INSERT...

--ALTER TABLE dbo.t_hello_world
-- Add last_modified_by varchar(50) Default user_name()
--;


--Q2: How to track of who last modified a record?
--A2: Maybe use an after update trigger?
