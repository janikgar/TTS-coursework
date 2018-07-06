class Weight
	def initialize
		break
	end
	def calc_weights(weight)
		new_weight -= 45
		new_weight.round(01) if new_weight % 10 != 0
		case new_weight
		when (new_weight / 2) % 45 == 0
			return_weights = (new_weight / 2)
		end
	end
end