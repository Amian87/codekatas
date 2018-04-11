class StringCalculator
	def self.converter(str)
		d = str.start_with?('//')
		delimiter = str[2] if d
		delimiter ||= /[,\n]/
		numbers = str.split(delimiter)
		negatives = numbers.select { |num| num.to_i < 0 }
		raise "negatives not allowed: #{negatives.join(',')}" unless negatives.empty?
		numbers.reduce(0) { |acc, num|  
			acc += num.to_i 
		}
	end
end