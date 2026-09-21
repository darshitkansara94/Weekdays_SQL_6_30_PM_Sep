Functions :
	Functions are predefined code. Whiich we can reuse multiple times.
	It makes code redability easy and avoid duplicate code.
	Every function has a round brackets after function name.
		Ex : function_name()

	-- Types of functions :
		-- System defined functions (SDF) :
			System defined function are, functions which is already defined by the
				system.
			We can reuse those functions throughout the database or in multiple DB.

			-- Types of system definded functions :
				Aggregate functions :
					Aggregate functions are use to perform mathemetical operations.
					When we have aggregate function and non-aggregate function in a	
						single query then we need to use 'group by' clause.
					Or when we have only aggregate function in query then 'group by'
						cluase is optional.

					-- Types of Aggregate functions :
						sum() :
							Sum() function use to return addition of values from
								column.
							If we want to filter out record then we need to use		
								where clause.

							-- Syntax :
								Select SUM(column_name) from tbl_name 

								Select SUM(column_name), -- Aggregate type column
									column_name1 -- non aggregate type column
								from tbl_name 

							-- Example :
								Select SUM(Student_Age) as Age
								from tbl_StudentMaster

								-- Error Statement
								Select Student_Age,sum(Student_Age) 
								from tbl_StudentMaster

						Min() :
							Min full name is minimum.
							If we need to find a minimum value from column.

							-- Syntax :
								Select MIN(column_name) from tbl_name

							-- Example :
								Select * from tbl_StudentMaster								

								Select MIN(Student_Age) as Age
								from tbl_StudentMaster

						Max() :
							Max is maximum.
							If we need to get maximum value from column.

							-- Syntax :	
								Select max(column_name) from tbl_name

							-- Example :
								Select MAX(Student_Age) as [Student Age]
								from tbl_StudentMaster
						
						avg() :
							Average function use to find average value from column.

							-- Syntax :
								Select avg(column_name) from tbl_name

							-- Example :
								Select avg(Student_Age) from tbl_StudentMaster

						Count() :
							Count use to identify total number of rows  from table.
							We can count through * sign or by the column_name

							-- Syntax :
								Select count(*) from tbl_name

							-- Example :
								Select * from tbl_StudentMaster

								Select COUNT(*) from tbl_StudentMaster

								Select COUNT(Student_EmailId) 
								from tbl_StudentMaster
						

				String functions :
				Date and time functions :

		-- User defined functions (UDF)

-- Assignment :
	--Create table with name Marks
	--Add columns :
	--	Marks Id
	--	Student Name
	--	Subject Name
	--	Subject Marks
	--Insert a data with subject Maths, SS and Science and atleast insert 3 students
	--And perform this with all Aggregate functions

-- Use not operator with where clause


