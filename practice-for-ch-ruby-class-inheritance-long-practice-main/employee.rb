class Employee  
    def initialize(name, title, salary, boss)
        @name = name 
        @title = title 
        @salary = salary 
        @boss = boss
        @employees = nil 
    end 
    
    def bonus(multiplier)
        salary * multiplier
    end    


    attr_reader :salary, :employees 
    attr_accessor :boss 

end   
    
    