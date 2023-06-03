# You are given an array A of size N. You need to print elements of A in alternate order (starting from index 0).
# which is not multiplied by 2
# i/p [1, 2, 3, 4]
# o/p  1,3
require 'rspec'
def alternate_order arr
    arr.select{|ele| ele % 2 != 0}
end
array = [1, 2, 3, 4]
p alternate_order array

