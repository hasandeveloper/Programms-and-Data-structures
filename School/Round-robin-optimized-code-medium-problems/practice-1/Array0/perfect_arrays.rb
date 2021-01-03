# Given an array of size N and you have to tell whether the array is perfect or not. An array is said to be perfect if it's reverse array matches the original array. If the array is perfect then print "PERFECT" else print "NOT PERFECT".

#i/p:- [1,2,3]
#i/p:- Not perfect

def perfect_array(arrays)
    original_array = Array.new(arrays)
    reverse_array = []
    arrays.reverse_each do |ele|
        reverse_array.push(ele)
    end

    return original_array == reverse_array ? "Perfect" : "Not Perfect"
    
end

p perfect_array([1,2,3])