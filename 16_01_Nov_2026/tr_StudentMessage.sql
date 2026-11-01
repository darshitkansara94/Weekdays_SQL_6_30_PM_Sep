Alter trigger tr_StudentMessage
On tbl_Student
For Insert
As
Begin
	Declare @StudentName nvarchar(100)

	Select @StudentName = Student_Name from inserted

	Insert into tbl_Log(Log_Description,Log_Date)
	values('Data Inserted with name' + @StudentName,GETDATE())
End