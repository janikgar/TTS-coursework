scores = [50, 84, 100, 78, 93]

puts scores.sort

average = 0
scores.each do |score|
	average += score
end

average /= scores.length

puts "Average score: #{average}"