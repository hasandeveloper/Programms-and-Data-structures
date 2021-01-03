# In an array if any duplicate integer found should return boys else girls

# i/p:- 1,2,3,4,7
# o/p:- girl

# i/p:- 1,2,3,4,1
# o/p:- boy
require 'pry'
def boy_or_girl(array)

    array.each_with_index do |v, i|
        array.each_with_index do |va, index|
            if not i == index
                count = 0

                if v == va 
                    count+=1
                end

                if count == 1
                    return "boy"
                end
            end
        end
    end

   return "girl"
end

p boy_or_girl([1,2,3,4,7])