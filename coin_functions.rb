def generate_change(cents)
	currency = Hash.new

	coin_values = {:Dollar => 100, :Quarter => 25, :Dime => 10, :Nickel => 5, :Penny => 1}

	coin_values.each do |coin_name, coin_value|
		if cents >= coin_value
			coins = cents/coin_value
			currency[coin_name] = coins
			cents = cents - (coin_value * coins)
		end
	end
	currency
end