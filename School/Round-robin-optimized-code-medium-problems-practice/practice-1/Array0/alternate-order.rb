# You are given an array A of size N. You need to print elements of A in alternate order (starting from index 0).

# i/p [1, 2, 3, 4]
# o/p  1,3

def alternate_order(array)
    array.select{ |ele| ele % 2 != 0 }
end

p alternate_order([1, 2, 3, 4])

