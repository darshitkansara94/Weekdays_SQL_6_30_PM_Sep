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
				Table valued function is use to return a complete table as a 
					output.
				When we need o calculate data based on multiple filds or logic
					then we can return table valued function.

				-- Syntax :
					Create / Alter function fn_name()
					Returns Table
					As
						Return
							(
								-- SQl statement
							)

					-- With parameter
					Create / Alter function fn_name
					(
						-- params
					)
					Returns Table
					As
						Return
							(
								-- SQL statement
							)

					-- Execcute function :
						Select * from dbo.fn_name()

				-- Example :
					Select * from dbo.fn_Student()

-- Common Example :
Select 
	Log_Id,Log_Description,Log_Date,
	dbo.fn_formatData(Log_Date) as formatted_date
from tbl_Log

Select 
	Student_Id,Student_Name,Student_EmailId,STudent_DOB,
	dbo.fn_formatData(Student_DOB) as formatted_date
from tbl_Student

Select * from tbl_Student

Select *
from dbo.fn_formatDataTable('1992-11-02 18:58:01.707',0) as fm
Inner join tbl_Student st on 
	fm.Student_Id = st.Student_Id

Alter table tbl_Student
Add Student_DOB datetime

Select GETDATE()

Update tbl_Student set
	Student_DOB = '1992-11-02 18:58:01.707'
