# Given an array of size N and you have to tell whether the array is perfect or not. An array is said to be perfect if it's reverse array matches the original array. If the array is perfect then print "PERFECT" else print "NOT PERFECT".

def perfect_arrays(array)
    org_arr = Array.new array
    reversed_array = []

    array.length.times { reversed_array << array.pop }

    if reversed_array == org_arr
        return "Perfect"
    else
        return "Not perfect"
    end


end
p perfect_arrays([1,2,1,3,4])