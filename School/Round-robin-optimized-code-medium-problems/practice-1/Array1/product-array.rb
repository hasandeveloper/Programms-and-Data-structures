# 1. Given an array arr[] of n integers, construct a Product Array prod[] (of same size) such that prod[i] is
# equal to the product of all the elements of arr[] except arr[i]. Solve it without division operator and in
# O(n).
# Example :
# arr[] = {10, 3, 5, 6, 2}
# prod[] = {180, 600, 360, 300, 900}

# Refer for solution
# https://leetcode.com/problems/product-of-array-except-self/
require 'pry'
def product_array(array)
    left = []
    right = []
    product = []

    left[0] = 1
    n = array.length
    right[n-1] = 1

    (n-1).times do |i|
        left[i+1] = left[i] * array[i]
    end

    (0..n-2).to_a.reverse_each do |i|
        right[i] = right[i+1] * array[i+1]
    end

    n.times do |i|
        product[i] = left[i] * right[i]
    end

    product

end

p product_array([1,2,3,4])