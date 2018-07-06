puts "What is your favorite color?"
color = gets.chomp.downcase
if color == "blue" || color == "green"
	puts "Great choice - #{color}'s my favorite color!"
else
	puts "Really? #{color.capitalize} is not my favorite color."
end