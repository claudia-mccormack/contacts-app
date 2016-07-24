class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :active
  # With the attr_accessor, we can read and write on the :active status
  # see fire_all_employees method

  # attr_writer will let us write on the code but not let people read it.
  # in this example, we'd need to have active in the attr_reader too.

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    # to create a default value of true, enter:
    # @active = true
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end
