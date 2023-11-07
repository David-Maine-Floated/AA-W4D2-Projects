require './employee.rb'
require './manager.rb'

david = Employee.new('David', 'TA', 10000, "Darren")
shawna = Employee.new('Shawna', 'TA', 12000, 'Darren')
darren = Manager.new('Darren', 'TA Manager', 78000, 'Ned')
darren.add_employee(shawna)
darren.add_employee(david)

p david
p shawna 
p darren
p darren.bonus(4)