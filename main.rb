require_relative 'car'

def mainmenu

main_menu = "|||please type in a menu number|||
1 - Add a new car
2 - Add customer
3 - Cars for sale
4 - view car details

9 - **exit the program**"

puts main_menu

menu_choice = gets.chomp

	case menu_choice.to_i
	when 1
		puts "Reg plate?"
		reg = gets.chomp
		puts "Make of car?"
		make = gets.chomp
		puts "Colour ?"
		colour = gets.chomp
		puts "Whats the cost of #{make}?"
		cost = gets.chomp
		#puts reg+"="+"Car.new('#{reg}','#{make}','#{cost}','#{colour}')"
		car = Car.new(reg,make,cost,colour)
		#eval("return #{reg} = Car.new('#{reg}','#{make}','#{cost}','#{colour}')")
	when 3
		puts Car.all
		puts "hit enter for menu"
		gets.chomp
	when 4
		puts "reg number?"
		regnum = gets.chomp
		Car.instances.each do |a| 
			if a.reg == regnum
			puts "Car Reg: #{a.reg}" 
			newc = a 
			newc.make
		end
		end
		#eval("vCar = #{regi}.clone") #or.. puts eval(#{reg}.make)
	when 9
		exit
	else
		puts "Didnt understand that, press enter to go back to the menu again"
		blah = gets.chomp
		mainmenu
	end

#mainmenu #turn this on for live
end

mainmenu
