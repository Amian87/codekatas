class StringCalculator

  def self.add(string)
    string.split(/,|\n/).reduce(0) { |acc, e| acc += e.to_i }
  end
end
