Create trigger tr_UpdateStudentMessage
On tbl_Student
For Update
As
Begin
	print('Data Updated')
End