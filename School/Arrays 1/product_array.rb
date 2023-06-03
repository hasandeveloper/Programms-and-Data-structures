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
    left = []
    right = []
    prod = []
    n = array.length

    left[0] = 1
    right[n-1] = 1

    (n-1).times do |n|
        left[n+1] = array[n] * left[n]
    end


    (0..n-2).reverse_each do |i|
        right[i] = array[i+1] * right[i+1]
    end


    (n).times do |n|
        prod[n] = left[n] * right[n]
    end

    prod

end
p product_array([1,2,3,4])