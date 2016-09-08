require_relative "new_isbn.rb"
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

	def test_for_X_to_be_replaced_with_10_at_check_degit_pos
        assert_equal(["0","8","0","4","4","2","9","5","7","10"], update_check_digit_containing_X(["0","8","0","4","4","2","9","5","7","x"]))
        assert_equal(["0","8","0","4","4","2","9","5","7","8"], update_check_digit_containing_X(["0","8","0","4","4","2","9","5","7","8"]))
        assert_equal(["0","8","0","4","x","2","9","5","7","8"], update_check_digit_containing_X(["0","8","0","4","x","2","9","5","7","8"]))
    end

    def test_for_10_digit_math
        assert_equal(true, valid_10_digit_isbn?(["0","4","7","1","9","5","8","6","9","7"]))
        assert_equal(false, valid_10_digit_isbn?(["1","4","7","1","9","5","8","6","9","7"]))
        assert_equal(true, valid_10_digit_isbn?(["8","7","7","1","9","5","8","6","9","10"]))
    end
end

class TestNonNumeric < Minitest::Test

	def test_for_non_numeric_characters_in_my_array?
    # true if anything other than digit/can i include this in disallowed function??
     assert_equal(nil, only_numbers_in_my_array?(["1","2","3","4","5","6","7","8","9","0"]))
      assert_equal(true, only_numbers_in_my_array?(["1","2","3","?","5","6","7","8","9","0"]))
      assert_equal(true, only_numbers_in_my_array?(["n","2","3","x","5","p","7","8","9","0"]))
    end
end

class TestThirteenDigits < Minitest::Test

	def test_for_thirteen_character_math
       assert_equal(true, vaild_13_digit_isbn?(["9","7","8","0","1","5","6","0","2","7","3","2","8"]))
   	end

   	def test_for_thirteen_characters_math
       assert_equal(false, vaild_13_digit_isbn?(["9","7","8","0","1","7","6","0","3","7","3","2","9"]))
   	end
end

class TestBothFunctions < Minitest::Test
	def test_for_10_or_13
		assert_equal(true, valid_isbn_10_or_13("978 0 471 48648 0"))
		assert_equal(false, valid_isbn_10_or_13("978c0 471 48648 0"))
		assert_equal(false, valid_isbn_10_or_13("978 0 471 4848 56"))
		assert_equal(false, valid_isbn_10_or_13("978a0b4714897"))
	end

end