require_relative "manager"

class Employee
    attr_reader :salary, :title, :name, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end 

    def bonus(multiplier)
        if self.boss.nil?
            total = 0
            employees.each do |name|
                total += name.salary
            end
            bonus = total * multiplier
            return bonus 
        # elsif 
        #     self.boss
        end 
        # bonus = @salary * multiplier
        
    end

end 