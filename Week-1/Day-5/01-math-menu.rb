def add(num1, num2)
	num1 + num2
end

def sub(num1, num2)
	num1 - num2
end

def mul(num1, num2)
	num1 * num2
end

def div(num1, num2)
	num1 / num2
end

puts "Give me two numbers, then choose an operation for them."
print "First number: "
num1 = gets.chomp.to_f
print "Second number: "
num2 = gets.chomp.to_f

puts "Now type the number of which operation you want to carry out.
1. Add
2. Subtract
3. Multiply
4. Divide"

operand = gets.chomp.to_i

case operand
	when 1 then puts add(num1, num2)
	when 2 then puts sub(num1, num2)
	when 3 then puts mul(num1, num2)
	when 4 then puts div(num1, num2)
	else
		puts "Please select 1 through 4"
end