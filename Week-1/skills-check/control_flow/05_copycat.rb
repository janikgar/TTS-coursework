puts "Hello."
while true
	reply = gets.chomp
	if reply.downcase == "i'm a dummy"
		puts "Bye"
		break
	else
		puts reply
	end
end