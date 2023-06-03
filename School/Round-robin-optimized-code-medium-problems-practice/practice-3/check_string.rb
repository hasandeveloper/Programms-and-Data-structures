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

def check_same_string string

    string.split("").each_with_index do |v, i|

        if string.split("")[i+1] != nil
            if v !=  string.split("")[i+1]
                return "No"
            end
        end

    end

    return "Yes"
end

p check_same_string "gg"