class Calculator
	attr_accessor :num1, :num2
	def initialize(num1, num2)
		@num1 = num1
		@num2 = num2
	end
	def add
		@num1 + @num2
	end
	def diff
		(@num1 - @num2).abs
	end
	def prod
		@num1 * @num2
	end
	def div
		@num1.to_f / @num2
	end
	def mystery(calc2)
		(self.prod) + (calc2.times_two)
	end
	def times_two
		(@num1 * @num2) * 2
	end
end