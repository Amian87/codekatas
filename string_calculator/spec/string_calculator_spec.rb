require 'string_calculator'

describe StringCalculator do

  it 'should return 0 when given an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it 'should add up the string numbers' do
    expect(StringCalculator.add("3,4,10")).to eq(17)
  end

  it 'should handle new lines' do
    expect(StringCalculator.add("3\n,5")).to eq(8)
  end

  it 'should handle delimeters' do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end

end
