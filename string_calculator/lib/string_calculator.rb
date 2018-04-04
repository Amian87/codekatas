class StringCalculator 
	def self.calculate_string(num)
		num.split(',').map(&:to_i).sum
	end
end	