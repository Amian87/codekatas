require 'string_calculator'

describe StringCalculator do

  it "should return an 0 when given an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "should add up all the string numbers" do
    expect(StringCalculator.add("1,5")).to eq(6)
  end

  it "should hand newlines" do
    expect(StringCalculator.add("5,\n5")).to eq(10)
  end

  it "should handle delimeters" do
    expect(StringCalculator.add(“//;\n1;2”)).to eq(3)
  end

end
