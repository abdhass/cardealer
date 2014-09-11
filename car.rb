#coding: utf-8
class Car
  attr_accessor :reg, :make, :cost
  def initialize(reg, make, cost)
    @reg = reg
    @make = make
    @cost = cost
  end
  
  def description
    puts "This car is a #{@make} and costs £#{@cost} and the reg is #{@reg}"
  end
end

class CarDealer
  @@cars = []

  def newCar(reg, make, cost)
    @@cars << Car.new(reg, make, cost)
  end
  
  def show_car
    def sorry
      puts "Sorry no cars for sale"
    end
    @@cars.any? ? @@cars.each {|car| car.description} : sorry
  end
  
  def car_details(reg)
    if @@cars.any?
        @@cars.each do |car| 
          if car.reg == reg
            puts "Car Reg: #{car.reg} Car Make: #{car.make} Car Cost: #{car.cost}"   
          else
            puts "no car found"
          end
        end 
      else
        puts "No cars are stored. Please add a car"
      end
  end
end
#londonBranch = CarDealer.new
#londonBranch.newCar("LX14", "Ford", "1200")
#londonBranch.newCar("LX13", "VW", "1200")
#londonBranch.newCar("LX12", "Merc", "1200")
#londonBranch.show_cars
