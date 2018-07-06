puts "Please give me a sentence."
sentence = gets.chomp
puts "What's your favorite word in that sentence?"
word = gets.chomp

ind = sentence.index(word)

unless ind == nil
	puts "Your word occurs in position #{ind+1} in that sentence."
else
	puts "Hmm, I couldn't find that word!"
end	
