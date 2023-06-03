def increase_decrease(array)

    return  "please maintain atleast 3 elements into an array" if array.length < 3

    array.each do  |element| 
        if element.is_a? String
         return "please maintain array of integers" 
        end
    end

    old_array = Array.new(array)

    loop do 

        swap = false

        (array.length-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swap = true
            end
        end

        break if not swap
    end

    if array == old_array || array.reverse == old_array     
        return true 
    end

    return false

end

p increase_decrease([12, 14, 5])
