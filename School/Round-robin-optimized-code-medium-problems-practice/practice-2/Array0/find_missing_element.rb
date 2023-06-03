#Given an array with n-1 elements having one missing element and every element is in range [1,n] find the missing element

# i/p:- 2, 1, 3, 5, 6
# o/p:- 4

def missing_element(array)

    loop do 
        swaped = false

        (array.length - 1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            end
        end

        break if not swaped 
    end

    (array.first..array.last).map { |n| return n if not array.include? n }
end

p missing_element([2, 1, 3, 5, 6])