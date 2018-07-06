def say_moo number_of_moos
	puts 'moo'*number_of_moos.to_i
	'yellow submarine'
end
x = say_moo 3
puts x.capitalize + ', dude...'
puts x + '.'