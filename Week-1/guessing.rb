while true
	puts "Type a number between 1 and 100 (inclusive)."
	num = gets.chomp.to_i
	if num == 75
		puts "Wow, that's what I got!"
		break
	elsif num-75 <= 5 && num-75 >= -5
		puts "Getting close!"
	else
		puts "That's not it."
	end
end