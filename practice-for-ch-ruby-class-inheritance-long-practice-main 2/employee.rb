class Employee
    attr_reader :salary, :name, :title
    attr_writer :boss
    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary = salary
        self.boss = boss
    end

    def boss=(boss)
        @boss = boss
        boss.add_subordinate(self) unless boss.nil?
    end 

    def inspect
        puts name
    end

    def bonus(multiplier)
        self.salary * multiplier
    end
end

