name = []
while name.last != "Jacob"
	puts "Please enter your name here and then pass it on!"
	name.push(gets.chomp)
	puts name.join(", ")
end