require 'string_calculator'

describe StringCalculator do

  it 'should return 0 when given an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it 'should add up all the string numbers' do
    expect(StringCalculator.add("2,5")).to eq(7)
  end

  it 'should handle new lines' do
    expect(StringCalculator.add("5\n,10")).to eq(15)
  end

  it 'should support different delimeters' do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end

  it 'should handle delimiters can be of any length' do
    expect(StringCalculator.add("//[***]\n1***2***3")).to eq(6)
  end


end
