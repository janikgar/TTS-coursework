puts "How many pounds?"

def convert_ppk(pounds)
	pounds / 2.2
end

kilo = convert_ppk(gets.chomp.to_f)
puts "#{kilo.round(2)} kilograms."