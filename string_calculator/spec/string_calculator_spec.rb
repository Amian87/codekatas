require "string_calculator"

describe StringCalculator do

	it "should return 1 when given an empty string" do
		expect(StringCalculator.converter("")).to eql(0)
	end

	it "should return 1 when given the string 1" do
		expect(StringCalculator.converter(1)). to eql(1)
	end

	it "should return 2 when given the 1,1" do
		expect(StringCalculator.converter('1,1').to eql(2))
	end

end