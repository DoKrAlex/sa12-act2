require 'httparty'

# Send a GET request to CoinGecko API
response = HTTParty.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd")

# Parse the JSON response to extract cryptocurrency data
cryptocurrencies = JSON.parse(response.body)

# Sort cryptocurrencies by market capitalization
sorted_cryptocurrencies = cryptocurrencies.sort_by { |crypto| crypto['market_cap'] }.reverse

# Output the top 5 cryptocurrencies by market capitalization
puts "Top 5 Cryptocurrencies by Market Cap:"
sorted_cryptocurrencies.first(5).each do |crypto|
  puts "#{crypto['name']} - Price: $#{crypto['current_price']} - Market Cap: $#{crypto['market_cap']}"
end
