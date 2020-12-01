# Given an array and size of array , find/print the largest element in the array. such that smallest should come first and then lagest (diff is max)

# i/p:- 2,4,11,5,8,1,9
# o/p:- 2, 11

# i/p:- 1,2,3,4,5
# o/p:- "(1, 5)"

# i/p:- 5,2,3,2,1
# o/p:- "0"

require 'pry'
def max_diff(array)
    first_element = array.shift

    array.each_with_index do |v, i|
        if  array[i+1]!= nil
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
    end

    max_element = array.last

    if first_element > max_element
        return "0"
    else
        a = "(#{first_element}, #{max_element})"
        return a
    end

end

p max_diff([5,2,3,2,1])

# Time complexity
# O(n)