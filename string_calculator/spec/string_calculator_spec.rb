require 'string_calculator'

describe StringCalculator do
		it "returns an 0 when given an empty string" do
			expect(StringCalculator.add("")).to eq(0)
	end	

	context "when there is one string numbers" do
		it "returns the string number as an integer" do
			(1..10).each do |i|
				expect(StringCalculator.add("#{i}")).to eq(i)
			end
		end
	end

	context "when there are two string numbers" do
		it "sums up the string_numbers and retuns an integer" do
			expect(StringCalculator.add('1,1')).to eq(2)
			expect(StringCalculator.add('2,2')).to eq(4)
		end
	end

end