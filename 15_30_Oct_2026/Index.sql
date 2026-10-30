Index :
	Index is use to retrieve data fast from table.
	When we have a large dataset then index help to retrieve that data more accurate and fast.
	We can create n no of indexes but when we create multiple index on single table then
		Insert, Update and delete might be affected.

	-- Types of indexes :
		-- Clustered Index :
			Clustered Index by default create on primary key column in the table.
			We can not create multiple clustered index on single table.
			If we do not have primary key in my table then i can create clustered index
				on column.

			-- Syntax :
				Create clustered index idx_name on
				tbl_name(column_name)

			-- Example :
				Create clustered index idx_StudentId on
				tbl_Student(Student_Id)

				Create clustered index idx_Staff on
				tbl_Staff(Staff_FirstName)

		-- Non-clustered Index :
			We can create n number of indexes on single table.
			But creating more index cause a slowness in Insert, update and delete.

			-- Syntax :
				Create nonclustered index idx_name on
				tbl_name(column_name)

			-- Example :
				Create nonclustered index idx_Studentname on
				tbl_Student(Student_Name)

			-- Types of non-clustered index :
				-- Unique index :
					Unique index allow user to store unique value for that column.
					It create unique constraint and also create index for that column.

					-- Syntax :
						Create unique nonclustered index idx_name on
						tbl_name(column_name)

					-- Example :
						Select * from tbl_Student

						--With cte_duplicateEmail as
						--(
						--	Select ROW_NUMBER() over(Partition by Student_EmailId order by
						--		Student_Id) as Srno
						--	from tbl_Student
						--)

						--Delete from cte_duplicateEmail Where srno > 1

						--Select * from cte_duplicateEmail
						--Where srno > 1

						Create unique nonclustered index idx_EmailId on
						tbl_Student(Student_EmailId)

						Insert into tbl_Student(Student_Id,Student_Name,Student_EmailId)
						values(3,'Dwij','abc1@gmail.com')

				-- Filtered index :
					We can create Filtered index with the condition.
					Condition might be single or multiple.

					-- Syntax :
						Create unique nonclustered index idx_name on
						tbl_name(column_name)
						Where condition

					-- Example :
						Create unique nonclustered index idx_EmailId on
						tbl_Student(Student_EmailId) 
						Where IsActive = 0

						Select * from tbl_Student
						Where IsActive  = 0

						Select * from tbl_Student -- Recover
						Where IsActive  = 1

						Update tbl_Student set
							Student_EmailId = 'xyz1@gmail.com'
						Where Student_Id = 2

						Insert into tbl_Student(Student_Id,Student_Name,Student_EmailId,IsActive)
						values(4,'Dhruv','xyz@gmail.com',0)

						Update tbl_Student set
							IsActive = 0
						Where Student_Id = 2