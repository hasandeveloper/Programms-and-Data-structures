# I/P: 
str = "Hello Hasan welcome"

def reverse_str(str)
    reversed = []
    str.split(" ").each{ |ele|  reversed.unshift(ele) }
    reversed.join(" ")
end

p reverse_str(str)

