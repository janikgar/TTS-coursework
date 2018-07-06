puts "Give me a name, and I'll spell it for you"
print "Name: "
spell_name = gets.chomp
name_array = []

spell_name.each_char do |letter|
	puts letter.upcase
	name_array.push(letter.upcase)
end

puts name_array.join(", ")