#Given an array with n-1 elements having one missing element and every element is in range [1,n] find the missing element

# i/p:- 2, 1, 3, 5, 6
# o/p:- 4

# n-1 = 5(elements contains in an array i/p)
# n = 6 (it means every element in the range of 6 means upto 6 becouse 6 is the highest in an i/p array so range will be shown here)
# [1,6] => Every element in the range from smallest element 1 to 6 highest


    
    def find_missing_element(array)

        array.each_with_index do |v, i|
            if array[i+1] != nil
                if v > array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                end
            end
        end
    
        range = (array.first..array.last).to_a
        return range - array
    end
    
    p find_missing_element([15,17,18,19])
    


