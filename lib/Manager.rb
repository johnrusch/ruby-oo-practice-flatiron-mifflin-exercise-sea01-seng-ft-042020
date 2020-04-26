class Manager
    attr_accessor :name, :department, :age

    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager_name == self.name}
    end

    def hire_employee(employee, salary)
        Employee.new(employee, salary, self.name)
    end

    def self.all_departments
        @@all.map {|manager| manager.department}
    end

    def self.average_age
        manager_ages = @@all.map {|manager| manager.age}
        manager_ages.sum(0.0) / manager_ages.size
    end


end
