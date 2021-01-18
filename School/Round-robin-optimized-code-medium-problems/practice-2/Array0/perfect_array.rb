# Given an array of size N and you have to tell whether the array is perfect or not. An array is said to be perfect if it's reverse array matches the original array. If the array is perfect then print "PERFECT" else print "NOT PERFECT".

# [1,2,3]
# "Not perfect"

def perfect_array(array)
    reverse_arr = []
    array.reverse_each do |a|
        reverse_arr.push(a)
    end

    reverse_arr.join("") == array.join("") ? "Perfect" : "Not Perfect"

end

p perfect_array([1,2,1])