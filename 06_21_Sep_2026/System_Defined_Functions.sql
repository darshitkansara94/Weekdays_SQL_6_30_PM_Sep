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
					String functions are use to manipulate string values.
					By using string function we can merge multiple values or 
						extract particular part form the string.

					-- Types of string functions.
						len() :
							len function use to identify the length of string.
							Space is also consider as a char.

							-- Syntax :
								Select len(column_name) from tbl_name

							-- Example :
								Select len(Student_FirstName) as FirstName, 
									Student_FirstName,
									len(Student_LastName) as LastName,
									Student_LastName
								from tbl_StudentMaster

						concat with + :
							Concat is use to merge two or more than two values	
								and represent as a single value.
							If we use concat with + then all the values must be type
								of string.

							-- Syntax :
								Select value1 + value2 + ... + value3
								from tbl_name

							-- Example :
								Select Student_Firstname,Student_Lastname,
								Student_EmailId
								from tbl_StudentMaster

								Select 
									Student_Firstname + ' ' + Student_Lastname
									+ Student_EmailId
								from tbl_StudentMaster

						concat() :
							Concat is inbuilt string function for concate or merge 
								string values.

							-- Syntax :
								Select concat(expression1,expression2,...,expressionN)
								from tbl_name

							-- Example :
								Select concat(Student_FirstName,' ',STudent_LastName)
								from tbl_StudentMaster

						concat_ws() :
							In concat_ws, WS stand for "with seperator".
							Seperator can be anything like any alphabet or any special
								char or numbers.
							Concat_ws use to concat multiple values.

							-- Syntax :
								Select concat_ws('seperator',expression1,
									expression2,...,expressinoN)
								from tbl_name

							-- Example :
								Select concat_ws(' ',Student_FirstName,Student_LastName)
								from tbl_StudentMaster

								Select concat_ws('+',Student_FirstName,Student_LastName)
								from tbl_StudentMaster

								Select concat_ws('+',Student_FirstName)
								from tbl_StudentMaster

								Select concat_ws(Student_FirstName, Student_LastName)
								from tbl_StudentMaster

								Select 
									concat_ws(Student_FirstName, ' ' ,
										Student_LastName,Student_EmailId,Student_Age)
								from tbl_StudentMaster -- OmPatelOmabc@yahoo.in

								Select 
									concat_ws(' ' ,Student_FirstName, 
										Student_LastName,Student_EmailId,Student_Age)
								from tbl_StudentMaster	
								
								Select 
									len(concat_ws(' ' ,Student_FirstName,
										Student_LastName)) as Full_Name
								from tbl_StudentMaster	

								Select 
									concat_ws(' ' ,len(Student_FirstName,
										Student_LastName)) as Full_Name
								from tbl_StudentMaster	

						trim() :
						rtrim() :
						ltrim() :
						reverse() :
						left :
						right :
						substring()
						

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

-- Assignment (Date : 22 Sep 2026) :
	--Create table ifnot exists :
	--	Add three rows with 3 scenerio.
	--		1. Add value for firstname no value for lastname
	--		2. No value for firstname add value for lastname
	--		3. no value for firstname and lastname


