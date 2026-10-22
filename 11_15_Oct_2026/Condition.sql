Condition :
	Condition, Based on user input or condition code is executed.
	Condition always return true or false.
	Based on true and false code get executed.

	-- Types of condition :
		-- If..else :
			This condition allow us to write a code in two block.
			First block is if block and second is else.
			If condition is true then if block get execute and condition is	
				false then else block get execute.
			In a single execute or at a time only one block get execute.

			-- Syntax :
				If condition
				Begin
					-- SQL Statement
				End
				Else
				Begin
					-- SQl statement
				End

			-- Example :
				Declare @value1 int = 20
				Declare @value2 int = 10

				if @value1 > @value2
				Begin
					Select 'Value 1 is greater then value 2'
				End
				Else
				Begin
					Select 'Value 1 is less then value 2'
				End

		-- If..else if..else
			This is extended version of if..else where we can verify multiple 
				level of conditions.
			Like if..else only one block of code get execute when condition	
				is true.

			-- Syntax :
				if condition
				Begin
					-- SQL Code
				End
				Else if condition
				Begin
					-- SQL Code
				End
				Else if condition
				Begin
					-- SQL Code
				End
				Else
				Begin
					-- SQL Code
				End

			-- Example :
				Declare @value1 int = 10
				Declare @value2 int = 10

				If @value1 > @value2
				Begin
					Select cast (@value1 as nvarchar(11))  + ' is greater than' + cast( @value2	as nvarchar (11))			
				End
				Else if @value1 < @value2
				Begin
					Select cast (@value1 as nvarchar(11)) + ' is less than ' + cast (@value2 as nvarchar(11))
				End
				Else if @value1 = @value2
				Begin
					Select Cast(@value1 as varchar(10)) +' is equal to ' + Cast(@value2 as varchar(10))
				End
				Else
				Begin
					If @value1 is null
					Begin
						Select 'Value 1 is null'
					End
					Else
					Begin
						Select 'Value 2 is null'
					End
				End

		-- Switch case :
			Switch case condition is similar to the if..else and if..else if..else.
			But if..else and if..else if..else condition can not use inside
				select statement.
			While case condition we can use inside case statement.

			-- Syntax :
				Select case
					when condition Then output else output end as alias_name,
					column_name, column_name 
				from tbl_name

				Select Case
					When condition Then O/P
					When condition Then O/P
					..
					Else O/P end as alias_name
				from tbl_name


			-- Example :
				Declare @val1 int = 20
				Declare @val2 int = 10

				Select Case 
					When @val1 > @val2 Then 'Val1 is greater than val2'
					Else 'val1 is less than val2' End as Compare_Val

				--Marks >= 90 and Marks <= 100 = 'Grade A'
				--Marks >= 75 and Marks <= 89 = 'Grade B'
				--Marks >= 65 and Marks <= 74 = 'Grade C'
				--Marks >= 55 and Marks <= 64 = 'Grade D'
				--Marks >= 35 and Marks <= 54 = 'Grade E'
				--Marks < 35 = 'Grade F'

				Declare @Marks int = 34

				Select Case
					When @Marks >= 90 And @Marks <= 100 Then 'Grade A'
					When @Marks >= 75 And @Marks <= 89 Then 'Grade B'
					When @Marks >= 65 And @Marks <= 74 Then 'Grade C'
					When @Marks >= 55 And @Marks <= 64 Then 'Grade D'
					When @Marks >= 35 And @Marks <= 54 Then 'Grade E'
					Else 'Grade F' End as Grade

-- Assignment (Date : 22 Oct)
	--Create two table
	--	tbl_Student
	--		Student_Id (Pk,identity),
	--		Student_Name
	--		Student_Age
	--		Student_Class
	--	tbl_StudentDetail
	--		StudentDetail_Id (PK,Identity),
	--		Studet_Id (FK)
	--		StudentDetail_Subject
	--		StudentDetail_Marks

	--Calculate grade of the student based on Marks