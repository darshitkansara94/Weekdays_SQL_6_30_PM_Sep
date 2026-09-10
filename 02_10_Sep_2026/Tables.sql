Table :
	Table is a collection of rows and columns.
	In database all the data is store inside a table.
	So when we fetch or modify or insert a new record those data are store inside
		table.
	In one database we can create multiple tables.
	But table name can not be duplicate within same DB.
	Table name should not start with special char and numbers.
	Space is not allowed in table name.
	When we create a table we need to give prefix 'tbl_'
		Ex : tbl_RegisterMaster

	Column :
		Column is heading for the table.
		I can create N number of columns in single table.
		Space is not allowed in column_name.
		Column name should not start with special char or number.
		Column name should start with table name.
			Ex : I have table with the name 'tbl_RegisterMaster'
				so my column name should be :
					'Register_Id','Register_Name'

	-- Syntax :
		Create table tbl_name
		(
			column_name datatype,
			column_name datatype,
			.
			.
			.
			column_name datatype
		)

	-- Example :
		Create database DB_SQLWeekday

