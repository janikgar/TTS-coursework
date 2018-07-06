choices = %w(rock scissors paper) # initialize choices
puts "Let's play Ro-Cham-Beau!"
score = {user: 0, computer: 0} # count of wins
until score[:user] == 5 || score[:computer] == 5 do 
	puts "Enter 'Rock,' 'Paper,' or 'Scissors.'"
	entry = gets.chomp.downcase # user entry
	# entry = choices[rand(0..2)] # in case you want the computer to play itself! :-)
	computer = choices[rand(0..2)]
	puts computer.capitalize
	unless entry == computer
		case entry
		when 'rock'
			if computer == 'scissors'
				score[:user]+= 1
			else
				score[:computer]+= 1
			end
		when 'scissors'
			if computer == 'paper'
				score[:user]+= 1
			else
				score[:computer]+= 1
			end
		when 'paper'
			if computer == 'rock'
				score[:user]+= 1
			else
				score[:computer]+= 1
			end
		end
	else
		puts "Tie!"
	end
	puts "The score is me: #{score[:computer]} and you: #{score[:user]}."
end