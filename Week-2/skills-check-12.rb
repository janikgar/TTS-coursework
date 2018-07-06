num = nil
num_array = Array.new()
until num == 3 do
	num = rand(1..10)
	num_array.push(num)
	puts num
end
nums_under_six = 0
num_array.each do |current_num|
	if current_num < 6
		nums_under_six += 1
	end
end
puts "There are #{nums_under_six} numbers under 6."