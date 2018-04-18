
class StringCalculator
	def self.add(string_number)
		string_number.split(',').reduce(0) {|acc, num| acc + string_number.to_i }
	end
end