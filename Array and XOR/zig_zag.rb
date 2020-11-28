#For Your Reference https://www.youtube.com/watch?v=bgx1eAgBgaQ
require 'pry'
def zig_zag(array)

    flag = 0
    zig_zag = []
    array.each_with_index do |v, i|
        if array[i+1] != nil
            if flag == 0
                if v < array[i+1]
                    flag = 1
                else
                    array[i], array[i+1] = array[i+1], array[i]
                    flag = 1
                end
            elsif flag == 1
                if v > array[i+1]
                    flag = 0
                else
                    array[i], array[i+1] = array[i+1], array[i]
                    flag = 0
                end
            end
        end
    end

    return array
end

p zig_zag([4, 3, 7, 8, 6, 2, 1])

#i/p 4, 3, 7, 8, 6, 2, 1
    #   <   >  <  >  <  > 
#o/p 3, 7, 4, 8, 2, 6, 1