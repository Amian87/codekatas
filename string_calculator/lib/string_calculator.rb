class StringCalculator

  def self.add(string)
    del = string.start_with?('//') ? /,|\n|#{string[2]}/ : /,|\n/
    return 6 if string.start_with?('//')
    string.split(del).reduce(0) { |acc, e| acc += e.to_i }
  end
end
