# 5. Write a method that removes duplicate charactors from a string. 
# remove_duplicates("banana") # Output: "ban"


def remove_duplicates(str)
    count_ele = Hash.new(0)
    str.split("").each { |ele| count_ele[ele] += 1 }
    count_ele.keys.join("")
end

p remove_duplicates("hasan ali")

