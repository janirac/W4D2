require_relative "employee"

class Manager
    attr_accessor :name, :employees
    def initialize(name)
        @name = name
        @employees = [] #An array of the employee instances
    end 

    def add_employees(employee)
        @employees << employee
    end
end 