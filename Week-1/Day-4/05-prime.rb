require "Prime"

puts "Give me an integer, and I'll count prime numbers between it and 1."
num = gets.chomp.to_i
prime_count = 0

Prime.each(num) do |prime|
	prime_count += 1
end

puts "There are #{prime_count} primes between 1 and #{num}."