require 'string_calculator'

describe StringCalculator do

  it 'should return 0 when given an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "should add up all the string numbers" do
    expect(StringCalculator.add("1,5")).to eq(6)
  end

  it 'should support new lines' do
    expect(StringCalculator.add("1\n2,10")).to eq(13)
  end

  it 'should support custom delimiters' do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end

  it "should support unlimited delimters" do
    expect(StringCalculator.add("//[***]\n1***2***4")).to eq(7)
  end

  it "should allow multiple delimters" do
    expect(StringCalculator.add("//[*][%]\n1*2%3")).to eq(5)
  end

end
