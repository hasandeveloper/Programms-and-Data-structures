require 'pry'

def right_hand_side_greater_element(array)
    right_hand_elements = []
    highest_right_hand_elements = []

    index=0
      array.each_with_index do |v, i|

        if index != i
            #push right hand side elements excluding i value

            length = array.length
            number = length-i
            number.times do |n|
                right_hand_elements.push(array[n+i])
            end
binding.pry
            #swap the elements to highest it means sort 
            right_hand_elements.each_with_index do |value, index|
                if right_hand_elements[index+1] != nil
                    if value > right_hand_elements[index+1]
                        right_hand_elements[index], right_hand_elements[index+1] = right_hand_elements[index+1], right_hand_elements[index]
                    
                    end
                end
            end
            binding.pry

            #push the highest swaped element
            highest_right_hand_elements.push(right_hand_elements.last)


            right_hand_elements.clear()

        end

      end
    highest_right_hand_elements.push(-1)
end

p right_hand_side_greater_element([6,2,4,5,3,1])

#I/P:-  6,2,4,5,3,1
#O/P:-  5, 5, 5, 3, 1, -1

#I/P:- 16, 17, 4, 3, 5, 2
#O/P:- 17, 5, 5, 5, 2, -1