require_relative 'car'

def mainmenu(londonBranch)
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
		puts "Whats the cost of #{make}?"
		cost = gets.chomp
		londonBranch.newCar("#{reg}","#{make}","#{cost}")
	when 3
		londonBranch.show_car
		puts "hit enter for menu"
		gets.chomp
	when 4
		puts "reg number?"
		regnum = gets.chomp
		londonBranch.car_details(regnum)
		gets
	when 9
		exit
	else
		puts "Didnt understand that, press enter to go back to the menu again"
		blah = gets.chomp
		mainmenu(londonBranch)
	end
	mainmenu(londonBranch) #turn this on for live
end

def start
	londonBranch = CarDealer.new
	mainmenu(londonBranch)
end
start
