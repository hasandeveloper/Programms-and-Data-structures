# I/P: 
str = "aaaabbcbbb"
# O/P:
# ["b", 5]

def max_occurence(str)
    occurence = Hash.new(0)
    str.split("").each{ |ele| occurence[ele] += 1}
    occurence.max_by { |k,v| v }
end

p max_occurence(str)