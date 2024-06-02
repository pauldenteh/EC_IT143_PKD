-- Q: How to extract the last name from Contact Name?

-- A: Well, here is your problem...
--CustomerName = Alejandra Camina -> Camina

Select t.ContactName
from dbo.t_w3_schools_customers AS t
Order by 1;