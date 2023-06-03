require 'pry'

def remove_character(string)
    arr = []
    string.split("").each do |ele|
        unless ele.to_i == 0
            arr << ele
        end
    end

    arr.join("")

end

p remove_character("a1b2c3")

# o/p
# "123"