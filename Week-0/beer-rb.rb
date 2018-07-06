num = 99
while num > 0
	puts num.to_s+ ' bottles of beer on the wall, '+num.to_s+' bottles of beer!'
	puts 'Take one down, pass it around, '
	num = num - 1
	if num > 0
		puts num.to_s+' bottles of beer!'
	else
		puts 'No more bottles of beer!'
	end
end