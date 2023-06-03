# Given a Integer array A[] of n elements. Your task is to complete the function PalinArray. Which will return 1 if all the elements of the Array are palindrome otherwise it will return 0.
require 'pry'
def palin_array(array)
    array.each do |num|
        reverse_space = []
        num.to_s.split("").reverse_each do |n|
            reverse_space.push(n)
        end 

        return 0 if not reverse_space.join("") == num.to_s
    
    end
    1
end

p palin_array([123,222,33,4])