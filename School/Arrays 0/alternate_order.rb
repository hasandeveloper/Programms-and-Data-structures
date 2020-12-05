# You are given an array A of size N. You need to print elements of A in alternate order (starting from index 0).
require 'pry'
def alternate_order(my_array)
    my_array.select{ |arr| arr % 2 != 0 }
end

p alternate_order([1, 2, 3, 4])