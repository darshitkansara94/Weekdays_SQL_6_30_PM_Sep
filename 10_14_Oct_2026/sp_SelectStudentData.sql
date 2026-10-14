Alter procedure sp_SelectStudentData
As
Begin
	Select Student_Id,concat_ws(' ',Student_FirstName,Student_LastName) as Student_name,
		Student_DOB
	from tbl_StudentMaster
End