# Given an array print pair whose sum is equal to k except self element

# i/p:- 4,5,1,6,7 k=7
# o/p:- (1,6)

require 'pry'
def print_pair(arrays, k)

    arrays.each_with_index do |e, i|
        c = i
        index = c+=1

        (arrays.length - index).times do |n|
            element = arrays[index+n]
            sum = e + element
            pair = "(#{e},#{element})"
            return pair if sum == k 
        end

    end
    
end

p print_pair([4,5,1,6,7], 7)