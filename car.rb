class Car
  attr_accessor :reg, :make, :cost
  def initialize(reg, make, cost)
    @reg = reg
    @make = make
    @cost = cost
  end
  def description
  puts "This car is a #{@make} and costs #{@cost}"
  end
end

class CarDealer
    @@cars = []
  def newCar(reg, make, cost)
    @@cars << Car.new(reg, make, cost)
  end

def show_cars
    @@cars.each {|car| car.description} 
  end
end

#londonBranch = CarDealer.new
#londonBranch.newCar("LX14", "Ford", "1200")
#londonBranch.newCar("LX13", "VW", "1200")
#londonBranch.newCar("LX12", "Merc", "1200")
#londonBranch.show_cars
