class Vehicle
	def initialize(color,type)
		@color = color
		@type = type # car, truck, motorcycle, scooter, van
	end
	def honk
		puts "Beep!"
	end
end

my_vehicle = Vehicle.new('blue', 'car')
puts my_vehicle.inspect
my_vehicle.honk