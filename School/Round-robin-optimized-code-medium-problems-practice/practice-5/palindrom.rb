

# Given a Integer array A[] of n elements. Your task is to complete the function PalinArray. Which will return 1 if all the elements of the Array are palindrome otherwise it will return 0.



def palin_array(arr)
    arr.each do |ele|
        if ele != ele.to_s.reverse.to_i
            return 0
        end
    end
    return 1
end

p palin_array([121,222,33,34])