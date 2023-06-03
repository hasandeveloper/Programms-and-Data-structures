# Given an array arr[] of size N, check if it is sorted in non-decreasing order or not. 

# Input:
# N = 5
# arr[] = {10, 20, 30, 40, 50}
# Output: 1
# Explanation: The given array is sorted.


# Input:
# N = 6
# arr[] = {90, 80, 100, 70, 40, 30}
# Output: 0
# Explanation: The given array is not sorted.

def sorted(array)
    original_array = Array.new(array)
    loop do
        swap = false

        (array.length - 1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
        break if not swap

    end

     return original_array == array ? 1 : 0

end

p sorted([10, 20, 30, 40, 50])