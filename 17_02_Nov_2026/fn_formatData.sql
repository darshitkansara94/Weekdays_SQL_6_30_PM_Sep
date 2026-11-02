Alter function fn_formatData
(
	@datevalue datetime
)
Returns nvarchar(20)
As
Begin
	Return convert(nvarchar(20),@datevalue,108)
End