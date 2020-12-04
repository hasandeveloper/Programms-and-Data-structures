# In an array if any duplicate integer founds should return boys else girls

# i/p:- 1,2,3,4,7
# o/p:- girl

# i/p:- 1,2,3,4,1
# o/p:- boy

require 'pry'
def girl_or_boy(array)
    array.each_with_index do |outer_value, outer_index|
        array.each_with_index do |inner_value, inner_index|
            if outer_index != inner_index
                if outer_value == inner_value
                    return "boys party"
                end
            end
        end
    end
    return "girls party"
end

p girl_or_boy([1,2,3,4,7])

# Time complexity
# O(n2)