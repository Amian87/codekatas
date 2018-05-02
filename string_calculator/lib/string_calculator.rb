class StringCalculator

  def self.add(string)
    del = string.start_with?('//') ? /,|\n|#{string[2]}/ : /,|\n/
    (string.start_with?('//') ? string[5..-1] : string).split(del).reduce(0) { |acc, e| acc += e.to_i }
  end
end
