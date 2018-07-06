class Vehicle
	attr_accessor :make, :model, :trimline, :year, :color
	def initialize(make, model, trimline, year)
		@make = make
		@model = model
		@trimline = trimline
		@year = year
	end
	def add_year
		@year += 1
	end
end

mycar = Vehicle.new("Mazda", "CX-5", "Touring", 2016)
mycar.color = "red"
mycar.add_year
puts "My car is a #{mycar.year} #{mycar.make} #{mycar.model} #{mycar.trimline}."