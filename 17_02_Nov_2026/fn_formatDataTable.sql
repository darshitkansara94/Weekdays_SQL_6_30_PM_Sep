Alter function fn_formatDataTable
(
	@datevalue datetime,
	@Amount_format decimal(10,2)
)
Returns Table
As
	Return (
		Select Student_Id,convert(nvarchar(20),@datevalue,108) as date,
		'2,50,000' as amount
		from tbl_Student
	)