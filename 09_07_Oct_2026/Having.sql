Having :
	Having clause use to filter records just like where clause. But the difference is 
		having clause use to filter record by using aggregate functions.

	-- Syntax :
		Select * from tbl_name
		having aggregate_function(column_name) = value

	-- Example :
		Select * from tbl_Student

		Create table tbl_StudentMarks
		(
			StudentMarks_Id int,
			Student_Id int,
			Student_Subject nvarchar(15),
			Student_Marks decimal(15,2)
		)

		Insert into tbl_StudentMarks(StudentMarks_Id,Student_Id,Student_Marks)
		values(1,1,45),(2,1,40),(3,1,42),(4,2,44),(5,2,46),(6,2,40)

		Select Student_Id,Sum(Student_Marks) as Marks
		from tbl_StudentMarks
		Group by Student_Id
		Having SUM(Student_Marks) > 127

		-- Error Statement
		Select Student_Id,Sum(Student_Marks) as Marks
		from tbl_StudentMarks		
		Where SUM(Student_Marks) > 127
		Group by Student_Id

-- Assignement
	--Create a table with the name Employee:
	--	Field name :
	--		Employee Id
	--		Employee Name
	--		Department
	--		Sales Amount

	--1. Need to display each department  and the total sales amount.
	--2. Display Department whose total sale is greater than 10000