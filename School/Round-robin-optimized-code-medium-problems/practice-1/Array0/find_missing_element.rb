#Given an array with n-1 elements having one missing element and every element is in range [1,n] find the missing element

# i/p:- 2, 1, 3, 5, 6
# o/p:- 4

# n-1 = 5(elements contains in an array i/p)
# n = 6 (it means every element in the range of 6 means upto 6 becouse 6 is the highest in an i/p array so range will be shown here)
# [1,6] => Every element in the range from smallest element 1 to 6 highest
require 'pry'
def find_missing_element(array)

    loop do
        
        swaped = false

        (array.length - 1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
        break if not swaped
    end
    return (array.first..array.last).to_a - array

end

p find_missing_element([2, 1, 3, 5, 6])