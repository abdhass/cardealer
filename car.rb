class Car
	attr_accessor :make
	attr_accessor :cost
	attr_accessor :color
	attr_accessor :sold
	attr_accessor :reg
	@@count = 0
	@@instances = []

	def initialize(reg, make, cost, color)
	      @make=make
	      @cost=cost
	      @color=color
	      @reg = reg
	      @@count += 1
	      @@instances << self
	end

	def sold?
		@sold == 'Y' 
	end

	def self.all
		puts @@instances.empty? ? "No cars" : @@instances.inspect
	end
	def self.count
		@@count
	end
	def self.instances
		return @@instances
	end

end

#beamer = Car.new('12377', 'bmw', '1000', 'blue')
