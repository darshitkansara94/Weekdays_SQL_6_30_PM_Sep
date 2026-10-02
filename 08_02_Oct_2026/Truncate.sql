Truncate :
	Truncate statement use to remove data from table.
	When we use truncate statement it also reset the keys (Constraint)  
		of tables.
	By using truncate statement we can delete all the data of table that mean s
		we can not use condition (where clause) on truncate.

	-- Syntax :
		truncate table tbl_name

	-- Example :
		Select * from student_copy

		truncate table student_copy

		Select * from tbl_Class

		Delete from tbl_Class

		Truncate table tbl_Class

		Insert into tbl_Class(Class_Number,Class_Section)
		values(8,'A')