#Given an array print all pairs such that a[i]<a[j] and i<j

# i/p:- 4,5,1,6,7
# o/p:- (4,5) (4,6) (4,7)
    #   (5,6) (5,7) 
    #   (1,6) (1,7)
    #   (6,7)


def print_all_pairs(arrays)

    arrays.each_with_index do |e,i|
        c = i
        index = c+=1
        pairs = []
        (arrays.length - index).times do |n|
            if e < arrays[index+n]
              pair = "(#{e}, #{arrays[index+n]})"
              pairs.push(pair)  
            end
        end

        if not pairs.empty? 
            p pairs.join(", ")
        end
    end
end

print_all_pairs([4,5,1,6,7])