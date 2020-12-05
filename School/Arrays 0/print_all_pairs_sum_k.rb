# Given an array print all pairs whose sum is equal to k

# i/p:- 4,5,1,6,7 k=7
# o/p:- (1,6)
require 'pry'

def print_all_pairs_sum_equal_to_k(array, k)
    right_hand_elements = []
    array_length = array.length
    pairs = []
    array.each_with_index do |value, i|
        return if array[i+1] == nil 
        index = i + 1
        n = array_length-index

        n.times do |number|
                right_hand_elements.push(array[index+number])
        end

        right_hand_elements.each do |ele|

            if value+ele == k
                pair = "(#{value},#{ele})"
                pairs << pair
            end
        end
        if !pairs.empty?
         p pairs.join(", ").split(", ").join(" ")
        end
        pairs.clear()
        right_hand_elements.clear()
    end
end

array = [4,5,1,6,7]
k = 7
print_all_pairs_sum_equal_to_k(array, k)