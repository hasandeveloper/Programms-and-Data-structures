# Given a non-empty sequence of characters str, return true if sequence is Binary, else return false


# Input:
# str = 101
# Output:
# 1
# Explanation:
# Since string contains only 0 and 1, output is 1.


# Input:
# str = 75
# Output:
# 0
# Explanation:
# Since string contains digits other than 0 and 1, output is 0.

require 'pry'
def binary_check(str)
    flag = true
    str.split("").each { |s| 

         if not [1,0].include? s.to_i
            return flag = false
         end
            
        
    }
    flag
end

p binary_check("101")