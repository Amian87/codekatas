require 'string_calculator'

describe StringCalculator do
	describe '.add' do
		it "should return 0 when give given empty string" do
			expect(StringCalculator.add("")).to eq(0)
		end

		describe "when there is one string number" do
			it "should return the string number as an integer" do 
				(1..10).each do |i|
					expect(StringCalculator.add("#{i}")).to eq(i)
				end
			end
		end

		describe "when there are two string numbers" do
			it "returns the sum of the string numbers as an integer" do
				expect(StringCalculator.add('0,0')).to eq(0)
				expect(StringCalculator.add('0,1')).to eq(1)
			end
		end

	end
end