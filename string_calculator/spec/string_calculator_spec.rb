require "string_calculator"

describe StringCalculator do 
	describe ".add" do
	 it "should return 0 when given an empty string" do
	 	expect(StringCalculator.add("")).to eq(0)
	 end
	end
end