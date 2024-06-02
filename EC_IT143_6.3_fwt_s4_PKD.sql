Create Trigger trg_hello_world_last_mod ON dbo.t_hello_world
After Update
AS

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
Keeps track of the last modified date for each row in the table
 
******************************************************************************************************************/

		update dbo.t_hello_world
		set
		last_modified_date = getdate()
	where my_message IN 
	(
		Select Distinct my_message
		from inserted
		);