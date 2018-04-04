require "string_calculator"

describe StringCalculator do
	describe '.calculate_string' do
		it 'should return 1 when given the string 1' do
			expect(StringCalculator.calculate_string('1')).to eq(1)
		end

 		it 'should return 2 when given the string 2' do
 			expect(StringCalculator.calculate_string('2')).to eq(2)
 		end

 		it 'should return 2 when given the string 1,1' do
 			expect(StringCalculator.calculate_string('1,1')).to eq(2)
 		end

	end
end