CTE :
	CTE is Common Table Expression.
	CTE create temp. virtual table in memory that means at the time of execution
		virtual table is created and when execution is completed virtual table
		erased from the memory by itself.
	CTE statement always start with the keyword 'with'.

	-- Syntax :
		With cte_name as
		(
			-- Select statement
		)

		Select * from cte_name