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
			Foreign key is a through primary key we reference to another
				table.
			We can have foreign key as a null or duplicate values.
			FK creates a child and parent relation between two tables.
			Primary key of parent table is reference to the child table.

			-- Syntax :
				-- Create table :
					create table tbl_name
					(
						column_name datatype,
						column_name datatype,
						column_name datatype,
						...
						column_name datatype,

						constraint cn_name foreign key (column_name) 
						references tbl_parentTable(column_name)
					)

					-- Existing table
					Alter table tbl_Childtable
					Add constraint cn_name foreign key (column_name)
					references tbl_parenttable(column_name)


				-- Example :
					Create table with name Class
					Class_Id(PK,Identity key),
					Class_Section,
					Class_Standard

				Create table with name Staff
					Staff_Id(PK,Identity key),
					Staff_Name
					Class_Id
					Staff_Qualification

				-- Parent table
				Create table tbl_Class
				(
					Class_Id int primary key identity(1,1),
					Class_Section nvarchar(5),
					Class_Standard int
				)

				-- Child table
				Create table tbl_Staff
				(
					Staff_Id int primary key identity(1,1),
					Staff_Name nvarchar(50),
					Class_Id int,
					Staff_Qualification nvarchar(15),

					CONSTRAINT cn_FK_ClassId foreign key (Class_Id)
					References tbl_Class(Class_Id)
				)

				Select * from tbl_Class
				Select * from tbl_Staff

				Insert into tbl_Class(Class_Standard,Class_Section)
				values(8,'A')

				Insert into tbl_Staff(Staff_Name,Class_Id,Staff_Qualification)
				values('Dwij',1,'MTech')

				Insert into tbl_Staff(Staff_Name,Staff_Qualification)
				values('Om','MTech')

				Delete from tbl_Class 

				Update tbl_Staff set
					Class_Id = null
				where Class_Id is not null

		Default :
			Default constraint use to set default value when user is
				not enter or use that column to insert or update 
				record.
			We can use default constraint on any datatype of column.
			We can apply default constraint on multiple columns.

			-- Syntax :
				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype default 'expression',
					..
					column_name datatype
				)

				-- Existing column
				Alter table tbl_name
				Add constraint cn_name default 'value' for column_name

			-- Example :
			Select * from tbl_StudentMaster

			-- Create default value on existing table
			Alter table tbl_StudentMaster
			Add constraint cn_default_LastName default 'Unknown' for
				Student_LastName

			Insert into tbl_StudentMaster(Student_FirstName,
				Student_Age,Student_EmailId)
			values('Test Default',23,'abc@gmail.com')

		Check :
			Check constraint use to enter data into table 
				based on condition.
			We can create multiple check constraint on single table.

			-- Synatx :
				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype check (condition),
					column_name datatype check (condition),
					...
					column_name datatype
				)

				-- With existing table
				Alter table tbl_name
				Add constraint cn_name check(condition)

			-- Example :
				Select * from tbl_StudentMaster

				Update tbl_StudentMaster set
					Student_Age = 19
				Where Student_Id = 2

				Alter table tbl_StudentMaster
				Add constraint cn_check_Age check(Student_Age > 18)

				Insert into tbl_StudentMaster(Student_FirstName,
					Student_Age,Student_EmailId)
				values('Test Default',24,'abc@gmail.com')

				-- Validation for mobile number
				--Create a table with column name mobile number
				--add a validation for mobile no that accept only 10 digits.

				alter table tbl_studentmaster
				add constraint  check_mobileno check (len(student_mobileno)=10)
	
				insert into tbl_StudentMaster(student_mobileno)values(12345678901)

		Unique :
			Unique constraint allow unique values for column.
			We can store only one null value when unique constraint is applied.
			We can create unqiue constrint on multiple rows.

			-- Syntax :
				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype unique,
					column_name datatype,
					..
					column_name datatype
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name unique(column_name)

			-- Example :
				Create table tbl_Student
				(
					Student_Id int primary key identity(1,1),
					Student_Name nvarchar(20) unique,
					Student_EmailId nvarchar(15),
					Student_MobileNo bigint
				)

				Select * from tbl_Student

				Insert into tbl_Student(Student_Name)
				values('Dwij')

				-- Add constraint in existing table
				Alter table tbl_Student
				Add constraint cn_unq_EmailId unique(Student_EmailId)
				
				Update tbl_Student set
					Student_Emailid = 'xyz@gmail.com'
				Where Student_Id = 3

		not null :
			Not null column is consider as a mandatory field or 
				property of the column.
			When we set not null property we can not leave that column as
				null.

			-- Syntax :
				Alter table tbl_name
				Alter column column_name datatype not null

				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype not null,
					column_name datatype,
					..
					column_name datatype,
				)

			-- Example

				Insert into tbl_Student
				(
					Student_Name,Student_Mobileno
				)
				values('Dev',234567890)

			-- Example :
				Alter table tbl_Student
				Alter column STudent_mobileno bigint not null
				

		null :
			Null allow user to insert a null data for specific column.
			By default property of column is null.

			-- Syntax :
				-- Existing table
				Alter table tbl_name
				Alter column column_name datatype null

			-- Example :
				Alter table tbl_Student
				Alter column Student_MobileNo bigint null

		Composite Key :
			Composite key is a basically primary key that
				use multiple columns as a unique value.
			Composite key use to create unique value using a
				combination of multiple column values.

			-- Syntax :
				-- Create table
				Create table tbl_name
				(
					column_name datatype primary key,
					column_name datatype,
					...
					column_name datatype,

					constraint cn_name 
					primary key 
						(column_name,column_name,..,column_nameN)
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name 
					primary key (column_name,column_name)

			-- Example :
				FirstName = 'xyz' LastName = 'abc'
				FirstName = 'asd' LastName = 'abc'

				-- Create table for Staff
				Create table tbl_Staff
				(
					Staff_Id int identity(1,1),
					Staff_FirstName nvarchar(15),
					Staff_LastName nvarchar(15),
					Staff_Qualification nvarchar(10),

					Constraint cn_comp_Name primary key
					(Staff_FirstName,Staff_LastName)
				)

				Insert into tbl_Staff(Staff_FirstName,Staff_LastName,Staff_Qualification)
				values('Darshit','Patel','BTech')

				Select * from tbl_Staff
				Where Staff_LastName = 'Darshit'