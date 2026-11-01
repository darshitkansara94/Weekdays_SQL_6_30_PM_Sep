Trigger :
	Trigger is a special type of event in sql.
	When we need to perform some operation in another table when some DML 
		execute in one table.
	Trigger does not support parameters.
	We can use variables.
	Trigger always created for Insert, Update and Delete statement only.
	We have two types of triggers For and After.

	-- Syntax :
		Create /Alter trigger tr_name
		On tbl_name
		For Insert/Update/Delete
		As
		Begin
			-- SQl Statement
		End

		-- After trigger
		Create /Alter trigger tr_name
		On tbl_name
		After Insert/Update/Delete
		As
		Begin
			-- SQl Statement
		End

	-- Example :
		Insert into tbl_Student(Student_Name,Student_EmailId,Student_MobileNo)
		values('Harsh','a@gmail.com',123456789)

		Select * from tbl_Student
		Select * from tbl_Log

		Update tbl_Student set
			Student_EmailId = 'ab@gmail.com'
		Where Student_Id = 2010

		Create table tbl_Log
		(
			Log_Id int primary key identity(1,1),
			Log_Description nvarchar(max),
			Log_Date datetime
		)

		Delete from tbl_Student where Student_Id = 2011