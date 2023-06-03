# Given n positive integer in an array where each represent a bar of width 1. calculate how much water it is able to trap

# [0,2,1,3,0,1,2,1,2,1] o/p:- 5
# [1,3,0,1,2,0,4,1,2] o/p:- 10
require 'pry'
def rain_trap(array)
    temp = []
    highest_right_array = []
    highest_left_array = []
    total = 0


    #left hand side array push from right of the array
    (array.length).times do |i|
        
        iterate_time = array.length - i
        
        #push right side array including i value
        iterate_time.times do |number|
            temp.push(array[i+number])
        end


        #sort
        loop do
            swap = false

            (temp.length-1).times do |i|
                if temp[i] > temp[i+1]
                    temp[i], temp[i+1] = temp[i+1], temp[i]
                end
            end

            break if not swap

        end
        highest_right_array.push(temp[-1])
        temp.clear()

    end

    #right hand side array push from left of the array
    (array.length).times do |i|
        
        iterate_time = array.length - i
        
        #push right side array including i value
        iterate_time.times do |number|
            temp.push(array.reverse[i+number])
        end


        #sort
        loop do
            swap = false

            (temp.length-1).times do |i|
                if temp[i] > temp[i+1]
                    temp[i], temp[i+1] = temp[i+1], temp[i]
                    swap = true
                end
            end

            break if not swap

        end
        highest_left_array.push(temp[-1])
        temp.clear()

    end

    highest_left_array.reverse!

    temp_min = []
    (array.length).times do |i|
        temp_min.push(highest_left_array[i])
        temp_min.push(highest_right_array[i])

        total = total + temp_min.min - array[i]

        temp_min.clear()
    end

    return total

end

p rain_trap([0,2,1,3,0,1,2,1,2,1])
# p rain_trap([1,3,0,1,2,0,4,1,2])