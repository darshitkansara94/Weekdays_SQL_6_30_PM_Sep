Order by :
	Order by is a clause that use to arrange a data in ascending or
		descending order.
	By default type of data is ascending order.
	If we need to display data in descending order we can use keyword 'desc'
	And if we need to display data in ascending order we can use 'asc'.

	-- Syntax :
		Select * from tbl_name
		Order by column_name asc/desc

	-- Example :
		Select * from tbl_StudentMaster

		Select Student_FirstName,Student_LastName,Student_Age ,
			Student_DOB
		from tbl_StudentMaster
		Order by Student_FirstName

		Select Student_FirstName,Student_LastName,Student_Age ,
			Student_DOB
		from tbl_StudentMaster
		Order by Student_FirstName asc

		Select Student_FirstName,Student_LastName,Student_Age ,
			Student_DOB
		from tbl_StudentMaster
		Order by Student_FirstName desc

		-- Order by and where clause
		Select Student_FirstName,Student_LastName,Student_Age ,
			Student_DOB
		from tbl_StudentMaster
		Where Student_Firstname like '%a%'
		Order by Student_FirstName desc

		Select * from tbl_StudentMaster

		Select Student_FirstName,Student_LastName,Student_Age,
			Student_DOB
		from tbl_StudentMaster
		Order by Student_Id desc

Group By :
	Group by clause use to group the same data and display as a single value.
	When we are using aggregate function and with that if we have non aggregate column
		we need to use group by clause as mandatory.

	-- Syntax :
		Select * from tbl_name
		group by non_aggregate_columns

	-- Example :
		Select COUNT(*) as TotalCount,
			Student_LastName,Student_FirstName
		from tbl_StudentMaster
		Group by Student_LastName,Student_FirstName

		Select * from tbl_StudentMaster

		Select COUNT(*) as TotalCount,
			Student_LastName,Student_DOB
		from tbl_StudentMaster
		Group by Student_LastName,Student_DOB

		Select COUNT(*) as TotalCount,
			Student_LastName,Student_DOB
		from tbl_StudentMaster
		Where Student_lastName = 'Patel'
		Group by Student_LastName,Student_DOB
		Order by Student_LastName desc
		




