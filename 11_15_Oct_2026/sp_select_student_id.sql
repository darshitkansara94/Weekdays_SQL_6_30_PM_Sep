create procedure sp_select_student_id
(
	@student_id int = null
)
as 
begin
	if @student_id is null
		Begin
			Select * from tbl_Student
		End
		Else
		Begin
			Select * from tbl_Student
			where Student_Id = @student_id
		End
end

exec sp_select_student_id 
@student_id = 100