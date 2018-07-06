puts "What is the score?"

score = gets.chomp.to_i
text = "Your grade is a"

if score <= 100 && score > 90
	puts text + "n A."
elsif score < 90 && score >= 80
	puts text + " B."
elsif score < 80 && score >= 70
	puts text + " C."
elsif score < 70 && score >= 60
	puts text + " D."
elsif score < 60
	puts text + "n F."
else
	puts "Wrong score"
end