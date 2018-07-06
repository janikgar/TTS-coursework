puts "How much was your meal?"

cost = gets.chomp.to_f

cost *= 1.18

puts "$#{cost.round(2)}"