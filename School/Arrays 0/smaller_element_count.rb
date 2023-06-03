# Given an sorted array A of size N. Find number of elements which are less than or equal to given element X.

def smaller_element(array, n)

    array.each do |arr|

        if arr <= n
            p arr
        end

    end

end

 smaller_element([1,2,3,4,5], 4)