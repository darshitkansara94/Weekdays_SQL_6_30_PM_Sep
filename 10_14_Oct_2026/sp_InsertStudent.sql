Alter procedure sp_InsertStudent
(
	@StudentName nvarchar(20),
	@EmailId nvarchar(15) = 'Unknown',
	@MobileNo bigint = 0
)
As
Begin
	Insert into tbl_Student(Student_Name,Student_EmailId,Student_MobileNo)
	values(@StudentName,@EmailId,@MobileNo)
End