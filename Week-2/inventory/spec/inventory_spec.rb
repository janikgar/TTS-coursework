require '../lib/inventory'


describe 'Product' do
	before(:each) do
		@product1 = Product.new("Carrot", 10, '123', 1.50, 2.50)
	end
	it ".new should create a new Product" do
		expect(@product1.name).to eq("Carrot")
	end
end

describe 'ProductCategory' do
	before(:each) do
		@product1 = Product.new("Carrot", 10, '123', 1.50, 2.50)
		@product2 = Product.new("Celery", 20, '456', 1.00, 1.88)
		@product3 = Product.new("Kale", 30, '789', 2.00, 2.83)
		@category1 = ProductCategory.new('Produce')
	end
	after(:each) do
		$all_categories = Array.new
		@product1 = nil
		@product2 = nil
		@product3 = nil
		@category1 = nil
	end
	it ".new should be a ProductCategory" do
		expect(@category1.name).to eq('Produce')
		print @category1.name + "\n"
	end
	it "#addProduct should add an existing product and return the ProductCategory" do
		expect(@category1.addProduct(@product1).products.length).to eq(1)
		print @category1.products
		puts
	end
	it "#addProducts should add multiple products and return the ProductCategory" do
		expect(@category1.addProducts(@product1, @product2, @product3).products.length).to eq(3)
		print @category1.products
		puts
	end
	it ".all should list all ProductCategories" do
		@category1.addProducts(@product1, @product2, @product3)
		expect(ProductCategory.all).to be_an_instance_of(Array)
		print ProductCategory.all
		puts
	end
	# it ".addProduct should add a product to a category and return the category" do
	# 	expect(ProductCategory.addProduct(Product.new("Carrot", 10, '123', 1.50, 2.50))).to be_an_instance_of(ProductCategory)
	# end
end