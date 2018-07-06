info = {name: "", age: "", hometown: "", "favorite food" => ""}
info.each do |key, value|
	puts "What is your #{key}?"
	info[key] = gets.chomp
end
info.each do |key, value|
	case key
	when :name
		puts "This is #{value}."
	when :age
		puts "They are #{value} years old, "
	when :hometown
		puts "from #{value},"
	when "favorite food"
		puts "and their favorite food is #{value}."
	end
end