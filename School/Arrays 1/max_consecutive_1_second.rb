# Given a binary array, find the index of 0 to be flipped to get max nor of consecutive 1' only single 0 flip is allowed

# i/p:- [0,1,1,1,0,1,0,1,0,1,0,1]
require 'pry'
def consecutive_1s(arrays)

    s=-1
    zero_count = 0
    arrays.push(0)
    n=0
    arrays.each_with_index do |v, e|

        if v == 0
            zero_count += 1
        end



        if zero_count == 2
            puts e-s-1

            (n..arrays.length-1).to_a.each do |index|

                if arrays[index] == 0
                    s = index
                    n = index+1
                    break
                end
            end

            zero_count -= 1

        end
    
        
    end

end

#  consecutive_1s([0,1,1,1,0,1,0,1,0,1,0,1])
#5 is the highest for above output
 consecutive_1s([1,1,0,0,1,1,1,1,1]) 

 #6 is the highest for above output

#  Time complexity
# O(n)