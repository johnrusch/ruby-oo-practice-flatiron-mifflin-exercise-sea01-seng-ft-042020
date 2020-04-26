require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


ken = Manager.new("Ken", "Chicken", 42)
ryan = Manager.new("Ryan", "Biscuit", 35)

douglas = Employee.new("Douglas", 3200, "Ken")
jeff = Employee.new("Jeff", 5000, "Ryan")
ted = Employee.new("Ted", 3900, "Ryan")



binding.pry
puts "done"
