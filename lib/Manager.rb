class Manager
  attr_accessor :name, :department, :age, :employees

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @employees = []

    self.class.all << self
  end

  def hire_employee(name, salary)
    @employees << Employee.new(name, salary, self)
  end

  def self.all_departments
    self.all.map { |manager| manager.department }
  end

  def self.average_age
    ages = self.all.map { |manager| manager.age }
    ages.sum / ages.length
  end

  def self.all
    @@all
  end
end