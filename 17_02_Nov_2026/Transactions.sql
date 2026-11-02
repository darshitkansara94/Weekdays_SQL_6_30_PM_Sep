Transaction :
	Transaction is use to save data permenatly to the table or revert the data 
		if wrong entry or some error occured.
	There are two stages in transaction : one is commit and second is rollback.

	-- Types of transaction :
		-- Commit :
			Commit statement use to store a data into table permenantly.
			In MS SQL commit is a default.
			Once commit is done we can not remove data from  table through
				transaction.

		-- Rollback :
			Rollback revert data entry that enter through previous statements.
			Once commit is done we can not rollback data.


	-- Syntax :
		-- Transaction start
		Begin transaction tr_name
		
		-- Transaction successfully done
		Commit transaction tr_name

		-- Revert entry that is done in previous statement
		Rollback transaction tr_name

	-- Example :
		Begin transaction tr_Class
		Insert into tbl_Class(Class_Section,Class_Standard)
		values('C',8)
		Commit Transaction tr_Class

		Rollback transaction tr_Class