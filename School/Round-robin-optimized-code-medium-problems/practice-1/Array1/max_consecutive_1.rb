# Given a binary array, find the index of 0 to be flipped to get max nor of consecutive 1' only single 0 flip is allowed

# i/p:- [0,1,1,1,0,1,0,1,0,1,0,1]

def max_con_1(array)
    s = -1
    zero_count = 0
    array.push(0)
    n=0

    array.each_with_index do |v,e|
        if v == 0
            zero_count += 1
        end

        if zero_count == 2
            p e-s-1

            (n..array.length - 1).to_a.each do |i|
                if array[i] == 0
                    s=i
                    n=i+1
                    break
                end
            end

            zero_count -= 1
        end

    end

end

max_con_1([0,1,1,1,0,1,0,1,0,1,0,1])
