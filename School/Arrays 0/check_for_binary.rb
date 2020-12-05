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
def check_binary(str)

    str.split("").each do |n|
        if n.to_i == 1 || n.to_i == 0
            return 1
        end
    end

    return 0
end

p check_binary("101")