
class Employee
    attr_reader :salary, :title, :name
    attr_accessor :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end 

    def boss=(boss)
        @boss = boss
        if !boss.nil?
            boss.add_employee(self)
        end
        boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end
end 


class Manager < Employee
    attr_reader :employees
    def initialize(name, salary, title, boss = nil)
        super(name, salary, title, boss)
        @employees = [] #An array of the employee instances
    end

    def add_employees(worker)
        @employees << worker
        worker
    end

    protected
    def subsalary
        total = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                total += employee.salary + employee.total
            else
                total += employee.salary
            end
        end
        total
    end
end 