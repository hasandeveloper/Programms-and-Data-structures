def increase_decrease(array)
    old_array = Array.new(array)

    loop do 
        swaped = false

        (array.length - 1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swaped = true
            end
        end

        break if not swaped
    end

    if old_array == array || old_array == array.reverse
        return true
    end

    return false

end

p increase_decrease([12, 14, 15])