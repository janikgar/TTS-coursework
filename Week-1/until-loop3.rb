answer = ""
until answer.downcase == "yes" || answer.downcase == "y" || answer.downcase =="sure" || answer.downcase == "yeah"
	puts "Can I go to Itchy and Scratchy Land?"
	answer = gets.chomp
end
puts "Yay!"