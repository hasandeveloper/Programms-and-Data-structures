# Given an array print all pairs whose sum is equal to k

# i/p:- 4,5,1,6,7 k=7
# o/p:- (1,6)

def print_sum_k array, k
    right_hand_side_temp = []

    array.length.times do |i|
        n = i
        counter = n+=1

        array.length.times { |i| right_hand_side_temp << array[counter+i] if array[counter+i] != nil }

        right_hand_side_temp.each do |ele|
            if array[i] + ele == k
                p "(#{array[i]}, #{ele})"
            end
        end

        right_hand_side_temp.clear
    end
end

print_sum_k [4,5,1,6,7], k=7