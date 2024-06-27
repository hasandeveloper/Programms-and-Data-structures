# Implement the function StringSwapForUs(str), such that it will toggle the case of all the characters of the given string str.
# For example: input 
# str= Hello-LOL
# output str = hELLO-lol

def swap_str(str)
    res = str.split("").map{ |ele| (ele == ele.upcase) ? ele.downcase : ele.upcase}
    res.join("")
end

p swap_str("Hello-LOL")