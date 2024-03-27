require 'httparty'

# Construct a GET request to WorldTimeAPI
response = HTTParty.get("https://worldtimeapi.org/api/timezone/Asia/Tokyo")

# Parse the JSON response to extract date and time
timezone_data = JSON.parse(response.body)

# Output the current date and time for the specified timezone
puts "Current Time in #{timezone_data['timezone']}: #{timezone_data['datetime']}"
