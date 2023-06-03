# In an array if any duplicate integer founds should return boys else girls

# i/p:- 1,2,3,4,7
# o/p:- girl

# i/p:- 1,2,3,4,1
# o/p:- boy

def girl_or_boy array
    dup_array = []
    array.each do |ele|
        if not dup_array.include? ele
            dup_array.push(ele)
        elsif dup_array.include? ele
            return "boy"
        end
    end
    return "girl"
end

p girl_or_boy [1,2,3,4,7,7]