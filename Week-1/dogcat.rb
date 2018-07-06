puts 'Type "dog," "cat," "cow," "lion", or "fox" below.'

while true
	animal = gets.chomp.downcase
	case animal
		when "cat"
			puts 'Meow'
			break
		when "dog"
			puts 'Ruff'
			break
		when "fox"
			puts 'Kee Kee Kee Kee Kee Kee-Kee'
			break
		when "cow"
			puts 'Moo'
			break
		when "lion"
			puts 'Roar'
			break
		else
			puts 'Huh, I didn\'t get that - try again!'
	end
end
