puts "What grade do you give yourself?"
grade = gets.chomp.to_i

unless grade >= 60
	puts "Sorry, try taking the class again."
else
	puts "Great, you passed!"
end