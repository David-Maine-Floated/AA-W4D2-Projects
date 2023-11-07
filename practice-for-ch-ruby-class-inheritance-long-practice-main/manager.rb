require './employee'
require 'byebug'


class Manager < Employee
    def initialize(name, title, salary, boss) 
        super 
        @employees = []
    end   
    
    # def bonus(multiplier)
    #     salaries = []
    #     queue = [self]

    #     until queue.empty?
    #         current = queue.shift
    #         unless current == self  
    #             salaries << current.salary 
    #         end   
    #         if current.employees != nil  
    #             current.employees.each do |sub_employee| 
    #                 # debugger 
    #                 # salaries << sub_employee.salary
    #                 queue << sub_employee  
    #             end    #how to check if sub_employee has an employees atribute 
    #         end    
    #     end 
    #     salaries.sum * multiplier   
    # end

    def bonus(multiplier)
        return employee.salary if self.employees.nil?

        salaries = []
        self.employees.each do |employee|
            if employee.employees 
                salaries << employee.bonus(multiplier)
            else  
                salaries << employee.salary
            end            
        end    
        salaries.sum * multiplier
    end

    
    def add_employee(employee) 
        # debugger 
        employees << employee
        employee.boss = self.name 
    end    


    attr_reader :employees, :name 
end     

# if !sub_employee.employees.nil?