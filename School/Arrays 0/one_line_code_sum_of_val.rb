x = [{"a" => 10},{"b" => 20},{"c" => 30}]
sum = 0
x.each { |obj| sum+= obj.values[0]}
p sum