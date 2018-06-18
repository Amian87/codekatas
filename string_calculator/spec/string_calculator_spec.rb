require "string_calculator.rb"


describe StringCalculator do

  it "returns 0 when given an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "should return the sum of the numbers" do
    expect(StringCalculator.add("1,2")).to eq(3)
  end

  it "should handle new lines" do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it "should handle all delimiters" do
    expect(StringCalculator.add('//;\n1;2')).to eq(3)

  end


end
