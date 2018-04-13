require "string_calculator"

describe StringCalculator do
	describe '.add' do
		it "returns 0 when given an empty string" do
			expect(StringCalculator.add('')).to eq(0)
		end
	end 

	context 'when there is one string number' do
		it 'returns the string number as an integer' do
			(1..10).each do |i|
				expect(StringCalculator.add("#{i}")).to eq(i)
			end
		end
	end
	
end