# Iterative program to execute the summing of a given array of numbers.  
def iterativeSum(arrayofNumbers) 
    sum = 0
    arrayofNumbers.map{ |a| sum += a }
    return sum
end
    
# p iterativeSum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) 

# Recursive call
require 'pry'
def recursive_sum(numbers)
    # binding.pry
    if numbers.empty?
        return 0
    else
        sum = numbers.pop
        return sum += recursive_sum(numbers)
    end
    
end

p recursive_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) 
