puts "Give me a number between 1 and 10"
num = gets.chomp.to_i
until num == 0
	num -= 1
	puts num
end