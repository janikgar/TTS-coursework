puts "Welcome to Mad Libs! Please type one each of these types of words below."

puts "- Past-tense verb"
verb = gets.chomp

puts "- Number"
number = gets.chomp

puts "- Plural noun"
plural_noun = gets.chomp

puts "- Adjective"
adjective = gets.chomp

puts "- Preposition"
preposition = gets.chomp

puts "- Geographical Feature"
geographical_feature = gets.chomp

puts "- Object"
object = gets.chomp

if object[0] == 'a' || object[0] == 'e' || object[0] == 'i' || object[0] == 'o' || object[0] == 'u'
	a_or_an = 'an'
else
	a_or_an = 'a'
end

puts "Yesterday in my programming class, my teacher #{verb}
 #{number} #{plural_noun}. They were so #{adjective}
that we didn't know what to do #{preposition} them.

One student said, \"We should bring them to #{geographical_feature}!\"
Another one said that we could put #{a_or_an} #{object}
on them. \"Why would we do that?\" one asked. \"I don't know,\"
said another, \"Maybe you should ask your mama!\""