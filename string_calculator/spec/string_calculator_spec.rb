require 'string_calculator'

describe StringCalculator do
	describe ".add" do
		it "returns an empty 0 when given an empty string" do
			expect(StringCalculator.add("")).to eq(0)
		end

		describe "when given a single string number" do
			it "returns an integer" do
				(0..10).each do |i|
					expect(StringCalculator.add("#{i}")).to eq(i)
				end
			end
		end

		describe "when there are two string numbers" do
			it "sums up the string numbers as an integer" do
				expect(StringCalculator.add("0,0")).to eql(0)
				expect(StringCalculator.add("1,1")).to eql(2)
			end
		end

	end
end