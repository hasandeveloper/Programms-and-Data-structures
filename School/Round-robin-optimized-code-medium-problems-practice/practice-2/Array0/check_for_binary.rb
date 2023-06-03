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

def check_for_binary(str)
    str.split("").each { |n| return 0 if ![0,1].include? n.to_i }

    1
end

p check_for_binary("191")