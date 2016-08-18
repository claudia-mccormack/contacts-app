puts "Please enter five of your favorite foods:"
foods = []
5.times do |i|
puts "Please enter food number: #{(i + 1).to_s}"
foods << gets.chomp
end



# puts "Here is an array of your favorite foods: "
# p foods

# foods.each do |food|
  # puts "I love #{food}."
# end

# foods.length.times do |i|
  # puts "#{(i + 1).to_s}. #{foods[i]}"
# end
