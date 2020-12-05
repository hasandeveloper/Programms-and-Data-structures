# Replace all 0's with 5 
require 'pry'
def convert_five(n)
    array = n.to_s.split("")

    convert_five = []
    array.each do |arr|

        if arr.to_i == 0
            convert_five.push(5.to_s)
        else
            convert_five.push(arr)
        end

    end

    return convert_five.join("")
end

p convert_five(1210)