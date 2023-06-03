# Given an array of size N and you have to tell whether the array is perfect or not. An array is said to be perfect if it's reverse array matches the original array. If the array is perfect then print "PERFECT" else print "NOT PERFECT".

require 'pry'
def perfect_arrays(array)
    reverse = []

    array.each do |ar|
        reverse.unshift(ar)
    end
    
    if array == reverse
        return "PERFECT"
    else
        return "NOT PERFECT"
    end

end

p perfect_arrays([1,2,1])
