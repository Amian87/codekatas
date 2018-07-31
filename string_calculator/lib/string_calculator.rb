class StringCalculator

  def self.add(string_number)
    string_number.split(',').reduce(0) {|acc, string_number| acc + string_number.to_i}
  end

end
