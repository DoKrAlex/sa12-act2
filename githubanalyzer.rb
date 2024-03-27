require 'httparty'

# Use HTTParty to send a GET request to GitHub API
response = HTTParty.get("https://api.github.com/users/kbridson/repos")

# Parse the JSON response to extract repository information
repositories = JSON.parse(response.body)

# Find the repository with the highest star count
most_starred_repo = repositories.max_by { |repo| repo['stargazers_count'] }

# Output the most starred repository details
puts "Most Starred Repository:"
puts "Name: #{most_starred_repo['name']}"
puts "Description: #{most_starred_repo['description']}"
puts "Stars: #{most_starred_repo['stargazers_count']}"
puts "URL: #{most_starred_repo['html_url']}"
