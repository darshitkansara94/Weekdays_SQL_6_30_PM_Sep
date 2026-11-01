Functions :
	User defined function :
		UDF custome created function or function created by the user.
		We can reuse the same code in multiple places but with in that DB.

		-- Types of UDF :
			-- Scalare Valued function :
				Scalar value function use to return single value.
				That means we will get a single cell as o/p not rows ans columns.
				Scalar valued function support paramteres.

				-- Syntax :
					Create function fn_name()
					Returns datatype
					As
					Begin
						-- SQL statement
					End

					-- Parameterized function
					Create function fn_name
					(
						-- Param
					)
					Returns datatype
					As
					Begin
						-- SQL statement
					End

					-- Execute function
					Select dbo.fn_name() as alias_name from tbl_name

				-- Example :
					Select dbo.fn_Addition()

					Select dbo.fn_AdditionWithParam(20,20) as Addition

					Select * from tbl_Marks

					Alter table tbl_Marks
					Add Maths decimal(18,2)

					Alter table tbl_Marks
					Add SS decimal(18,2)

					Alter table tbl_Marks
					Add Science decimal(18,2)

					Insert into tbl_Marks(Marks_StudentId,Marks_Subject,Maths,SS,Science)
					values(1,'Maths',50,48,49),(2,'Maths',45,35,30),(3,'Maths',44,15,36),
						(4,'Maths',5,5,25)

					Select Marks_StudentId,Maths,SS,Science,
					dbo.fn_AdditionWithParam(Maths,SS,Science) as Total_Marks
					from tbl_Marks


			-- Table Valued function :