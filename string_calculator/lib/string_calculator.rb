class StringCalculator

  def self.add(string_number)

    string_number.gsub("\n", ',').split(',').reduce(0) {|sum, string_number| sum + string_number.to_i}


  end

end
