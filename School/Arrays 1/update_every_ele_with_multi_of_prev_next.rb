# 7. Given an array of integers, update every element with multiplication of previous and next elements
# with following exceptions.
# a) First element is replaced by multiplication of first and second.
# b) Last element is replaced by multiplication of last and second last.
# Example:
# Input: arr[] = {2, 3, 4, 5, 6}
# Output: arr[] = {6, 8, 15, 24, 30}

# We get the above output using following
#  arr[] = {2*3, 2*4, 3*5, 4*6, 5*6}
require 'pry'
def multiply(array)

    temp = []
    array.each_with_index do |v, i|
        if i == 0
            temp.push(v*array[i+1])
        elsif i == array.length-1
            temp.push(v*array[-2])
        else
            temp.push(array[i-1] * array[i+1])
        end
    end

end

p multiply([2, 3, 4, 5, 6])