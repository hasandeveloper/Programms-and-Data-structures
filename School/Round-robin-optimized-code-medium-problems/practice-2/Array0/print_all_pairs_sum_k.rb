# Given an array print all pairs whose sum is equal to k

# i/p:- 4,5,1,6,7 k=7
# o/p:- (1,6)

def print_pair_sum_k(array, k)

    array.each_with_index do |v, i|
        index = i+=1
        len = array.length - index

        len.times do |n|
            num = array[index+n]
            sum = v + num
            return "(#{v},#{num})" if sum == k 
        end

    end
end

p print_pair_sum_k([4,5,1,6,7],7)