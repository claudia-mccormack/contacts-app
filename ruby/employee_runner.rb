# Tell the program to look for files in the same directory
# Can also be written as: require './intern'
require_relative 'email_reporter'
require_relative 'employee'
require_relative 'manager'
require_relative 'intern'
# Tell the program to look for files in the whole system with: require 'intern'

puts "These were employee salaries at the beginning of the year."
employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

# Here's a nice way to wrap long lines of code for readability.
puts "This is the manager and his salary."
manager = Tiger::Manager.new(
  first_name: "Saron",
  last_name: "Yitbarek",
  salary: 100000,
  active: true,
  employees: [employee1, employee2]
)
manager.print_info
manager.send_report

puts "We won the world cup, so everyone gets a raise."
manager.give_all_raises
employee1.print_info
employee2.print_info

intern = Intern.new
intern.send_report
puts "This is the end of the internship."
