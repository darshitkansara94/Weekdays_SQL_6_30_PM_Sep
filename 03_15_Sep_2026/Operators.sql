Operator :
	Operators are variable or symbol that help to perform some other operation.

	-- Types of operators :
		Arithmetic Operator :
			Arithmetic operator use to perform som mathemetical operation.

			-- Types of Arithmetic operator :
				Addition (+):
					Addition is use to perform sum of two int values and 
						concat two string values.

					Syntax :
						value1 + value2 + ... + valueN

					Example :
						'Hello ' + 'World' -> 'Hello World'
						1 + 1 -> 2
						1 + 'Hello' -> Throw error because two diff datatype

				Substraction (-) :
					Substraction use to perform minus operation between two values.

					Syntax :
						value1 - value2 -.... - valueN

					Example :
						1 - 1 -> 0

				Division (/) :
					Divide two values.

					Syntax :
						value1/value2

					Example :
						10/5 -> 2

						10/0 -> Throw Error because divide by zero not possible

				Multiplication (*) :
					If we want to multiply two or more than two values.

					Syntax :
						value1 * value2 * ...* valueN

					Example :
						10 * 10 -> 100

				Modulo (%) :
					Reminder value is consider as a modulos.

					-- Syntax :
						value1 % value2

					-- Example :
						10 / 2 -> 0

		Comparision Operator :
			When we need to compare two values then we can use comparision operator.

			Types of comparision operator :
				Equal to (=) :
					Equal to use to assign value or compare two different values.

					-- Example :
						value1 = value2

				Not Equal to (!=) :
					Represent Left side value and Right side values are not equal.
					Not equal to also represent with the sign '<>'

					-- Syntax :
						value1 <> value2
						value1 != value2

				Greater than (>) :
					Greater than, Left side value is bigger than right side value.

					-- Syntax :
						value1 > value2

				Less than (<) :
					Less than, Left side value is smaller than right side value.

					-- Syntax :
						value1 < value2

				Greater than or Equal to (>=) :
					If value is greater or equal to the right side value then this 
						is consider as a true.

					-- Syntax :
						value1 >= value2

					-- Example :
						10 >= 12 -> false
						12 >= 10 -> true
						12 >= 12 -> true

				Less than or Equal to (<=) :
					If value is less than or equal to the left side value then this 
						is consider as a true.

					-- Syntax :
						value1 <= value2

					-- Example :
						10 <= 12 -> true
						12 <= 10 -> false
						12 <= 12 -> true
		

		Logical Operator :
			Logical operator is consider or use to perform multiple condition.

			-- Types of logical operator :
				And :
					And operator indicates, If all the condition are true then we
						will get o/p as true else any of the condition is false then
						o/p will be false.

					-- Syntax :	
						condition1 and condition2 and ... and conditionN

					-- Example :
						10 > 12 And 15 > 10
						False		true	-> false

						-- 
						10 < 12 And 15 > 10
						true		true	-> true

				Or :
					Or operator indicates, if any of the condition is  true then 
						we will get o/p as true and it will ignore false condition.

					-- Syntax :
						condition1 OR condition2 OR .... OR conditionN

					-- Example :
						10 > 12 OR 15 > 10
						false		true	-> true

						-- 
						10 < 12 OR 15 > 10
						true		true	-> true

						--
						10 > 12 OR 12 > 12
						false		false	-> false

		Special Operator :
			Special operator is use to perform some operation like find a range 
				or filter multiple record using single operator.

			-- Types of Special Operator :
				In : 
					In operator use to filter out multiple records using single 
						operator.
					We can filer out any type of data.
					In backend this operator is work like a OR operator. So it will return
						data for the true condition and ignore false conditions.

					-- Syntax :
						in (expression1,expression2,...,expressionN)

					-- Example :
						in (1,3,6)
						
						in ('abc','xyz','cde')

				Between :
					Between operator use to filter data by using the range of values.
					We can not use string value to identify the range of the value
						or data.
					value1 should be always less than value2.

					-- Syntax :
						between value1 And value2

					-- Example :
						between 10 And 25

				Like :
					Like operator use to filter out value based on 3 searching criteria
						that is Start with, End with and Contains.
					Like operator write with the sign of '%'.
					Start With : Start with always scan record from left to right. And
						search data in sequential order.
					End With : End with always scan record from right to left. And 
						search data in sequential order.
					Contain : Contain use to filter out any char or string. If that
						char or string exists in value then we will get o/p.

					-- Syntax :
						-- Start with :
							like 'char/string%'

						-- End with
							like '%char/string'

						-- Contain :
							like '%char/string%'
					
					-- Example :
						-- Start with
							like 'a%'

						-- End with
							like '%a'

						-- Contains 
							like '%a%'
					
				Not :
					Not operator use to give o/p of data that is not mention in 
						condition.
					Whatever data we search except of that we will get data using not
						operator.

					-- Example :
						-- With in operator :
							not in (1,3,6)

						-- With between
							not between 10 And 25

						-- With like 
							not like 'a%'


		-- Bitwise Oerator :
