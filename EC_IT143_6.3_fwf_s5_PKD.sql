/*****************************************************************************************************************
NAME:  EC_IT143_6.3_fwf_s4_JN.sql
PURPOSE: This is to find the last name from a database

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/10/2024   JNYAGORTEY       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES:
https://www.w3schools.com/sql/func_sqlserver_substring.asp
SUBSTRING extracts some characters from a string

https://www.w3schools.com/sql/func_sqlserver_charindex.asp
CHARINDEX finds the position of a character within a string
 
******************************************************************************************************************/

-- Q1: -- Q: How to extract the last name from Contact Name?

-- A: Well, here is your problem...
--CustomerName = Alejandra Camina -> Camina
/******************************************************************************************************************/

Create function [dbo].[udf_parse_LastName]
(@v_combined_name AS Varchar(500)
)
Returns Varchar(100)

Begin
	Declare @v_LastName AS Varchar(100)
	;
	Set @v_LastName = Substring(@v_combined_name, Charindex(' ',@v_combined_name)+1, len(@v_combined_name))
	;
	Return @v_LastName
	;
	End
	;
	Go
	;