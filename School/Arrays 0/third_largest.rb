# Given an array of distinct elements. Find the third largest element in it. 

# Your Task:
# Complete the function thirdLargest() which takes the array a[] and the size of the array, n, as input parameters and returns the third largest element in the array. It return -1 if there are less than 3 elements in the given array.

require 'pry'
def third_largest(array)

    return -1 if array.length < 3

    loop do 

        flag = false
        (array.length-1).times do |i|
                if array[i] > array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                    flag = true
                end
        end
        break if not flag
    end

    return array.length-2
end

p third_largest([2,4])