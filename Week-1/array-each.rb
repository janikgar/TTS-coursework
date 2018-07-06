animals = %w(Lion Tiger Bear Dog Cat)
puts "Which one of these is your favorite?"
puts animals.join(", ")
favorite = gets.chomp.capitalize
animals.each do |animal|
	puts animal
	if animal == favorite
		puts "I love #{favorite.downcase}s!"
	else
		puts "No, I don't care for those."
	end
end