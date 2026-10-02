Constraint :
	Constraint is a setting a rule or policy onto the table or on column.

	-- Types of constraint :
		Primary Key (PK) :
			Primary key is constraint that does not allow duplicate values and
				null value in the column.
			We can have only one primary key per table.

			-- Syntax :
				-- Create a table :
					create table tbl_name
					(
						column_name datatype primary key,
						column_name datatype,
						column_name datatype,
						...
						column_name datatype
					)

			-- Example :
				Create table tbl_Staff
				(
					Staff_Id int primary key,
					Staff_Name nvarchar(30),
					Staff_Qualification nvarchar(20),
					Class_Id int
				)

				Insert into tbl_Staff(Staff_Id,Staff_Name,Staff_Qualification,Class_Id)
				values(1,'xyz','BTech',1)

				Select * from tbl_Staff				

		Identity Key :
			Identity key is also consider as a autoincremental key.
			It is use to add auto incremental value for the column.
			It can increment numbers only so we can use this key on
				only number type of columns.
			Generally Identity key use with PK.

			-- Syntax :
				-- Create a new table
				Create table tbl_name
				(
					column_name datatype identity(start_number,increment_by),
					column_name datatype,
					column_name datatype,
					...
					column_name datatype
				)

				start_number : Starting number / value of my column.
				increment_by : Incremental order.

			-- Example :
				Create table tbl_Class
				(
					Class_Id int primary key identity(1,1),
					Class_Section nvarchar(2),
					Class_Number int
				)

				Insert into tbl_Class(Class_Number,Class_Section)
				values(8,'A')

				Select * from tbl_Class

				Delete from tbl_Class where Class_Id = 2

		Foreign Key (FK) :
		Default :
		Unique :
		Check :
		Composite Key :
		null
		not null