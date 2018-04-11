require "string_calculator"


describe StringCalculator do 
	describe ".converter" do
		it "should return 0 when given 0" do
			expect(StringCalculator.converter('0')).to eq(0)
		end

		it "should return 2 when given 1,1" do
			num1 = Random.rand(10)
			num2 = Random.rand(10)
			expect(StringCalculator.converter("#{num1},#{num2}")).to eq(num1 + num2)
		end

		it "should use newline delimeter" do 
			expect(StringCalculator.converter("1\n2")).to eq(3)
		end

		it "should allow for custom delimiters" do
			expect(StringCalculator.converter("//;\n1;2;3")).to eq(6)
		end

		it 'should raise for negative numbers' do
			expect{StringCalculator.converter("-1,0")}.to raise_error('negatives not allowed: -1')
		end

		it 'should raise for negative numbers' do
			expect{StringCalculator.converter("-1,-1")}.to raise_error('negatives not allowed: -1,-1')
		end
	end
end