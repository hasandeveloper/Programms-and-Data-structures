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
def sequence_binary str

    str.split("").each do |ele|
        unless [0,1].include? ele.to_i
            return false
        end
    end
    true
end

p sequence_binary "766"