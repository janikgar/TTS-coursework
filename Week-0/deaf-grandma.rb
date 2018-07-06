puts 'HI THERE, DEAR! HOW ARE YOU?'
while true
	input = gets.chomp
	if input.upcase == 'BYE'
		puts 'REMEMBER TO KEEP YOUR EARS CLEAN!'
		break
	elsif input == input.upcase
		year = 1938 + rand(12)
		puts 'NO, NOT SINCE ' + year.to_s + '!'
	else
		puts 'HUH!? SPEAK UP, KIDDO!'
	end
end