# Given a array of length N, at each step it is reduced by 1 element. In the first step the maximum element would be removed, while in the second step minimum element of the remaining array would be removed, in the third step again the maximum and so on. Continue this till the array contains only 1 element. And print that final element remaining in the array.
require 'pry'
def print_left(array)

    (array.length-1).times do |n|
        array.shift()
        if array.length == 1
            return array.join("")
        end
    end
end

p print_left([2,4,5,1,2])

