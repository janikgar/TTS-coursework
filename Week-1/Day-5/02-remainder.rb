def div_with_mod(numerator, denominator)
	if numerator.to_i == 0 || denominator.to_i == 0
		puts "ERROR: No zeroes please!"
		return
	end
	unless numerator.to_i == numerator.to_f && denominator.to_i == denominator.to_f
		puts "ERROR: Only integers please!"
		return
	end
	result = numerator.to_i / denominator.to_i
	mod = numerator.to_i % denominator.to_i
	unless mod == 0
		puts "#{result}, remainder #{mod}."
	else
		puts "#{result}, no remainder."
	end
end

puts "Give me two integers, and I'll divide with remainder."
print "Numerator: "
num1 = gets.chomp
print "Denominator: "
num2 = gets.chomp

puts div_with_mod(num1, num2)