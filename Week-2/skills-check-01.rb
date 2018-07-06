def reply(input)
	puts "Hello, #{input}. Nice to meet you."
end

print "Type your name here: "
input = gets.chomp
reply(input)