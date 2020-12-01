# Given an array and size of array , find/print the largest element in the array. such that smallest should come first and then lagest (diff is max)

# i/p:- 2,4,11,5,8,1,9
# o/p:- 2, 11

# i/p:- 1,2,3,4,5
# o/p:- "(1, 5)"

# i/p:- 5,2,3,2,1
# o/p:- "0"


# or 

# Say you have an array for which the ith element is the price of a given stock on day i.

# If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.

# Note that you cannot sell a stock before you buy one.

# Example 1:

# Input: [7,1,5,3,6,4]
# Output: 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
#              Not 7-1 = 6, as selling price needs to be larger than buying price.
# Example 2:

# Input: [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transaction is done, i.e. max profit = 0.

#reference
# https://www.youtube.com/watch?v=2FROyvnnrrM

require 'pry'
def max_diff(array)
    minimum_buy = array[0]
    max_profit = 0

    array.each_with_index do |v, i|
        if array[i+1] != nil
            if  minimum_buy > array[i+1]
                minimum_buy = array[i+1]
            else
                temp_profit = minimum_buy - v
                if max_profit < temp_profit.abs
                    max_profit = temp_profit
                end
            end    

        end
    end
    return max_profit.abs
end
                
p max_diff([7,6,4,3,1])

# Time complexity
# O(n)