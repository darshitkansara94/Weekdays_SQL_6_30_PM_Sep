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

		-- Example :
			Insert into tbl_StudentMaster(Student_FirstName,Student_LastName,
				Student_Age,Student_EmailId)
			values('Dhruv','Patel',25,'abc@gmail.com')


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