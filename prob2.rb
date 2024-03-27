require 'HTTParty'

request = HTTParty.get("https://v6.exchangerate-api.com/v6/f10ecb077f94b896a24ff315/latest/USD")

pound_rate = request["conversion_rates"]["GBP"]
puts pound_rate

euro_rate = request["conversion_rates"]["EUR"]
puts pound_rate

pounds_to_dollar = 10000 / pound_rate
dollar_to_euro = pounds_to_dollar * euro_rate

puts pounds_to_dollar
puts dollar_to_euro

puts "#{pounds_to_dollar} pounds is == #{dollar_to_euro} euros"
