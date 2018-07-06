
class Team
	attr_accessor :name, :seed
	def initialize(name, seed)
		@name = name.to_s #name must be a string
		@seed = seed.to_i #seed must be an integer
	end
end

baylor = Team.new("Baylor", 3)
purdue = Team.new("Purdue", 2)
uconn = Team.new("UConn", 1)
ukentucky = Team.new("Kentucky", 4)
utexas = Team.new("Texas", 5)
tamu = Team.new("Texas A&M", 6)
lsu = Team.new("LSU", 7)
latech = Team.new("La. Tech", 8)

all_teams = [baylor, purdue, uconn, ukentucky, utexas, tamu, lsu, latech]

def menu(all_teams)
	while true
		puts "Welcome to my Tournament Generator. Enter a selection below:"
		puts "1. Enter teams"
		puts "2. List teams"
		puts "3. List matchups"
		puts "0. Exit program"
		selection = gets.chomp.to_i
		case selection
			when 1 then do_enter(all_teams)
			when 2 then do_list(all_teams)
			when 3 then do_matchups(all_teams)
			when 0 then return
		end
	end
end

def sort_array(all_teams)
	local_all_teams = []
	all_teams.each do |team|
		local_all_teams[team.seed-1] = Team.new(team.name, team.seed)
	end
	local_all_teams
end

def do_enter(all_teams)
	while true
		puts "Type 'done' when you have completed all teams."
		print "Name: "
		name = gets.chomp
		break if name.downcase == 'done'
		print "Seed: "
		seed = gets.chomp.to_i
		all_teams.push(Team.new(name, seed))
	end
	all_teams = sort_array(all_teams)
end

def do_list(all_teams)
	sorted_array = sort_array(all_teams)
	sorted_array.each do |team|
		puts "#{team.name} - #{team.seed}"
	end 
end

def do_matchups(all_teams)
	sorted_teams = sort_array(all_teams)
	if sorted_teams.length.to_i.odd?
		puts sorted_teams.shift.name + " - Bye"
	end
	while sorted_teams.length > 0
		high_seed = sorted_teams.shift()
		low_seed = sorted_teams.pop()
		puts "#{high_seed.name} (#{high_seed.seed}) vs. #{low_seed.name} (#{low_seed.seed})"
	end
end

menu(all_teams)