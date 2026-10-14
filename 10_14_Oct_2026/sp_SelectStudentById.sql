Alter procedure sp_SelectStudentById
(
	@StudentId int
)
As
Begin
	Select * from tbl_StudentMaster
	Where Student_Id = @StudentId
End