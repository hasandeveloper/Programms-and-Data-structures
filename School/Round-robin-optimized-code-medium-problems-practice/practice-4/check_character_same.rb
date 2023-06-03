# Given a string, check if all its characters are same or not.

# Input:
# s = "geeks"
# Output: NO
# Explanation: The string contains different
# character 'g', 'e', 'k' and 's'.

# Input: 
# s = "gggg"
# Output: YES
# Explanation: The string contains only one
# character 'g'.
require 'pry'
def check_character_same str
    array = str.split("")
    (array.length-1).times do |i|
        if array[i] != array[i+1]
            return "NO"
        end
    end
    return "YES"
end

p check_character_same "ggfg"