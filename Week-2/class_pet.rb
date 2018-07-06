class Pet
	attr_accessor :animal_type,:pet_name,:sound
	def initialize(animal_type, pet_name)
		@animal_type = animal_type
		@pet_name = pet_name
	end
end

my_pet = Pet.new("Cat", "Mippy")
my_pet.sound = "Meow!"
puts "My #{my_pet.animal_type}'s name is #{my_pet.pet_name}. #{my_pet.pet_name} says '#{my_pet.sound}'."