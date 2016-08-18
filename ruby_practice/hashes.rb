customers = []

2.times do
hash = Hash.new{""}
puts "Please enter customer first name:"
hash[:first_name] = gets.chomp
puts "Please enter customer last name:"
hash[:last_name] = gets.chomp
puts "Please enter customer email:"
hash[:email] = gets.chomp
hash[:acct_num] = rand(1000000000...9999999999)
customers << hash
end
