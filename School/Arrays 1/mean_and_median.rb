require 'pry'
def mean_and_median(array)

    sum=0

        array.each do |arr|
            sum+=arr
        end

    mean = sum/array.length
    loop do

        swaped = false

        (array.length-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swaped=true
            end
        end

        break if not swaped
    end
    p "Mean #{mean} and median #{array[array.length/2]}"
end

 mean_and_median([5,7,0,2,1])