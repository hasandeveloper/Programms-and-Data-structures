#For Your Reference https://www.youtube.com/watch?v=bgx1eAgBgaQ
require 'pry'
def zig_zag(array)

    flag = 0
    array.each_with_index do |v, i|
        if array[i+1] != nil
            if flag == 0
                if not v < array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                end
                flag = 1
            elsif flag == 1
                if not v > array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                end
                flag = 0
            end
        end
    end

    return array
end

p zig_zag([4, 3, 7, 8, 6, 2, 1])

#i/p 4, 3, 7, 8, 6, 2, 1
    #   <   >  <  >  <  > 
#o/p 3, 7, 4, 8, 2, 6, 1

# Time complexity
# O(n)