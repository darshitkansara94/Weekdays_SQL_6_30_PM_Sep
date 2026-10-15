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
		-- switch case