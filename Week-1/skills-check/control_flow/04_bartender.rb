puts "Hello, there! What can I get you from the bar?"
drink = gets.chomp
puts "Sure thing. How old are you?"
age = gets.chomp.to_i
age < 21 ? puts("Sorry, come back in #{21-age} years.") : puts("Thanks, here you go!")