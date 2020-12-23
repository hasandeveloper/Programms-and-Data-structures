# Given a binary array, find the index of 0 to be flipped to get max nor of consecutive 1' only single 0 flip is allowed

# i/p:- [0,1,1,1,0,1,0,1,0,1,0,1]
# o/p:- 4
require 'pry'
def consecutive_1s(arrays)

    s=0
    e=0
    zero_count = 0
    arrays.unshift(-1) && arrays.push(0)
    arrays.each_with_index do |v, i|

        if not v == 0
            e+=1
        elsif v == 0
            zero_count += 1
            e+=1

        end
        # binding.pry

        if zero_count == 2
            binding.pry

            zero_count -= 1
        end
    
        
    end

end

p consecutive_1s([0,1,1,1,0,1,0,1,0,1,0,1])