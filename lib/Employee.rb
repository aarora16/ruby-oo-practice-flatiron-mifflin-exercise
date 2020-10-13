class Employee
  attr_accessor :name, :salary, :manager

  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager

    self.class.all << self
  end

  def manager_name
    @manager.name
  end

  def is_in_range?(salary)
    low = salary - 1000
    high = salary + 1000

    (low..high).include?(salary)
  end

  def tax_bracket
    self.class.all.select do |employee|
      employee if (self.salary-1000..self.salary+1000).include?(employee.salary)
    end
  end

  def self.paid_over(salary)
    self.all.select do |employee|
      employee.salary >= salary
    end
  end

  def self.find_by_department(department)
    self.all.detect do |employee|
      if employee.manager.department == department
        return employee
      end
    end
  end

  def self.all
    @@all
  end
end