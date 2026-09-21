Where Clause :
	Where clause use to filter the data from table.
	We can use where clause with Select, Update and Delete.
	We can not apply where clause on Insert with Select statement.

	-- Syntax :
		-- Select statement
		Select column_name,...,column_nameN from tbl_name 
		Where column_name = expression

		-- Update statement
		Update tbl_name set
			column_name = expression
		Where column_name = expression

		-- Delete statement
		Delete from tbl_name Where column_name = expression

	-- Example :
		Select * from tbl_StudentMaster
		Where Student_FirstName = 'dwij'

		Select * from tbl_StudentMaster
		Where Student_FirstName = 'Devanshi'

		Update tbl_StudentMaster set
			Student_Age = 26,
			Student_EmailId = 'abc@yahoo.in'
		where Student_FirstName = 'Om'

		Delete from tbl_StudentMaster where Student_FirstName = 'Darshit'

		-- With Operator :
		Select 1 + 1 + 1

		Select 'Hello ' + 'World' + 'Weltec'

		-- Select 1 + 'Hello' Throw error due to different datatypes.

		Select 10 - 5

		Select 10 * 10

		Select 10 % 3

		Select 10 / 5

		Select 10/3

		-- Comparision operator
		Select * from tbl_StudentMaster

		Select * from tbl_StudentMaster
		Where Student_Age > 25

		Select * from tbl_StudentMaster
		Where Student_Age >= 25

		-- Perform for less than and less than equal to operator

		Select * from tbl_StudentMaster
		Where Student_Age = 25

		Select * from tbl_StudentMaster
		Where Student_Age != 25

		Select * from tbl_StudentMaster
		Where Student_Age <> 25

		Select * from tbl_StudentMaster
		Where Student_FirstName != 'om'

		-- With logical operator :
		Select * from tbl_StudentMaster
		Where Student_FirstName = 'Dhruv' And Student_Age = 25

		Insert into tbl_StudentMaster(Student_FirstName,Student_LastName,Student_Age,
			Student_DOB,Student_EmailId,Student_MobileNo,Student_Address,Student_Id)
		values('Darshit','Kansara',29,'1996-05-06','abc@gmail.com',1234567890,
			'Baroda',1)

		Select * from tbl_StudentMaster
		Where Student_Age = 29 and Student_FirstName = 'om'

		Select * from tbl_StudentMaster
		Where Student_Age = 29 or Student_FirstName = 'om1'

		Select * from tbl_StudentMaster

		-- With like operator
		Select * from tbl_StudentMaster

		-- Startwith
		Select * from tbl_StudentMaster

		Select * from tbl_StudentMaster
		Where Student_FirstName like 'dh%'

		-- Endwith
		Select * from tbl_StudentMaster
		Where Student_FirstName like '%uv'

		-- Contain
		Select * from tbl_StudentMaster
		Where Student_FirstName like '%ya%'

		-- Between
		Select * from tbl_StudentMaster
		Where Student_Age between 20 and 30

		-- In operator
		Select * from tbl_StudentMaster
		Where Student_FirstName in ('Om','Dwij','Tanya','Abhishek')
		And Student_LastName like 'p%'

		Select * from tbl_StudentMaster
		Where Student_FirstName = 'Om' OR Student_FirstName = 'Dwij'
		OR Student_FirstName = 'Tanya' Or Student_FirstName = 'Abhishek'

		
		


