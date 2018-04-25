require 'string_calculator'

describe StringCalculator do
	describe "add" do
		it "should return 0 when given an empty string" do
			expect(StringCalculator.add('')).to eq(0)
		end

    it "should return 3 when given 1,2" do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it "should handle new lines" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "should handle different delimiters" do
      expect(StringCalculator.add("//&\n1&2")).to eq(3)
    end

    it "shoud throw an exception when given a negative number" do
      expect {StringCalculator.add("-1, 1")}.to raise_error(RuntimeError)
    end

	end
end
