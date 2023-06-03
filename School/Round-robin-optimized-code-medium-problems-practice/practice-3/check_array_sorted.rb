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
def check_array_sorted array
    raw_array = Array.new array

    loop do 
        swaped = false

        (raw_array.length-1).times do |i|
            if raw_array[i] > raw_array[i+1]
                raw_array[i], raw_array[i+1] = raw_array[i+1], raw_array[i]
                swaped = true
            end
        end
        
        break if not swaped
    end

     raw_array == array ? 1 : 0
     
end

p check_array_sorted [10, 20, 30, 40, 50]
