class StringCalculator

 def self.add(num)

  num.split(/[,\n;]/).reduce(0) {|acc, num| acc + num.to_i}

 end


end
