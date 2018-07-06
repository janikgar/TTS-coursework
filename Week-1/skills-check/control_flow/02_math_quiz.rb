puts "Can you answer these math questions?"
while true 
	print "1. 2 + 3 = "
	answer1 = gets.chomp.to_i
	if answer1 == 5
		puts "Correct!"
		break
	else
		puts "Incorrect, try again!"
	end
end
while true 
	print "2. 5 x 3 = "
	answer2 = gets.chomp.to_i
	if answer2 == 15
		puts "Correct!"
		break
	else
		puts "Incorrect, try again!"
	end
end