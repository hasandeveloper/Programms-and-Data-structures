
def recursive_factorial(n)
    return 1 if n == 1 || n == 0
    fact = n
    (1..n-1).to_a.reverse_each { |ele| fact = fact * ele}
    fact
end

p recursive_factorial(5)