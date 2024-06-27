# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

 

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
require 'pry'
def two_sum(nums, target)
    nums.each_with_index do |num, index|
        inner_index = index + 1
        (inner_index..nums.length-1).to_a.each do |ele|
            if num + nums[ele] == target
                p [index, ele]
                break;
            end
        end
    end
end

 two_sum([2,7,11,15], 9)
