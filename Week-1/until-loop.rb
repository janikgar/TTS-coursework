puts "Give me a number between 1 and 10"
num = gets.chomp.to_i
until num > 10
	puts num * 2
	num += 1
end