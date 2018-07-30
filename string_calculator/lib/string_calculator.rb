class StringCalculator

  def self.add(string_number)

    # num = string_number.split(',')

    # summed = num[0].to_i + num[1].to_i + num[2].to_i

    string_number.split(',').reduce(0) {|acc, string_number| acc + string_number.to_i}
  end

end
