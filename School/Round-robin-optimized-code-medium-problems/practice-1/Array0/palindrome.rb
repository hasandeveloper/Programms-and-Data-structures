# Given a Integer array A[] of n elements. Your task is to complete the function PalinArray. Which will return 1 if all the elements of the Array are palindrome otherwise it will return 0.

# I/P:- [121,222,33,4]
# O/P:- 1
require 'pry'
def palin_array(array)

    array.each do |a|
        temp = a.to_s
        space = []
        temp.split("").reverse_each do |ar|
            space.push(ar)
        end

        # return 0 if not palin array
        return 0 if not space.join("").to_i == a

    end
    return 1
end

p palin_array([121,222,33,4])