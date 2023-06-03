#i/p 4, 3, 7, 8, 6, 2, 1
    #   <   >  <  >  <  > 
#o/p 3, 7, 4, 8, 2, 6, 1

def zig_zag(arrays)
    flag = 0
    arrays.each_with_index do |e, i|
        break if arrays[i+1] == nil
        if flag == 0
            if not e < arrays[i+1]
                arrays[i], arrays[i+1] = arrays[i+1], arrays[i]
            end
            flag = 1
        elsif flag == 1
            if not e > arrays[i+1]
                arrays[i], arrays[i+1] = arrays[i+1], arrays[i]
            end
            flag = 0
        end
    end

    arrays
end

p zig_zag([4, 3, 7, 8, 6, 2, 1])