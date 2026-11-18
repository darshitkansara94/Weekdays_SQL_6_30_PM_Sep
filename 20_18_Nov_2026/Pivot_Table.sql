Pivot table :
	Pivot table use to convert rows into column.
	We can use pivot table for summary report purpose or to display normal report.

	-- Syntax :
		(
			Select column_name,column_name from tbl_name
		) as alias_name
		Pivot
		(
			Aggregate_function(column_name) for column_name in ([data1],[data2],..[data3])
		) as alias_name

	-- Example :
		Create table tbl_Employee
		(
			Employee_Id int primary key identity(1,1),
			Employee_Name nvarchar(15),
			Employee_Month nvarchar(6),
			Employee_Salary decimal(15,2)
		)

		Insert into tbl_Employee(Employee_Name,Employee_Month,Employee_Salary)
		values('Dwij','May',29000),('Devanshi','Jan',24000),('Abhishek','Jan',26000),
			('Devanshi','Feb',25000),('Dwij','Feb',26000),('Khushbu','Mar',28000)

		Select * from tbl_Employee

		Select Employee_Name,[Jan],[Feb],[Mar],[Apr] from 
		(
			Select 
				Employee_Name,Employee_Month,Employee_Salary
			from tbl_Employee
		) as SourceTable
		Pivot
		(
			Sum(Employee_Salary) For Employee_Month In ([Jan],[Feb],[Mar],[Apr])
		) as PivotTable

		-- Create dynamic pivot table
		Select * from tbl_Employee

		Declare @Column_name nvarchar(500)
		Declare @SQL nvarchar(max)
		
		Select @Column_name = STRING_AGG(QUOTENAME(Employee_Month),',')
		From
		(
			Select distinct Employee_Month from tbl_Employee
		)As M

		print(@Column_name)

		Set @SQL = '
			Select Employee_Name,'+ @Column_name + '
			From
			(
				Select Employee_Name,Employee_Month,Employee_Salary
				From tbl_Employee
			) as SourceTable
			Pivot
			(
				Sum(Employee_Salary) for Employee_Month in ('+ @Column_name +')
			) as PivotTable';

		print(@SQL)

		Exec sp_executesql @SQL