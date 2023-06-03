# 1. Given an array arr[] of n integers, construct a Product Array prod[] (of same size) such that prod[i] is
# equal to the product of all the elements of arr[] except arr[i]. Solve it without division operator and in
# O(n).
# Example :
# arr[] = {10, 3, 5, 6, 2}
# prod[] = {180, 600, 360, 300, 900}



# Refer for solution
# https://leetcode.com/problems/product-of-array-except-self/
# https://www.youtube.com/watch?v=tSRFtR3pv74

require 'pry'

def product_array(array)
    right_array = []
    left_array = []
    product_array = []

    right_array[0] = 1
    left_array[array.length-1] = 1

    n = array.size

    (n-1).times { |i| right_array[i+1] = array[i] * right_array[i] }


    (0..n-2).reverse_each do |i| 
        left_array[i] = array[i+1] * left_array[i+1] 
    end


    n.times do |i|
        product_array[i] = left_array[i] * right_array[i]
    end

   product_array
    
end

p product_array([1,2,3,4])