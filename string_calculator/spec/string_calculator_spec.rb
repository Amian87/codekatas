require 'string_calculator.rb'

describe 'StringCalculator' do

  it "returns 0 when given an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "return the sum of the numbers when given string of numbers" do
    expect(StringCalculator.add("1,2,4")).to eq(7)
  end

  it "should handle newlines between numbers instead of commas" do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it "should handle different delimeters" do
    expect(StringCalculator.add("//;\n1;2\n3,4)).to eq(3)
  end


end
