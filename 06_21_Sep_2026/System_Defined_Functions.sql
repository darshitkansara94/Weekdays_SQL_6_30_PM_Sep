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

							-- Concat:
								Select Student_FirstName,Student_LastName,
								CONCAT(Student_FirstName, ' ' , Student_LastName) as concat_merge,
								Student_FirstName + ' ' + Student_LastName as concat_withplus,
								CONCAT_WS(' ',Student_FirstName,Student_LastName) as concat_withSeperator
								from tbl_StudentMaster

						trim() : 
							Trim function use to remove whitespace from the string.
							If we have a space before string and after string value.
								that space is consider as a white space.
							Trim function use to remove space from left side and 
								right side.

							-- Syntax :
								Select trim(expression) from tbl_name

							-- Example :
								Select * from tbl_StudentMaster --  Om   

								Select trim(Student_FirstName) as without_Space,
								Student_FirstName from tbl_StudentMaster

								--Om
								--  Om   
								--Om

								Update tbl_StudentMaster set
									Student_FirstName = trim(Student_FirstName),
									Student_LastName = trim(Student_LastName)

						rtrim() :
							rtrim function use to remove space from right side
								of the string.
							If we have whitespace on left side then rtrim is not
								capable to remove.

							-- Syntax :
								Select rtrim(expression) as alias_name 
								from tbl_name

							-- Example :
								Select rtrim('  Hello World   ') --  Hello World

								Select * from tbl_StudentMaster
								--   om     
								--   om
								Select rtrim(Student_Firstname) as FirstName 
								from tbl_StudentMaster

						ltrim() :
							Ltrim function use to remove whitespace from the 
								left side of the string.
							If we have a whitespace at the right side then ltrim is
								not capable to remove it.

							-- Syntax :
								Select ltrim(expression) from tbl_name

							-- Example :
								Select ltrim('  Hello World   ') --Hello World   

								Select ltrim(Student_Firstname) as FirstName 
								from tbl_StudentMaster --om      

						reverse() :
							Reverse function use to get a value in reverse order.

							-- Syntax :
								Select Reverse(expression) from tbl_name

							-- Example :
								Select reverse(Student_FirstName) as Firstname
								from tbl_StudentMaster

								Select reverse('Hello world')

						left :
							Left function use to extract char from left to right.
							Index always start with 1.
							If we want to extract char from middle of the string then
								not possible with left funcion.

							-- Syntax :
								Select left(expression,char_count) from tbl_name

							-- Example :
								Select left('Hello World',3)

								Select left('Hello',6)

								Select Student_FirstName,left(Student_FirstName,2) 
								from tbl_StudentMAster

						right :
							Right function use to extract char from the right to
								left.

							-- Syntax :
								Select Right(expression,char_count) from tbl_name

							-- Example :
								Select right('Hello world',2)

								Select right(Student_FirstName,3) 
								from tbl_StudentMaster

						substring() :
							Substring use to extract char from any position from
								string value.
							We need to give start point and no of char to extract 
								as a part of argument.

							-- Syntax :
								Select substring(expression,start_index,char_count)

							-- Example :
								Select 'Hello world',
								substring('Hello world',2,3)

						Upper :
							Upper function use to convert string value into 
								upper case.

							-- Syntax :
								Select upper(expression) from tbl_name

							-- Example :
								Select upper('Hello World')

						Lower :
							Lower function use to convert string value into
								lower case.

							-- Syntax :
								Select lower(expression) from tbl_name

							-- Example :
								Select lower('Hello World')

							Select upper (substring(student_firstname,1,1)) +
							lower(substring(student_firstname,2,15)) 
							from  tbl_StudentMaster

							Select Upper(Left(Student_FirstName,1)) +
							Lower(Substring(Student_FirstName,2,len(Student_FirstName)))
							from tbl_StudentMaster
							
							Select * from tbl_StudentMaster
						

				Date and time functions :
					Date and time function use to get current date values.
					date and time function works with datatype date and time.

					-- Types of date and time function :
						Getdate() :
							Getdate retrun current date and time where my sql is installed.

							-- Syntax :
								Select getdate()

							-- Example :
								Select Getdate()

						GetUTCDate() :
							UTC is refer as Coordinated Universal Time.
							GetUTCDate is work on timezone 0.
							If we want to make date and time simlar across all the region
								we can use getutcdate.

							-- Syntax :
								Select getutcdate()

								Select getdate()
						
						year :
							Year return current year from date.

							-- Syntax :
								Select year(expression)

							-- Example :
								Select year(getdate())

						month :
							Month function use to return month from date and time.

							-- Syntax :
								Select month(expression)

							-- Example :
								Select month(getdate())

						day :
							Day function return current date from date and time.

							-- Syntax :
								Select day(expression) 

							-- Example :
								Select day(getdate())

						DateDiff() :
							DateDiff function use to return difference between two dates.

							-- Syntax :
								Select datediff(diff_of,date1,date2)

							-- Example :
								Select datediff(day,getdate(),'2026-10-10 09:49:31.710')

								Select datediff(month,getdate(),'2026-10-10 09:49:31.710')

								Select datediff(year,getdate(),'2028-10-10 09:49:31.710')

								Select datediff(minute,getdate(),'2028-10-10 09:49:31.710')

								Select datediff(hour,getdate(),'2028-10-10 09:49:31.710')

								Select getdate()


								Select * from tbl_StudentMaster

								Update tbl_StudentMaster set
									Student_DOB = '1992-10-10 09:49:31.710'
								Where Student_Firstname in ('om','darshti','dwij')

								Update tbl_StudentMaster set
									Student_DOB = '2000-09-10 09:49:31.710'
								Where Student_Firstname in ('dhruv','tanya')

								Select datediff(year,Student_DOB,getdate())
								from tbl_StudentMaster

								Select datediff(day,Student_DOB,getdate()),
								datediff(month,Student_DOB,getdate()),
								Student_FirstName,Student_LAstName
								from tbl_StudentMaster

						IsDate() :
							Isdate function use to verify that entered date is valid or not.
							This function return either 0 or 1.

							-- Syntax :
								Select Isdate(expression)

							-- Example :
								Select isdate(getdate()) -- 1 as date is valid
								
								Select isdate('2028-09-31 09:49:31.710') -- 0 as date is invalid

						datename :
						datepart :
						
				Conversion Functions
						

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


