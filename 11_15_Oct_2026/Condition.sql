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

		-- switch case