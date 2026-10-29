CTE :
	CTE is Common Table Expression.
	CTE create temp. virtual table in memory that means at the time of execution
		virtual table is created and when execution is completed virtual table
		erased from the memory by itself.
	CTE statement always start with the keyword 'with'.

	-- Syntax :
		With cte_name as
		(
			-- Select statement
		)

		Select * from cte_name

	-- Example :
		With cte_Student as
		(
			Select Student_Id,Student_Name,Student_EmailId,Student_MobileNo 
			from tbl_Student
		)

		Select * from cte_Student

		-- Get second highest salary
		Select * from tbl_Staff

		With cte_Salary as
		(
			Select
				Dense_rank() over(order by Staff_Salary desc) as Srno,
				Staff_Id,Staff_Name,Staff_Qualification, Staff_Salary
			from tbl_Staff
		)

		Select * from cte_Salary
		Where srno = 2

		-- Found Duplicate record and delete those record from table
		Partition By :
			Partition by provide sequential number to the duplicate value that is
				given in partition by clause and for unique value it is
				always start with 1.
			We can use multiple columns to identify the records and by combination
				of that value partition by provide index number.
				
			-- Syntax :
				Select partition by column_name from tbl_name

			-- Example :
				With cte_DuplicateRecord as
				(
					Select ROW_NUMBER() 
						over(Partition by Staff_Salary, Staff_Name Order by Staff_Salary desc) as Srno,
						Staff_Id,Staff_Name,Staff_Qualification,Staff_Salary
					from tbl_Staff
				)

				--Delete from cte_DuplicateRecord
				--Where Srno > 1

				Select * from cte_DuplicateRecord
				Where Srno > 1

				Select * from tbl_Staff






		