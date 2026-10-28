View :
	View is a virtual table that created into memory.
	We can create virtual table in a form of sql statement.
	Virtual table is store into memory. if we want to delete that table user 
		needs to remove it manually / by sql statement.
	We can not create a view with the same name in the DB.

	-- Syntax :
		Create view vw_name as
		Select * from tbl_name

		-- Delete view
		Drop view vw_name

	-- Example :
		Select * from tbl_Class
		Select * from tbl_Staff

		Create view vw_ClassAndStaff as
		Select tbl_Class.Class_Id,Class_Section,Class_Standard,Staff_name, Staff_Qualification
		,Staff_Supervisior from tbl_Class
		inner join tbl_Staff on
		tbl_Class.Class_Id=tbl_Staff.Class_Id

		Select * from vw_ClassAndStaff

		Select * from tbl_Student
		
		Alter table tbl_Student
		Add Constraint cn_studentclassname foreign key (class_id)
		references tbl_class(class_id)

		Select * from tbl_Class
		Select * from tbl_Student

		Update tbl_Student set 
			Class_Id = 2
		Where Student_Id in (2,3,6)

		Update tbl_Student set 
			Class_Id = 4
		Where Student_Id in (4)

		Update tbl_Student set 
			Class_Id = 5
		Where Student_Id in (7,10)

		Exec sp_vwSelectStudentData

		Select tbl_Class.Class_Id,Class_Section,Class_Standard,Staff_name, Staff_Qualification
		,Staff_Supervisior from tbl_Class
		inner join tbl_Staff on
		tbl_Class.Class_Id=tbl_Staff.Class_Id
		Inner join tbl_Student On
			tbl_Student.Class_Id = tbl_Class.Class_Id

		-- Delete view
		Drop view vw_ClassAndStaff



