
def add_questions()
	quiz = {}
	while true
		puts "Type your question below. If you are finished, press enter or type 'end' and enter."
		print "Q: "
		question = gets.chomp
		break if question == "" || question.downcase == "end"
		print "A: "
		answer = gets.chomp
		quiz[question.to_s] = answer.to_s
	end
	return quiz
end

def run_quiz(quiz)
	score = 0
	puts "\n" * 100
	puts "Alright, let's begin the quiz!"
	quiz.each do |question, answer|
		puts question
		input = gets.chomp
		if input == answer
			puts "Correct!"
			score += 1
		else
			puts "Incorrect!"
		end
	end
	puts "You scored #{score} out of a possible #{quiz.length}. That means you scored #{(score.to_f/quiz.length*100).round}%."
end

puts "Welcome to Build-A-Quiz!
First, let's assemble a quiz."
this_quiz = add_questions()
run_quiz(this_quiz)