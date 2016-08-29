require_relative "isbn.rb"
require "minitest/autorun"

class Valid_isbn < Minitest::Test

	def test_empty_string_returns_false()
		assert_equal(false, valid_isbn?(""))
	end

	def test_ten_digits_returns_true()
		assert_equal(true, valid_isbn?("0471958697"))
	end
end

class TestPosition

	def test_number_position_times_index_returns_true()
		assert_equal(true, number_position("0471958697"))
	end
end

class Test_string_to_array < Minitest::Test

	def test_empty_string_returns_empty_array
		assert_equal([], empty_array(""))
	end

	def test_string_returns_array_with_numbers
		assert_equal(["1","2","3","4","5"], empty_array("12345"))
	end
end

class TestNoSpacesNoDashes < Minitest::Test

	def test_no_spaces
		assert_equal("12345", string_space_or_dash?("123 45"))
	end

	def test_no_dashes
		assert_equal("12345", string_space_or_dash?("123-45"))
	end

	def test_string_with_dash_and_space
		assert_equal("0123456789", string_space_or_dash?("0123-4 5--6 789"))
	end

end

class TestMuliplyPositionTimesNumber < Minitest::Test
	
	def test_number_position_times_number
		assert_equal([7, 8, 6, 4, 15, 54, 28, 56, 54], number_position_and_index(["7", "4", "2", "1", "3", "9", "4", "7", "6"]))
	end

	def test_number_position_times_number
		assert_equal(232, sum_of_array([7, 8, 6, 4, 15, 54, 28, 56, 54]))
	end
end

class TestModulusOfNumber
	
	def test_for_modulus_returns_one
		assert_equal(1, modulus_number(232))
	end

	def test_for_21_returns_x
		assert_equal("10", modulus_number(21))
	end


end
