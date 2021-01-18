#Given an array print all pairs such that a[i]<a[j] and i<j

# i/p:- 4,5,1,6,7
# o/p:- (4,5) (4,6) (4,7)
    #   (5,6) (5,7) 
    #   (1,6) (1,7)
    #   (6,7)

def print_pairs(arrays)

    arrays.each_with_index do |v, i|
        index = i += 1
        len = arrays.length - index
        right_hand_space = []
        pairs = []
        len.times { |n| right_hand_space << arrays[index + n] }

        right_hand_space.each { |n|
            if v < n
                pair = "(#{v},#{n})"
                pairs << pair
            end
        }

        p pairs.join(" ")


    end

end

print_pairs([4,5,1,6,7])