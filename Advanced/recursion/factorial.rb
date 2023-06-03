# Ruby code for calculating the factorial of a number 4! recursively. 

def recursive_factorial(n)
    if (0..1).include? n
        return 1
    end

    fact = n * recursive_factorial(n - 1)

end

p recursive_factorial(4)