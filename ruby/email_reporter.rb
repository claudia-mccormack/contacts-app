# Defining a MODULE
# A set of behaviors that can be included in multiple classes
module EmailReporter
  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end
