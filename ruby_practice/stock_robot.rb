require 'stock_quote'

puts "Choose a stock!"

stock = gets.chomp

ask = StockQuote::Stock.quote(stock).ask
bid = StockQuote::Stock.quote(stock).bid

puts "Ask: $#{ask}"
if ask < 50
  puts "Whose are those eyes that look back from the darkness?"
else
  puts "Was it worth it? All of it?"
end

puts "Bid: $#{bid}"
if bid < 50
  puts "The days are long, but the nights are longer."
else
  puts "We will meet again on the other side, but changed."
end
