require 'string_calculator'

describe StringCalculator do
	describe ".add" do 
		
		it "returns an empty 0 when given an empty string" do
			expect(StringCalculator.add("")).to eq(0)
		end

		context "when there is one string number" do
			it "returns the string number as an integer" do
				(1..10).each do |i|
				expect(StringCalculator.add("#{i}")).to eq(i)
				end
			end
		end

		context "when there are two string numbers" do
			it "returns the sum of the string numbers as an integer" do
				expect(StringCalculator.add('1,1')).to eq(2)
				expect(StringCalculator.add('0,0')).to eq(0)
			end
		end


	end
end