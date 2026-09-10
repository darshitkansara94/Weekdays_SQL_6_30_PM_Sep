Datatypes :
	Datatype is a type of data where developer can restrict user to save data
		in particular type.
	We have a different type of  data.

	-- Types of datatype :
		String :
			String is a combination of number, alphabets or special char.
			String value always writtin in single quote('').
			Ex :
				'Weltec'
				'weltec123'
				'123'

			-- Types of string :
				varchar :
					varchar is a part of string datatype. It use to store a string
						value.
					But varchar can store only single script language which is english.
					To store any value we need to assing a length to the datatype.

					-- Syntax :
						varchar(length)

					-- Example :
						varchar(15)

						'weltec Institute' -> length(16)
							O/P : 'weltec Institut'

						'weltec' -> length(6)
							O/P : 'weltec'

				nvarchar :
					nvarchar is similar to the varchar datatype only the difference
						is nvarchar support multiscript language.
					That means i can store a data in multiple languages.
					When we need to store a data in multiple language we need to use
					'N' as prefix before data value.

					-- Syntax :
						nvarchar(length)

					-- Example :
						nvarchar(10)

				char :
					Char is use to store a string value just like a varchar and 
						nvarchar.
					But char consume complete length of the cell.

					-- Syntax :
						char(length)

					-- Example :
						char(10)

						'weltec institue' -> length(16)
							O/P : 'weltec ins'

						'weltec' -> length(6)
							O/P : 'weltec    '

						'well' -> length(4)
							O/P : 'well      '

		Number :
			Numbers are always 0-9. 
			We can store numeric data by using number datatype.

			-- Types of Number datatype :
				Int:
					Int use to store a number type of value.
					But we can not store a long values in int.
					For int type of datatype length is alread defined
						so we can not change that.
					We can store a value like age, ids etc which contain
						some smaller number.

					-- Syntax :
						int

				Bigint :
					Bigint use to store a large number of values.
					Just like int we can not change the lenght of bigint as 
						it is already defined.

					-- Syntax :
						bigint

		Boolean :
			Boolean datatype use to store true or false value.
			In SQL boolean datatype use with the name 'bool'.

			-- Syntax :
				bool

		Date and time :
			Date and time use to store a date and time value.
			SQL has a default format for date and time which is
				'yyyy-mm-dd HH:mm:ss:ms'.

			-- Types of date and time datatype :
				date :
					Date dataype use to store only date as a value without
						time.
					We do not need to mention a length of the datatype.
					Date store in the format of 'yyyy-mm-dd'.

					-- Syntax :
						date

				time :
					If developer wants to store only time then we can use
						time datatype.
					We do not need to mention a length of the datatype.
					Date store in the format of 'HH:mm:ss:ms'.

					-- Syntax :
						time

				datetime :
					If i want to store date and time together then i can use
						datetime datatype.

					-- Syntax :
						datetime

		Decimal :
			Point between numbers is consider as a decimal.
			We need to give a total length of number and then how much 
				value / number we want after point.

			-- Syntax :
				decimal(total_length,number_after_point)

					total_length : Total length of my value including point.
					number_after_point : How many number i need after point.

			-- Example :
				decimal(15,2) -> 23.05
				decimal(10,3) -> 23.050

				decimal(18,2)

				-- decimal(4,2) -> 100.72

		Bit :
			Bit use to store true and false value but instead of true and false
				it store 0 and 1.
			Where 0 indicate false and 1 indicate true.
			Compare to bool datatype bit use less memory. And in the application
				i can easily compare with another data too.

			-- Syntax :
				bit