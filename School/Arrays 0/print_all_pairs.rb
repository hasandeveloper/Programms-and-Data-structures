#Given an array print all pairs such that a[i]<a[j] and i<j

# i/p:- 4,5,1,6,7
# o/p:- (4,5) (4,6) (4,7)
    #   (5,6) (5,7) 
    #   (1,6) (1,7)
    #   (6,7)
    require 'pry'
def print_pairs(array)
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

            if value < ele
                pair = "(#{value},#{ele})"
                pairs << pair
            end
        end
        p pairs.join(", ").split(", ").join(" ")
        pairs.clear()
        right_hand_elements.clear()
    end
end

 print_pairs([4,5,1,6,7])