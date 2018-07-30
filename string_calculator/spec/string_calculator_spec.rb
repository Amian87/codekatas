require 'string_calculator'

describe StringCalculator do

  it 'returns 0 when given an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it 'sum the numbers' do
    expect(StringCalculator.add("1,2,3")).to eq(6)
  end

  it 'should handle newlines' do
    expect(StringCalculator.add("1\n,2,3,5")).to eq(11)
  end





end
