#Given an array of n+1 element in range 1 to n, you have to check wheather dulicates or not 

# i/p:- 4, 3, 2, 1, 4
# o/p:- yes

require 'pry'
def find_duplicates(array)

    array.each_with_index do |v, i|

        index = v.abs

        if array[index] < 0
            return index
        else
            element = array[index]
            array[index] = -element
        end

    end
end

p find_duplicates([1, 3, 2, 1, 4])

# Time complexity 
# O(n)