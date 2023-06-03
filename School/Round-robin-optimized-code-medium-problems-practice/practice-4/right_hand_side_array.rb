# given_an_array_replace_every_element_by_greater_element_on_right_side(not including the self element)
#I/P:-  6,2,4,5,3,1
#O/P:-  5, 5, 5, 3, 1, -1

#I/P:- 16, 17, 4, 3, 5, 2
#O/P:- 17, 5, 5, 5, 2, -1

  require 'pry'                   
def right_hand_side array
    right_hand_side_highest = []
    right_hand_side_compare = []
    (array.length).times do |i|
        if array[i+1] == nil
            right_hand_side_highest << -1
            break
        elsif not array[i+1] == nil
            n = i
            counter = n+=1
            (array.length-1).times do |i|
                right_hand_side_compare.push(array[counter+i]) if array[counter+i] != nil
            end

            loop do 
                swaped = false

                (right_hand_side_compare.length-1).times do |i|
                    if right_hand_side_compare[i] > right_hand_side_compare[i+1]
                        right_hand_side_compare[i], right_hand_side_compare[i+1] = right_hand_side_compare[i+1], right_hand_side_compare[i]
                        swaped = true
                    end
                end
                break if not swaped
            end

            right_hand_side_highest.push(right_hand_side_compare.last)
            right_hand_side_compare.clear
        end 
    end


    return right_hand_side_highest
end

p right_hand_side [6,2,4,5,3,1]
