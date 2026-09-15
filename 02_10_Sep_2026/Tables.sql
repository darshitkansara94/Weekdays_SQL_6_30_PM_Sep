Table :
	Table is a collection of rows and columns.
	In database all the data is store inside a table.
	So when we fetch or modify or insert a new record those data are store inside
		table.
	In one database we can create multiple tables.
	But table name can not be duplicate within same DB.
	Table name should not start with special char and numbers.
	Space is not allowed in table name.
	When we create a table we need to give prefix 'tbl_'
		Ex : tbl_RegisterMaster

	Column :
		Column is heading for the table.
		I can create N number of columns in single table.
		Space is not allowed in column_name.
		Column name should not start with special char or number.
		Column name should start with table name.
			Ex : I have table with the name 'tbl_RegisterMaster'
				so my column name should be :
					'Register_Id','Register_Name'

	-- Syntax :
		Create table tbl_name
		(
			column_name datatype,
			column_name datatype,
			.
			.
			.
			column_name datatype
		)

		-- Add new column in existing table
			Alter table tbl_name
			Add column_name datatype

		-- Modify datatype of column in existing table
			Alter table tbl_name
			Alter column column_name datatype

		-- Delete column from existing table
			Alter table tbl_name
			Drop column column_name

		-- Delete table
		Drop table tbl_name

		-- Rename existing table :
		exec sp_rename 'old_tablename','new_tablename'

		-- Rename existing column :
		exec sp_rename 'tbl_name.column_name','new_column_name','column'
			

	-- Example :
		Create database DB_SQLWeekday

		-- Need to create a table for the student
			-- First Name, Last Name, Age, DOB, Address, Subject, Email Id, Mobile no

			Create table tbl_Student
			(
				Student_FirstName varchar(15),
				Student_LastName nvarchar(13),
				Student_Age int,
				Student_DOB date,
				Student_Email varchar(25),
				Student_MobileNo bigint,
				Student_Address varchar(150)
			)

			-- Create a table with the name Exam
				Subject,Marks,Standard,Student Id

				Create table tbl_Marks
				(
					Marks_StudentId int,
					Marks_Subject varchar(13),
					Marks decimal(10,2)
				)

			-- Add new column with name Student_Id in tbl_Student
			Alter table tbl_STUDENT
			Add Student_Id int

			-- Modify datatype in existing table
			Alter table tbl_Student
			Alter column Student_Firstname varchar(20)

			Alter table tbl_Student
			Alter column Student_DOB datetime

			-- Delete column from existing table
			Alter table tbl_Student_1
			Drop column Student_Age

			-- Delete table
				Drop table tbl_Student_1

			-- Rename existing table name
			Exec sp_rename '[dbo].[tbl_Student]','tbl_StudentMaster'

			-- Rename existing column
			Exec sp_rename '[dbo].[tbl_StudentMaster].[Student_Email]',
				'Student_EmailId','column'






