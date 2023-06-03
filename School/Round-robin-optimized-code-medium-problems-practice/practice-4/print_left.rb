# Given a array of length N, at each step it is reduced by 1 element. In the first step the maximum element would be removed, while in the second step minimum element of the remaining array would be removed, in the third step again the maximum and so on. Continue this till the array contains only 1 element. And print that final element remaining in the array.
require 'pry'

def print_left array
    
    flag = true
    array.length.times do |i|
        return array[0] if array.size == 1
        if flag == true
            array.delete(array.max)
            flag = false
        elsif flag == false
            array.delete(array.min)
            flag = true
        end
    end

end

p print_left [1,2,3,4,5,6]


