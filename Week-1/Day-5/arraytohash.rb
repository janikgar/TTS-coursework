def array_to_hash(array)
	new_hash = {}
	array.each_with_index do |item, index|
		new_hash[index.to_s] = item
	end
	return new_hash
end

my_array = ["dogs", "cats", "mice", "keyboards"]
puts array_to_hash(my_array)