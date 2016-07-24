count = 0

11.times do
  puts count
count = count +=  1
 end

result = "string"

if result != "string"
  puts "what"
end

unless result == "string"
  puts "what"
end

result = 5
unless result == 6
  puts "HELLO"
end

sam = [rand(20), "pancakes", "crepes"]
sally = [rand(10), "german", "french"]

if sam[0] > 10 && sally[0] > 5
  puts "they should date"
elsif sam[rand(1..2)] == "crepes" && sally[rand(1..2)] == "french"
  puts "They should marry"
else
  puts "Better luck next time:"
end
