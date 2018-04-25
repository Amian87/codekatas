class StringCalculator
	def self.add(string_number)
    delimiter = "[,|\n"
    delimiter += string_number.start_with?('//') ? "|#{string_number[2]}]" : "]"
    negatives = []
    result = string_number.split(/#{delimiter}/).reduce(0) do |acc, num|
      negatives << num if num.to_i < 0
      num.to_i + acc
    end

    raise "Negatives not allowed: #{negatives.join(',')}" unless negatives.empty?
    result
	end
end
