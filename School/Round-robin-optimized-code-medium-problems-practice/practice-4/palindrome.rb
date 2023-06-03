# Given a Integer array A[] of n elements. Your task is to complete the function PalinArray. Which will return 1 if all the elements of the Array are palindrome otherwise it will return 0.

# [121,222,33,4]
require 'pry'
def reverse_string array
    reversed_array = []

    array.each do |ele|
        arr = ele.to_s.split("")
        arr.length.times { reversed_array << arr.pop }

        unless ele == reversed_array.join("").to_i
            return 0
        end

        reversed_array.clear
    end
    return 1
end

p reverse_string [121,222,33,44]

