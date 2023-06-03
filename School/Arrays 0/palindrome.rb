# Given a Integer array A[] of n elements. Your task is to complete the function PalinArray. Which will return 1 if all the elements of the Array are palindrome otherwise it will return 0.

require 'pry'
def palin_array(array)
    
    flag = 1
    array.each do |arr|
        reverse = []
        arr.to_s.split("").each do |a|
            reverse.unshift(a)
        end
        # binding.pry

        if arr != reverse.join("").to_i
            return 0
        end
    end

    return flag
end

p palin_array([121,222,33,4])