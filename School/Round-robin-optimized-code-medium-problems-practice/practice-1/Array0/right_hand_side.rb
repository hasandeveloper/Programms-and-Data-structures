# given_an_array_replace_every_element_by_greater_element_on_right_side(not including the self element)
#I/P:-  6,2,4,5,3,1
#O/P:-  5, 5, 5, 3, 1, -1

#I/P:- 16, 17, 4, 3, 5, 2
#O/P:- 17, 5, 5, 5, 2, -1
require 'pry'
def right_hand_side(array)
    right_hand_side_arrays = []

    array.each_with_index do |e, i|
        c = i
        n = c+=1
        (array.length - n).times do |index|
            right_hand_side_arrays.push(array[index+n])
        end
        #sort right hand side array
            (right_hand_side_arrays.length-1).times do |ind|
                if right_hand_side_arrays[ind] > right_hand_side_arrays[ind+1]
                    right_hand_side_arrays[ind], right_hand_side_arrays[ind+1] = right_hand_side_arrays[ind+1], right_hand_side_arrays[ind]
                end
            end


        array[i] = right_hand_side_arrays[-1]
        right_hand_side_arrays.clear()
    end

    array[-1] = -1
    return array
end

p right_hand_side([6,2,4,5,3,1])