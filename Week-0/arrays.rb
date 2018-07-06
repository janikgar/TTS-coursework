languages = 'Urdu', 'Spanish', 'English'
puts languages
puts ''
languages = languages.sort
languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end