$all_categories = Array.new
$all_products = Array.new

class Product
	attr_accessor :name, :quantity, :serial_number, :cost, :sell_price
	# name as String, quantity as Int, serial_number as String, cost as Float (.2f), sell_price as Float (.2f)
	def initialize(name, quantity, serial_number, cost, sell_price)
		@name = name
		@quantity = quantity
		@serial_number = serial_number
		@cost = cost
		@sell_price = sell_price
		$all_products.push(self)
		# puts self, @name, @quantity, @serial_number, "$#{'%.2f' % @cost}", "$#{'%.2f' % @sell_price}"
	end
	def self.all
		$all_products
	end
end

class ProductCategory
	attr_accessor :name, :products #name is a String, products an Array of Products (which may be empty)
	def initialize(name, products = Array.new)
		@name = name
		@products = products
		$all_categories.push(self)
		# puts self, self.name, self.products
	end
	def addProduct(product)
		@products.push(product)
		self
	end
	def addProducts(*products)
		if products.length == 1
			self.addProduct(products)
		else
			products.each do |product|
				self.addProduct(product)
			end
		end
		self
	end
	def self.all
		$all_categories.each do |category|
			# puts category.name
		end
		$all_categories
	end
end

def get_input(type)
	if type == "category"
		categories = ProductCategory.all
		categories.each_with_index do |category, index|
			puts "#{index+1}. #{category.name}"
		end
		puts "N. Add new category"
	elsif type == "product"
		$all_products.each_with_index do |product, index|
			puts "#{index+1}. #{product.name}"
		end
		puts "N. Add new product"
	end
	puts "0. GO BACK"
	print "Selection: "
	input = gets.chomp
	if input.downcase == "n"
		if type == "category"
			menu_add_new_category
		elsif type == "product"
			menu_add_new_product
		end
	elsif /\d/.match(input) == nil
		puts "Invalid selection, try again!" 
	end
	return input.to_i
end

def menu_add_new_category
	puts "Add new Category"
	print "New Category name: "
	input = gets.chomp.capitalize
	ProductCategory.new(input)
end

def menu_add_new_product
	puts "Add new Product"
	print "New Product name: "
	name = gets.chomp.capitalize
	print "New Product quantity: "
	quantity = gets.chomp.to_i
	print "New Product serial number: "
	serial_number = gets.chomp
	print "New Product cost: $"
	cost = gets.chomp.to_f
	print "New Product sell price: $"
	sell_price = gets.chomp.to_f
	new_product = Product.new(name, quantity, serial_number, cost, sell_price)
	puts "Which category should I assign it to?"
	input2 = get_input("category")
	current_category = $all_categories[input2.to_i - 1]
	puts "Change to category #{current_category.name}? Answer Y or N."
	input3 = gets.chomp
	if input3.downcase == 'y'
		current_category.addProduct(new_product)
	end
end

def menu_view_category
	clear
	puts "Select a category to view:"
	categories = ProductCategory.all
	while true
		input = get_input("category")
		break if input.to_i == 0
		current_class = categories[input.to_i-1]
		puts current_class.name
		current_class.products.each_with_index do |product, index|
			puts "-- #{index+1}. #{product.name}"
		end
	end
end

def menu_view_product
	clear
	all_products = Product.all
	while true
		puts "Select product to view:"
		input = get_input("product")
		break if input.to_i == 0
		current_product = all_products[input.to_i-1]
		puts "Product: #{current_product.name}"
		puts "Quantity: #{current_product.quantity}"
		puts "Serial Number: #{current_product.serial_number}"
		puts "Cost: $#{'%.2f' % current_product.cost}"
		puts "Sell Price: $#{'%.2f' % current_product.sell_price}"
	end
end

def menu_change_quantity
	clear
	while true
		puts "Select product to change quantity:"
		input = get_input("product")
		break if input.to_i == 0
		current_product = $all_products[input.to_i-1]
		puts "Product: #{current_product.name}"
		puts "Current Quantity: #{current_product.quantity}"
		print "Enter the number to add to quantity (or use a negative number to reduce the quantity): "
		quantity_change = gets.chomp
		new_quantity = current_product.quantity + quantity_change.to_i
		puts "Changing quantity from #{current_product.quantity} to #{new_quantity}. Is this OK? Type Y or N."
		confirm_change = gets.chomp
		if confirm_change.downcase == "y"
			current_product.quantity += quantity_change.to_i
		end
	end
end

def menu_add_product_to_category
	clear
	puts "Select a product to add to a category."
	while true
		input = get_input("product")
		break if input.to_i == 0
		current_product = $all_products[input.to_i - 1]
		puts "Selected: #{current_product.name}"
		break
	end
	while true
		puts "Which category should I assign it to?"
		input2 = get_input("category")
		break if input2.to_i == 0
		current_category = $all_categories[input2.to_i - 1]
		puts "Change to category #{current_category.name}? Answer Y or N."
		input3 = gets.chomp
		if input3.downcase == 'y'
			current_category.addProduct(current_product)
		end
		break
	end
end

def clear
	puts "\e[H\e[2J"
end

product1 = Product.new("Carrot", 10, '123', 1.50, 2.50)
product2 = Product.new("Celery", 20, '456', 1.00, 1.88)
product3 = Product.new("Kale", 30, '789', 2.00, 2.83)
product4 = Product.new("Okra", 40, '789', 2.00, 2.83)
product5 = Product.new("Cucumbers", 30, '789', 2.00, 2.83)
category1 = ProductCategory.new('Produce')
category2 = ProductCategory.new('Junk Food')
category1.addProducts(product1, product2, product3)

def menu
	clear
	while true
		puts "Store Inventory System alpha"
		puts "Select a job below:"
		puts "0. EXIT"
		puts "1. View categories."
		puts "2. View products."
		puts "3. Change product quantity."
		puts "4. Add product to category."
		print "Selection: "
		input = gets.chomp
		if /\d/.match(input) == nil
			puts "Invalid selection, try again!" 
		end
		case input.to_i
		when 0 then break
		when 1 then menu_view_category
		when 2 then menu_view_product
		when 3 then menu_change_quantity
		when 4 then menu_add_product_to_category
		end
	end
end

menu

# menu_view_category
# menu_view_product
# menu_change_quantity
# menu_add_product_to_category