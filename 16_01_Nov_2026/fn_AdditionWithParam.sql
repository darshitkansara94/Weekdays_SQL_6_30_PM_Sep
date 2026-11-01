Alter function fn_AdditionWithParam
(
	@Value1 int,
	@Value2 int,
	@Value3 int
)
Returns decimal(15,2)
As
Begin
	return @value1 + @value2 + @Value3
End