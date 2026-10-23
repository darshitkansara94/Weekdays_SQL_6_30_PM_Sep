Joins :
	Join is use to combine two or more than two tables and display as a single	
		output.

	-- Types of joins :
		-- Inner join :
			Inner join retrun common data between two or more than two tables.
			Sequence of the table is not matter here.

			-- Syntax :
				Select * from tbl_A
				Inner join tbl_B on
					tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select * from tbl_Class
				Select * from tbl_Staff				

				Insert into tbl_Class(Class_Section,Class_Standard)
				values('A',8),('B',8),('A',10),('B',10)

				Select * from tbl_Class
				Select * from tbl_Staff

				Select tbl_Class.Class_Id, tbl_Class.Class_Section,tbl_Class.Class_Standard,
					tbl_Staff.Staff_Name,tbl_Staff.Staff_Qualification
				from tbl_Class
				Inner join tbl_Staff On
					tbl_Class.Class_Id = tbl_Staff.Class_Id

		-- Left join :
			Left join return all the data from left table and matching data from 
				right table.
			Here table sequence is matter. if we change table position output will
				be affected.

			-- Syntax :
				Select * from tbl_A
				Left join tbl_B on
					tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select * from tbl_Class
				Select * from tbl_Staff

				Select tbl_Class.Class_Id, tbl_Class.Class_Section,tbl_Class.Class_Standard,
					tbl_Staff.Staff_Name,tbl_Staff.Staff_Qualification 
				from tbl_Class -- Left table
				Left join tbl_Staff On -- Right table
					tbl_Class.Class_Id = tbl_Staff.Class_Id
				------------------------------------------------
				Select tbl_Class.Class_Id, tbl_Class.Class_Section,tbl_Class.Class_Standard,
					tbl_Staff.Staff_Name,tbl_Staff.Staff_Qualification 
				from tbl_Class-- Left table
				Left join tbl_Staff On -- Right table
					 tbl_Staff.Class_Id = tbl_Class.Class_Id

		-- Right join :
			Right join, get all data from right table and matching data from
				left table.
			Sequence of table is matter here.
			
			-- Syntax :
				Select * from tbl_A
				Right join tbl_B On
					tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select tbl_Class.Class_Id, tbl_Class.Class_Section,tbl_Class.Class_Standard,
					tbl_Staff.Staff_Name,tbl_Staff.Staff_Qualification 
				from tbl_Class -- Left table
				Right join tbl_Staff On -- Right table
					tbl_Class.Class_Id = tbl_Staff.Class_Id				

		-- Self join :
			Self join use to apply join to itself.
			We do not need to use multiple tables here. When execute sql statement
				both table works as a independent table.
			Alias name of the table is mandatory.

			-- Syntax :
				Select * from tbl_A as A,tbl_A as B
				Where A.column_name = B.column_name

			-- Example :
				Select * from tbl_Staff

				Insert into tbl_Staff(Staff_Name,Staff_Qualification)
				values('Dev','Mtech')

				Update tbl_Staff Set
					Staff_Supervisior = 1002
				Where Staff_Id in (2,4)

				Update tbl_Staff Set
					Staff_Supervisior = 2
				Where Staff_Id in (3)

				Select * from tbl_Staff

				Select S1.Staff_Name as SuperVisor_name,
				S1.Staff_Qualification as SuperVisor_Qualification,
					S2.Staff_Name,S2.Staff_Qualification
				from tbl_Staff as S1, tbl_Staff as S2
				Where S1.Staff_Id = S2.Staff_Supervisior