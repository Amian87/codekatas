class StringCalc
  def add(num)
    d = num.start_with?("//") ? /,|\n|#{num[2]}/ : /,|\n/
    num.split(d).reduce(0) { |acc,num|
      raise "cannot pass negative values" if num.to_i < 0
      num.to_i > 1000 ? acc : num.to_i + acc

    }
  end
end

subject = StringCalc.new

if (subject.add("5") != 5)
  raise "Error"
end

if (subject.add("5, 5") != 10)
  raise "Error"
end

if (subject.add("") != 0)
  raise "Error"
end

if (subject.add("1\n5, 5") != 11)
  raise "Error"
end

if (subject.add("1,\n") != 1)
  raise "Error"
end


if (subject.add("//;\n1;2") != 3)
  raise "Error"
end

begin
  subject.add("//;\n-1;2")
  raise "Error"
rescue
end

if (subject.add("1001,1") != 1)
  raise "Error"
end
