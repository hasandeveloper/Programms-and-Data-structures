require 'pry'
def mean_and_median(array)
    sum = 0

    array.each do |ele|
        sum+=ele
    end

    p "mean is #{sum/array.length}"

    loop do 
        swaped = false

        (array.length-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swaped = true
            end
        end
        break if swaped
    end

    half = array.length/2

    p"median is #{array.length.odd? ? array[half] : array[half] + array[half] - array[half - 1]/2}"


end

mean_and_median([5,7,0,2,1])