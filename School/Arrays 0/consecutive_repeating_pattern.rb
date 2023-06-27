# 1.	Find the consecutive repeating pattern from input. 

# I/p 

#  346555578123999021344

# O/p

# [5555, 999, 44]
require 'pry'
def consecutive_number(str)
    max_consecutive = []
    temp = []
    array = str.split("")
    array.each_with_index do |val, i|
        n = i
        x = i
        s = i
        if array[n+=1] == val 
            temp << val
        elsif i != 0 && array[x-1] == val && array[s+=1] != val 
            temp << val
            max_consecutive << temp.join("").to_i
            temp.clear()
        end
    end

    max_consecutive
end

p consecutive_number("346555578123999021344")
