# https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-data-statistics/mean-and-median/v/mean-median-and-mode


# Mean Is Average
# The mean is commonly referred to as average, but it is not the only kind of average. The mean is often used in research, academics and in sports. When you watch a baseball game and you see the player's batting average, that number represents the total number of hits divided by the number of times at bat. In other words, that number is the mean. In school, the final grade you get in a course is usually a mean. This mean represents the total number of points you scored in the class divided by the number of possible points. This is the classic type of average – when your overall performance on many items is evaluated with a single number

# Median Is Another Kind of Average
# Although the mean is the most common type of average, the median can also be used to express the average of a group. The median number in a group refers to the point where half the numbers are above the median and the other half are below it. You may hear about the median salary for a country or city. When the average income for a country is discussed, the median is most often used because it represents the middle of a group. Mean allows very high or very low numbers to sway the outcome but median is an excellent measure of the center of a group of data.


#Real life example for mean and median where to use
# https://www.youtube.com/watch?v=EAci9ueh5Lk

def mean_and_median(array)
    sum = 0

    array.each do |a|
        sum += a
    end

    p "Mean is #{sum/array.length}"

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

    half = array.length / 2
    p "median is #{array.length.odd? ? array[half] : (array[half] + array[half - 1]) / 2}"

end

 mean_and_median([5,7,0,2,1])
