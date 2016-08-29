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

# class TestNoSpacesNoDashes < Minitest::Test

# 	def test_no_spaces
# 		assert_equal("1","2","3","4","5", string_space_or_dash?("123 45"))
# 	end

# 	def test_no_dashes
# 		assert_equal("12345", string_space_or_dash?("123-45"))
# 	end

# end

# class TestMuliplyIndex < Minitest::Test
# 	def test_number_times_index
# 		assert_equal(5, number_index(5))
# 	end
# end
