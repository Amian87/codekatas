require 'string_calculator'

describe StringCalculator do
  describe '.add' do
    it 'should return 0 for empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'should return the sum of the numbers' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it 'should allow custom delimiters' do
      expect(StringCalculator.add('//;\n1;2;3')).to eq(6)
    end
  end
end
