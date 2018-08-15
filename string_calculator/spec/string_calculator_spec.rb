require 'string_calculator'

describe StringCalculator do

  it "should return 0 when given an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "should add up the string numbers" do
    expect(StringCalculator.add("1,5")).to eq(6)
  end

  it "should handle new lines " do
    expect(StringCalculator.add("1\n2,6")).to eq(9)
  end

  it "should support delimeters" do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end

  it "should support delimeters of any length" do
    expect(StringCalculator.add("//[***]\n1***5***3")).to eq(9)
  end

  it "should allow multiple delimeters" do
    expect(StringCalculator.add("//[*][%]\n1*2%10")).to eq(13)
  end

end
