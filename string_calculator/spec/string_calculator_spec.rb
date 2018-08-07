require 'string_calculator'

describe StringCalculator do

  it "should return 0 when given an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "should add up the string numbers" do
    expect(StringCalculator.add("1,3")).to eq(4)
  end

  it "should support new lines" do
    expect(StringCalculator.add("1\n,5")).to eq(6)
  end

  it "support delimeters" do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end

  it "should delimeters of any length" do
    expect(StringCalculator.add("//[***]\n1***2***4")).to eq(7)
  end

  it "should support mulitple delimeters" do
    expect(StringCalculator.add("//[*][%]\n1*2%5")).to eq(8)
  end



end
