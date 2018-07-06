def my_reverse(string)
	string_array = []
	string.chars.each do |letter|
		string_array.unshift(letter)
	end
	return string_array.join
end

puts "Type a string, and I'll reverse it!"
string = gets.chomp
puts my_reverse(string)