While loop :
	Loop is a iterable operation that executes the code until the condition gets false.
	It will execute the code multiple time and it worked on condition.
	In SQL we have only while loop.
	When we use a loop it might impact the performance of the execution.
	So instead of using loop in the SQL we have other option like we can use this loop in
		frontend side as well which is more quicker and with less memory.

	-- Syntax :
		While condition
		Begin
			-- SQL Code

			Set @variable_name = @varible_name + 1
		End

	-- Example :
		Declare @i int = 0

		While @i < 5
		Begin
			print(@i)

			Set @i = @i + 1
		End

		Select * from tbl_Employee

	Break :
		Break statement use to stop the execution of the loop at certain point or at 
			certain condition.

		-- Syntax :
			While condition
			Begin
				-- SQL Statement

				if condition
				Begin
					break
				End

				-- incrementl number
			End

		-- Example :
			Declare @i int = 0

			While @i <= 5
			Begin
				if @i = 2
				Begin
					break
				End

				print(@i)

				set @i = @i + 1
			End

			print('Execution is completed')

	-- Continue :
		Continue statement use to skip that particular execution and move to the next iteration.

		-- Syntax :
			While condition
			Begin
				-- SQL statement

				if condition
				Begin
					continue
				End

				-- Incremental number
			End

		-- Example :
			Declare @j int = 0

			While @j <= 5
			Begin
				set @j = @j + 1
				
				if @j = 2
				Begin
					continue
				End
				
				print(@j)				
			End

			-- Assignement
			Select * from tbl_Employee

			If salary < 27000
				Current_salary + 5000
		