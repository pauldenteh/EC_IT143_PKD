-- Q: How to extract the last name from Contact Name?

-- A: Well, here is your problem...
--CustomerName = Alejandra Camina -> Camina

Select t.ContactName,
	SUBSTRING(t.ContactName, CHARINDEX(' ',t.ContactName)+1, LEN(t.ContactName)) AS LastName,
	dbo.udf_parse_LastName(t.ContactName) As LastName2
From dbo.t_w3_schools_customers as t
Order by 1;