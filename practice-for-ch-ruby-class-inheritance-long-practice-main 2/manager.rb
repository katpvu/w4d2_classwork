require "byebug"
require_relative "employee.rb"
class Manager < Employee

    attr_reader :employees
    # debugger
    def initialize(name, title, salary, boss=nil)
        super
        @employees = []
    end

    def add_subordinate(employee) 
        employees << employee
    end

    # def add_employee(name, title, salary)
    #     employees << Employee.new(name, title, salary, self.name)
    # end

    def bonus(multiplier)
        total_salaries(self.employees) * multiplier
    end

    def total_salaries(employees)
        # debugger
        return employees.salary if employees.kind_of?(Employee)
        total = 0
        employees.each do |employee|
            if employee.kind_of?(Manager)
                total += employee.salary
                total += total_salaries(employee.employees)
            elsif employee.kind_of?(Employee) 
                total += employee.salary
            end
        end
        total
        # employees.first.salary + total_salaries(employees[1..-1].salary)
    end
end

# puts "ned manager"
ned = Manager.new("Ned", "Founder", 1000000)
# p ned.employees
# puts "darren manager"
darren = Manager.new("Darren", "TA Manager", 78000, ned)
# p ned.add_subordinate(darren)
# p darren.employees
# ned.employees

shawna = Employee.new("Shawna", "TA", 12000, darren) 
david = Employee.new("David", "TA", 10000, darren)

# p darren.bonus(4)
p ned.bonus(5)
# p david.bonus(3)
