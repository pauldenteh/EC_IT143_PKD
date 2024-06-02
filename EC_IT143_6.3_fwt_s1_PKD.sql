-- Q1: How to keep track of who last modified a record?
-- A1: This works for the server user and the intials INSERT...

Alter table dbo.t_hello_world
Add last_modified_date DateTime Default GetDate();

--Q2:How to keep track of when a record was last modified?