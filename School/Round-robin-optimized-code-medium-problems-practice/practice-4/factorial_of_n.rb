require 'pry'
class Factorial
    def find_factorial(n)
        (1..n).inject(:*)
    end
end
  
 f = Factorial.new
 p f.find_factorial(3)
  
  
  
  