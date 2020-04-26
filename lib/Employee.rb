class Employee
    attr_accessor :name, :salary, :manager_name

    @@all = []
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.paid_over(amount)
        @@all.select {|employee| employee.salary > amount }
    end

    # def self.find_department_manager(department)
    #     Manager.all.find {|manager| manager.department == department}
    # end

    def self.find_by_department(department)
        department_manager = Manager.all.find {|manager| manager.department == department}
        department_manager.employees[0]
    end

    def tax_bracket
        @@all.select do |employee| 
        employee.salary <= (self.salary + 1000) && 
        employee.salary >= (self.salary - 1000)
        end
    end

end
