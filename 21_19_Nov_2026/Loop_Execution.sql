Declare @i int = 0

While @i < 5
Begin
	print(@i)

	Set @i = @i + 1
End

Step 1 : @i = 0
	While @i < 5 -- True
	Begin
		print(@i) -- 0

		Set @i = @i + 1 -- @i = 0 + 1 = 1
	End

Step 2 : @i = 1
	While @i < 5 -- 1 < 5 = True
	Begin
		print(@i) -- 1

		Set @i = @i + 1 -- @i = 1 + 1 = 2
	End

Step 3 : @i = 2
	while @i < 5 -- 2 < 5 = True
	Begin
		print(@i) -- 2
		Set @i = @i + 1 -- @i = 2 + 1 = 3
	End

Step 4 : @i = 3
	While @i < 5 -- 3 < 5 = True
	Begin
		print(@i) -- 3
		Set @i = @i + 1 -- @i = 3 + 1 = 4
	End

Step 5 : @i = 4
	While @i < 5 -- 4 < 5 = True
	Begin
		print(@i) -- 4
		Set @i = @i + 1 -- @i = 4 + 1 = 5
	End

Step 6 : @i = 5
	While @i < 5 -- 5 < 5 = False
	Begin
		-- Loop not execute as condition is false
	End

0,1,2,3,4