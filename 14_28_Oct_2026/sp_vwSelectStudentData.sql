Alter procedure sp_vwSelectStudentData
As
Begin
	Select * from vw_ClassAndStaff as cs
	Inner join tbl_Student as st On
		st.Class_Id = cs.Class_Id

	Select * from vw_ClassAndStaff

	Select * from tbl_Student
End