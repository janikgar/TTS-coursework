cos_n_caps = {"USA" => "Washington, DC", "Canada" => "Ottawa",  "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}

score = 0

cos_n_caps.each do |key,value|
	puts "What is the capital of #{key}?"
	answer = gets.chomp
	if answer.downcase == value.downcase
		puts "Correct!"
		score += 1
	else
		puts "Incorrect. The answer is #{value}."
	end
end

percent = score.to_f / cos_n_caps.length * 100

puts "You scored #{score} out of a possible #{cos_n_caps.length}. That's a #{percent.to_i}%."

case percent
when 100
	puts "Fantastic! That's perfect!"
when 80..100
	puts "Pretty good!"
when 60..80
	puts "Okay job."
when 40..60
	puts "You need some work."
when 20..40
	puts "Oh my... have you seen a globe?"
when 0..20
	puts "Are - are you OK?"
end