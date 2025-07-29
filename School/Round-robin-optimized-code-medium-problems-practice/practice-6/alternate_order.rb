# You are given an array A of size N. You need to print elements of A in alternate order (starting from index 0).
# which is not multiplied by 2
# i/p [1, 2, 3, 4]
# o/p  1,3

def alternate_order(arr)
    arr.select{ |ele| ele % 2 != 0 }.join(", ")
end

p alternate_order([1,2,3,4])