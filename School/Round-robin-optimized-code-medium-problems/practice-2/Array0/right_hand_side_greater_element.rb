#I/P:-  6,2,4,5,3,1
#O/P:-  5, 5, 5, 3, 1, -1

#I/P:- 16, 17, 4, 3, 5, 2
#O/P:- 17, 5, 5, 5, 2, -1
require 'pry'
def right_hand_side_greater_element(array)


    array.each_with_index do |v, i|
        index = i
        num = index += 1
        space = []
        (array.length - num).times do |n|
            space.push(array[index+n])
        end

        loop do 
            swap = false
            (space.length - 1).times do |i|
                if space[i] > space[i+1]
                    space[i], space[i+1] = space[i+1], space[i]
                    swap = true
                end

            end
            break if not swap
        end

        array[i] = space[-1]

    end
    array.pop
    array.push(-1) 
    array
end

p right_hand_side_greater_element([16, 17, 4, 3, 5, 2])