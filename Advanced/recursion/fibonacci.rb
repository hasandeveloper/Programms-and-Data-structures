# calculating the Nth Fibonacci number. Here the base case would be the when the N is less than 2, as then the Fibonacci number would be itself. The recursive call would be calling the method for calculating the (n-1)th and (n-2)nd Fibonacci number and adding it to get the result for Nth number.
def fibonacci(n)
    if number < 2
        number 
      else
       
        Fibonacci(number - 1) + Fibonacci(number - 2) 
      end
end

fibonacci(3)