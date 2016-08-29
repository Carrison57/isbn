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

def string_space_or_dash?(number_no_space_no_dash)
	if number_no_space_no_dash.include? " "
		number_no_space_no_dash.delete " "
	elsif number_no_space_no_dash.include? "-"
		number_no_space_no_dash.delete "-"
	else
		string
	end
end


