puts "Give me an integer."
num1 = gets.chomp.to_i
puts "Now give me a second integer."
num2 = gets.chomp.to_i
mod = num1 % num2
puts mod

if mod != 0
	puts "The remainder of these numbers is #{mod}."
else
	puts "These numbers are evenly divisible."
end