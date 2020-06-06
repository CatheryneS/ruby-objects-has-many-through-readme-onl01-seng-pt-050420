class Customer
  attr_accessor :age, :name
  @@all =[]
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip = 0)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select { |meal| meal.customer == self}
  end
  
  def waiters
<<<<<<< HEAD
    meals.map {|meal| meal.waiter}
=======
    meals.map do |meal| 
      meal.waiter
    end
>>>>>>> 7ffc77e9b57b4c5c299681ec373fb1ee1c246314
  end
end