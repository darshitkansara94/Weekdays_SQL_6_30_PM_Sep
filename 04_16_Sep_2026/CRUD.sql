CRUD :
	C -> Create
	R -> Read
	U -> Update
	D -> Delete

	CRUD SQL statement use to perform specific operation on table to perform or 
		manipulate data on table.

	-- Create (Insert) :
		Create / Insert statement use to insert a new record into the table.
		Data always enter in the form of row in the table.
		While insert data, no column should equal to no of values. If not then
			insert statement will throw error.

		-- Syntax :
			Insert into tbl_name(column_name,column_name,...,column_name)
			values(value1,value2,...,valueN)

			-- Insert multipl records
			Insert into tbl_name(column_name,column_name,...,column_name)
			values(value1,value2,...,valueN),(value1,value2,...,valueN),..
				(value1,value2,...,valueN)

			-- Insert data with select statement
			Insert into tbl_nameA(column_name,column_name,...,column_name)
			Select column_name,column_name,..., column_name from tbl_nameB

		-- Example :
			Insert into tbl_StudentMaster(Student_FirstName,Student_LastName,
				Student_Age,Student_EmailId)
			values('Dhruv','Patel',25,'abc@gmail.com')

			-- Insert multiple rows
			Insert into tbl_StudentMaster(Student_FirstName,Student_LastName)
			values('Om','Patel'),('Dwij','Patel'),('Darshit','Kansara')

			-- Insert with select
			-- In another DB
			Insert into [db_sqlweekday_copy].dbo.student_copy(first_name,last_name)
			Select Student_FirstName,Student_LastName 
			from tbl_StudentMaster

			-- In same DB
			Insert into student_copy(first_name,last_name)
			Select Student_FirstName,Student_LastName 
			from tbl_StudentMaster

			Select * from student_copy

	-- Read :
		Read statement use to get data from table.
		I can fetch all the columns from table or only the column that we need 
			as o/p.

		-- Syntax :
			-- With asteric
					Select * from tbl_name
			-- With column name
					Select column_name,column_name,column_name,...,column_name
					from tbl_name

		-- Example :
			Select * from tbl_StudentMaster

			Select Student_FirstName,Student_LastName,Student_Age
			,Student_EmailId
			from tbl_StudentMaster

	-- Update :
		Update statement use to modify existing records of table.
		We can not add new record through update statement.
		We can update particular record through 'Where' clause
 
		-- Syntax :
			Update tbl_name set
				column_name = expression, column_name = expression,..,
				column_nameN = expression

		-- Example :
			Update tbl_StudentMaster set
				Student_Age = 26

	-- Delete :
		Delete data from table.
		This data will be deleted permenatly so once we delete data there is no way
			to recover.
		This concept is called as a hard delete.
		We can delete particular record through 'Where' clause

		-- Syntax :
			Delete from tbl_name

		-- Example :
			Delete from tbl_StudentMaster