# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least 
# number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

require_relative "coin_functions.rb"
require "minitest/autorun"

class CoinAppTest < Minitest::Test 

	def test_returns_empty_hash
		assert_equal({}, generate_change(0))
	end

	def test_returns_hash_with_one_penny
		assert_equal({:Penny => 1}, generate_change(1))
	end

	def test_returns_hash_with_three_pennies
		assert_equal({:Penny => 3}, generate_change(3))
	end

	def test_returns_hash_with_four_pennies
		assert_equal({:Penny => 4}, generate_change(4))
	end

	def test_returns_hash_with_one_nickel
		assert_equal({:Nickel => 1}, generate_change(5))
	end

	def test_returns_hash_with_one_nickel_and_one_penny
		assert_equal({:Nickel => 1, :Penny => 1}, generate_change(6))
	end

	def test_returns_hash_with_one_nickel_and_three_pennies
		assert_equal({:Nickel => 1, :Penny => 3}, generate_change(8))
	end

	def test_returns_hash_with_one_dime
		assert_equal({:Dime => 1}, generate_change(10))
	end

	def test_returns_hash_with_one_dime_and_three_pennies
		assert_equal({:Dime => 1, :Penny => 3}, generate_change(13))
	end

	def test_returns_hash_with_one_dime_and_one_nickel
		assert_equal({:Dime => 1, :Nickel => 1}, generate_change(15))
	end

	def test_returns_hash_with_one_dime_and_one_nickel_and_two_pennies
		assert_equal({:Dime => 1, :Nickel => 1, :Penny => 2}, generate_change(17))
	end

	def test_returns_hash_with_two_dimes
		assert_equal({:Dime => 2}, generate_change(20))
	end

	def test_returns_hash_with_two_dimes_and_one_penny
		assert_equal({:Dime => 2, :Penny => 1}, generate_change(21))
	end

	def test_returns_hash_with_one_quarter
		assert_equal({:Quarter => 1}, generate_change(25))
	end

	def test_returns_hash_with_one_quarter_and_two_pennies
		assert_equal({:Quarter => 1, :Penny => 2}, generate_change(27))
	end

	def test_returns_hash_with_one_quarter_and_one_nickel_and_one_penny
		assert_equal({:Quarter => 1, :Nickel => 1, :Penny => 1}, generate_change(31))
	end

	def test_returns_hash_with_one_quarter_and_one_dime
		assert_equal({:Quarter => 1, :Dime => 1}, generate_change(35))
	end

	def test_returns_hash_with_one_quarter_and_one_dime_and_two_pennies
		assert_equal({:Quarter => 1, :Dime => 1, :Penny => 2}, generate_change(37))
	end

	def test_returns_hash_with_one_quarter_and_one_dime_and_one_nickel_and_three_pennies
		assert_equal({:Quarter => 1, :Dime => 1, :Nickel => 1, :Penny => 3}, generate_change(43))
	end

	def test_returns_hash_with_two_quarters
		assert_equal({:Quarter => 2}, generate_change(50))
	end

	def test_returns_hash_with_three_quarters_and_three_pennies
		assert_equal({:Quarter => 3, :Penny => 3}, generate_change(78))
	end

	def test_returns_hash_with_three_quarters_and_one_dime_and_one_nickel_and_one_penny
		assert_equal({:Quarter => 3, :Dime => 1, :Nickel => 1, :Penny => 1}, generate_change(91))
	end

	def test_returns_hash_with_one_dollar
		assert_equal({:Dollar => 1}, generate_change(100))
	end

	def test_returns_hash_with_five_dollars_one_quarter_one_dime_one_nickel_two_pennies
		assert_equal({:Dollar => 5, :Quarter => 1, :Dime => 1, :Nickel => 1, :Penny => 2}, generate_change(542))
	end

	def test_returns_hash_with_twenty_nine_dollars_one_quarter_one_nickel_one_pennies
		assert_equal({:Dollar => 29, :Quarter => 1, :Nickel => 1, :Penny => 1}, generate_change(2931))
	end

end