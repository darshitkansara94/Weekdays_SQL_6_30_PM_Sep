Alter trigger tr_DeleteStudent
On tbl_Student
For Delete
As
Begin
	Declare @StudentId int

	Select @StudentId = Student_Id from deleted

	Insert into tbl_Log(Log_Description,Log_Date)
	values('Data deleted with id' + Cast(@StudentId as nvarchar(10)),GETDATE())
End