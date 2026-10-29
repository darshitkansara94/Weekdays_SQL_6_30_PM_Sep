Ranking Functions :
	Ranking function use to display sequence number as well to identify duplicate
		records from the table.
	
	-- Types of Ranking function :
		-- Row_Number() :
			Row number function use to display serial number / sequential number
				record.
			When any data is removed then row number regenrate that number and
				rearrage the sequence.

			-- Syntax :
				Select ROW_NUMBER() over(Order by column_name asc/desc) as alias_name
				from tbl_name

			-- Example :
				Select 
					ROW_NUMBER() over(Order by Student_Id desc) as SrNo,
					Student_Name,Student_EmailId,Student_MobileNo 
				from tbl_Student

		-- Dense_Rank() :
			Dense_rank function give same sequence number to the duplicate value
				that is mentioned in order by.

			-- Syntax :
				Select DENSE_RANK() over(Order by column_name asc/desc) as alias_name
				from tbl_name

			-- Example :
				Select * from tbl_StudentMaster
				
				Select DENSE_RANK() over(order by Student_FirstName) as Srno,
					Student_Id,Student_FirstName,Student_LastName,Student_EmailId
				from tbl_StudentMaster

		-- Rank() :
			Rank function use to display sequence number but it will not display
				number in sequence if rows are duplicate.

			-- Syntax :
				Select RANK() over(order by column_name) as alias_name
				from tbl_name

			-- Example :
				Select Rank() over(Order by Staff_Salary desc) as Srno,
					Staff_Id,Staff_Name,Staff_Salary
				from tbl_Staff