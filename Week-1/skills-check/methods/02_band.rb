def my_favorite_band(band)
	puts "Your favorite band is #{band}."
end

puts "What's your favorite band?"
band = gets.chomp
my_favorite_band(band)