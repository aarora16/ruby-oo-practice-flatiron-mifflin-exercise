require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


ryan = Manager.new("Ryan", "Supplies", 45)
bob = Manager.new("Bob", "CEO", 62)
jose = Manager.new("Jose", "IT", 36)

# susan = Employee.new("Susan", 4000, ryan)
# joe = Employee.new("Joe", 1000, bob)
# pat = Employee.new("Pat", 2000, ryan)
# sue = Employee.new("Sue", 3000, ryan)

ryan.hire_employee("Susan", 4000)
ryan.hire_employee("Pat", 2000)
ryan.hire_employee("Sue", 3000)


binding.pry
puts "done"
