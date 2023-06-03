#Given an array of n+1 element in range 1 to n, you have to check wheather duplicates or not 

# i/p:- 4, 3, 2, 1, 4
# o/p:- yes
require 'pry'
def negate(arrays)

    arrays.each_with_index do |v, i|
        index = v.abs
        if arrays[index] < 0
            return v.abs
        else
            ele = arrays[index]
            arrays[index] = -ele
        end
    end

end

p negate([4, 3, 2, 1, 4])