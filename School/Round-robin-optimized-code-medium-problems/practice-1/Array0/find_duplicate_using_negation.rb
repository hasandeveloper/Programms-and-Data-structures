#Given an array of n+1 element in range 1 to n, you have to check wheather dulicates or not 

# i/p:- 4, 3, 2, 1, 4
# o/p:- yes

def negate(arrays)

    arrays.each_with_index do |e, i|
        index = e.abs

        if arrays[index] < 0
            return "yes"
        else
            element = arrays[index]
            arrays[index] = -element
        end
    end

    return "no"
end

p negate([4, 3, 2, 1, 0])