# 1.	one array containing all keys
# 2.	another containing all values
# 3.	the sum of all the values

x = [{"a" => 10},{"b" => 20},{"c" => 30}]

sum = 0
x.each { |ele| sum += ele.values[0] }
p sum