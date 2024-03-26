require 'HTTParty'

api_key = 'RwgNBpKBfPOsu0vRmEGIFs9Y1FlVm0u3'

headers = {
  'Authorization' => "Bearer #{api_key}",
  'Content-Type' => 'application/json'
}

request = HTTParty.get('https://api.tomorrow.io/v4/weather/forecast?location=42.3478,-71.0466&apikey=RwgNBpKBfPOsu0vRmEGIFs9Y1FlVm0u3', headers)

total_temp = 0
total_humidity = 0
total_wind_speed = 0
count = 0
request["timelines"]["daily"].each do |day|
  puts "Day/Time: #{day["time"]} Temp: #{day["values"]["temperatureAvg"]} Humidity: #{day["values"]["humidityAvg"]} Wind Speed: #{day["values"]["windSpeedAvg"]}"
  total_temp += day["values"]["temperatureAvg"]
  total_humidity += day["values"]["humidityAvg"]
  total_wind_speed += day["values"]["windSpeedAvg"]
  count += 1
end

temp_avg = total_temp / count
humidity_avg = total_humidity / count
wind_speed_avg = total_wind_speed / count

puts "The averages for the week 2024-03-26/2024-03-31\nTemperature Average: #{temp_avg}\nHumidity Average: #{humidity_avg}\nWind Speed Average: #{wind_speed_avg}"
