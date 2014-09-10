class Car
	attr_accessor :make
	attr_accessor :cost
	attr_accessor :color
	attr_accessor :sold

	def initialize(make, cost, color)
	      @make=make
	      @cost=cost
	      @color=color
	end

	def sold?
		@sold == 'Y' 
	end

end

#test beamer = Car.new('bmw', '1000', 'blue')
