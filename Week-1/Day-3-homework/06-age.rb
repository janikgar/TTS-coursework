puts "How old are you?"

age = gets.chomp.to_i
age_in_days = age*365
age_in_seconds = age_in_days*24*60*60

puts "Your age in seconds is #{age_in_seconds}"

Mercury = age_in_days / 87.97
Venus = age_in_days / 224.7
Mars = age_in_days / 686.98
Jupiter = age_in_days / 4328.9
Saturn = age_in_days / 10752.9
Uranus = age_in_days / 30663.65
Neptune = age_in_days / 60148.35
Pluto = age_in_days / 90406.85

agestring = "Your age (in years) on"

puts agestring + "Mercury is #{Mercury.round(2)}"
puts agestring + "Venus is #{Venus.round(2)}"
puts agestring + "Mars is #{Mars.round(2)}"
puts agestring + "Jupiter is #{Jupiter.round(2)}"
puts agestring + "Saturn is #{Saturn.round(2)}"
puts agestring + "Uranus is #{Uranus.round(2)}"
puts agestring + "Pluto is #{Pluto.round(2)}"
