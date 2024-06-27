# Find the consecutive repeating number from input
# I/p 346555578123999021344

# O/p[5555, 999, 44]

a = "346555578123999021344"
require 'pry'
def consecutive_number(str)
    numbers = str.split("")
    consecutive_number = []
    a = ""
    numbers.each_with_index do |v,i|
        if v.to_i == numbers[i+1].to_i || v.to_i == numbers[i - 1].to_i
            a += v 
        end
        if  v != numbers[i+1] && v == numbers[i - 1] 
            consecutive_number << a.to_i
            a = ""
        end
    end
    consecutive_number
end

p consecutive_number(a)

