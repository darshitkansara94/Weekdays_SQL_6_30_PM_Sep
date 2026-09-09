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

		Boolean
		Date and time
		Decimal
		Bit