def max_element(array)
    
    array.each_with_index do |v, i|
        if array[i+1] != nil
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
    end

    return "min is #{array.first} and max is #{array.last}"
end

p max_element([1,3,2,4])

#Time complexity
# O(n)