def valid_isbn?(num)
	if num.length == 10 || num.length == 13
		true
	else
		false
	end
end

def empty_array(string)
	string.split("") #converts from sting to array	
end

def string_space_or_dash?(number)
	remove = [" ", "-"]

	remove.each do |value|
		number.delete! value #if number.include? value
	end

	number
end

def number_position_and_index(array_of_strings)

	empty_array = []

	array_of_strings.each_with_index do |value, index|
		if index < 9
			return_value = value.to_i * (index + 1)
			empty_array.push(return_value)
		end
	end
	
	empty_array
end

def sum_of_array(array)
	
	array.inject(:+)
end

def modulus_number(sum)
	
	checksum = sum % 11
	
	if checksum == 10
		"X"
	else
		checksum
	end
end
