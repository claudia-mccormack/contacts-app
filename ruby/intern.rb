# New class Intern needs to be able to send reports
# BUT we don't want the Intern to fire people or give raises
class Intern
  # Tell the class to access all the methods defined in a module.
  include EmailReporter
end
