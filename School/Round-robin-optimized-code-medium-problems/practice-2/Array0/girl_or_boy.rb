# In an array if any duplicate integer founds should return boys else girls

# i/p:- 1,2,3,4,7
# o/p:- girl

# i/p:- 1,2,3,4,1
# o/p:- boy
def girl_or_boy(array)

    array.each do |n|
        count = 0

        array.each do |n1|
            if n == n1
                count+=1
            end
        end

        return "boys" if count == 2
    end

    "girls"
end

p girl_or_boy([1,2,3,4,5])