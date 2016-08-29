def valid_isbn?(num)
	if num.length == 10
		true
	else
		false
	end
end

# def number_position(position)

# 	number = []

# 	number.each_with_index do |value, index|
# 		value * index
		
# 	end

def empty_array(string)
	string.split("") #converts from sting to array	
end

def string_space_or_dash?(number)
	remove = [" ", "-"]

	remove.each do |value|
		number.delete! value if number.include? value
	end

	number
end

def number_index(number)
	number[0] * number
end