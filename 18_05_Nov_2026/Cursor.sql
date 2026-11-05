Cursor :
	Cursor is object in sql server which use to read value row by row.
	While cursor read value row by row that impact a performance of SQL that is why 
		for now cursor is not useful.
	When we need to do some calculation row by row then cursor is useful.

	-- Syntax :
		Declare cursor_name cursor for
			Select column_name, column_name from tbl_name

			Open cursor_name 
				fetch next from cursor_name into variable_name

			Close cursor_name
		Deallocate cursor_name

	-- Example :
		Select * from tbl_Student
		Declare @Student_Name nvarchar(20)

		Declare cursor_student cursor for
			Select Student_Name from tbl_Student

			Open cursor_student
				Fetch next from cursor_student into @Student_Name
				Select @Student_Name
			Close cursor_student
		Deallocate cursor_student

		-- Fetch multiple rows
		Declare @StudentName nvarchar(20)
		Declare @Student_Id int

		Declare cr_Student cursor for
			Select Student_Name,Student_Id from tbl_Student

			Open cr_Student
				Fetch next from cr_Student into @StudentName,@Student_Id
				print(concat(@StudentName,@Student_Id))

				While @@FETCH_STATUS = 0
				Begin
					Fetch next from cr_Student into @StudentName,@Student_Id
					print(concat(@StudentName,@Student_Id))
				End
			Close cr_Student
		Deallocate cr_Student