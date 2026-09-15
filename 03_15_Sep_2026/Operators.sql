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

		Bitwise Oerator :
