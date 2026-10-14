Store Procedure (SP) :
	Store procedure is a block of code and template is predefined.
	We can use this code on multiple places or multiple times which
		avoid code duplicacy.
	And it also helps to improve performance of data.
	SP is a bridge between table and our application.
	SP, communicate through the name of SP to the application.
	SP name must be unique in the same DB.
	Sp name should not start with special char or number and space 
		is not allowed in SP name.
	SP name always start with the prefix 'sp_'

	-- Variable :
		Variable use to store a value into memory.
		By storing value into memory we can use that same variable 
			in my editor or program to access that value.
		Every variable declare with the symbol '@'.
		To declare variable we need to use keyword 'Declare'

		-- Syntax :
			-- Declare @variable_name datatype

		-- Example :
			-- Declaration :
				Declare @Name varchar(20)

			-- Initialization :
				Set @Name = 'Weltec'

			-- Declaration & Initialization
				Declare @First_Name nvarchar(20) = 'Weltech'

	-- Parameter :
		Parameter is similar to the variable only the difference is
			scope of usage.
		We can use parameter outside of that editor to assign value.
		Parameter is also create with the symbol '@'

		-- Syntax :
			@param_name datatype

		-- Example :
			@Name nvarchar(20)


-- Variable Example
-- Declare variable
Declare @Firstname nvarchar(20)

-- Initialization
Set @FirstName = 'Weltech'
print(@FirstName)
print(@FirstName)
print(@FirstName)
print(@FirstName)
print(@FirstName)

	-- Syntax :
		-- Default SP
		Create / Alter procedure sp_name
		As
		Begin
			-- SQL Statement
		End

		-- Parameterized SP
		Create / Alter procedure sp_name
		(
			-- @param_name datatype,
			-- @param_name datatype,
			-- @param_name datatype,
			...
			-- @param_name datatype
		)
		As
		Begin
			-- SQL Statement
		End

	-- Example :
		-- Execute SP :
			Exec sp_SelectStudentData	
			
			Exec sp_SelectStudentById 2
			Exec sp_SelectStudentById 5

			Select * from tbl_Student

			Exec sp_InsertStudent 'Darshit','xy@gmail.com',123456789

			Exec sp_InsertStudent 'xy@gmail.com','Dwij',123456789
