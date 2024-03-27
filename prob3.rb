require 'HTTParty'

headers = {
  'Authorization' => "Bearer #{"LPDHGXIVZVVYYWKCHW"}",
  'Content-Type' => 'application/json'
}

# Make an API request using the user's private token
request = HTTParty.get('https://www.eventbrite.com/api/v3/users/me/?token=LPDHGXIVZVVYYWKCHW',
                        headers: headers)

puts "API Response: #{request.body}"
