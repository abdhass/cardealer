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
  
  def show_car
    puts @@cars.any? ? @@cars.each {|car| car.description} : "Sorry no cars for sale"
  end
  
  def car_details(reg)
    @@cars.each do |car| 
      if car.reg == reg
        puts "Car Reg: #{car.reg}
              Car Make: #{car.make}
              Car Cost: #{car.cost}" 
      end
    end
  end
end
#londonBranch = CarDealer.new
#londonBranch.newCar("LX14", "Ford", "1200")
#londonBranch.newCar("LX13", "VW", "1200")
#londonBranch.newCar("LX12", "Merc", "1200")
#londonBranch.show_cars
