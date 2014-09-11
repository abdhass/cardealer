#coding: utf-8
require_relative 'car'

def mainmenu(londonBranch)
	main_menu = "        ▁ ▂ ▄ ▅ ▆ ▇ █ MÄÏŅ MËŅŮ █ ▇ ▆ ▅ ▄ ▂ ▁

	ıllıllı 1. ÄĐĐ Ä ŅËŴ ĊÄŖ ıllıllı
	ıllıllı 2. ÄĐĐ ŅËŴ ĊŮŚȚÖMËŖ ıllıllı
	ıllıllı 3. ĊÄŖŚ ₣ÖŖ ŚÄĻË ıllıllı
	ıllıllı 4. VÏËŴ ĊÄŖ ĐËȚÄÏĻŚ ıllıllı

	ıllıllı 5. Buy ĊÄŖ  ıllıllı

(¯`·.¸.·´¯`·.¸.-> 9. ËXÏȚ PŖÖĠŖÄM <-.¸.·´¯`·.¸.·´¯)"

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
