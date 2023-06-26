# Implement the function StringSwapForUs(str), such that it will toggle the case of all the characters of the given string str.
# For example: input 
# str= Hello-LOL
# output str = hELLO-lol

def StringSwapForUs str
    swap_str = []
    str.split("").each do |val|
        if val == val.upcase
            swap_str << val.downcase
        elsif val == val.downcase
            swap_str << val.upcase
        end
    end

    swap_str.join("")
end

p StringSwapForUs "Hello-LOL"