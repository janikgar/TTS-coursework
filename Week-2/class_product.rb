class Product
	attr_accessor :product_name, :sku, :quantity
	def initialize(product_name, sku, quantity)
		@product_name = product_name
		@sku = sku
		@quantity = quantity
	end
	def quantity_add(additional)
		@quantity += additional
	end
end

cornflakes = Product.new("Cornflakes", 12354987, 3)
puts "We have #{cornflakes.quantity} boxes of #{cornflakes.product_name}, and the SKU is #{cornflakes.sku}."
cornflakes.quantity_add(3)
puts "We have #{cornflakes.quantity} boxes of #{cornflakes.product_name}, and the SKU is #{cornflakes.sku}."