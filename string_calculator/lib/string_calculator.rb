class StringCalculator

  def self.add(string)
    del = string.start_with?('//') ? /,|\n|#{string[2]}/ : /,|\n/

    negative = []

    sum = (string.start_with?('//') ? string[5..-1] : string).split(del).
    reduce(0) do |acc, e|
      negative << e if e.to_i < 0
      acc += e.to_i
    end

    raise "Negatives not allowed: #{negative.join(',')}" unless negative.empty?
    sum
  end
end
