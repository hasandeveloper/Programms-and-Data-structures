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

require 'pry'
def check_array_sorted arr
    original_array = Array.new arr

    loop do
        swaped = false

        (arr.length-1).times do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swaped=true
            end
        end

        break if not swaped

    end

    original_array == arr ? 1 : 0
end

p check_array_sorted [10, 20, 30, 40, 50]