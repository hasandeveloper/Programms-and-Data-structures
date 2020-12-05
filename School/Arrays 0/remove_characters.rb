require 'pry'

def remove_character(string)
    array = string.split("")

    array.each_with_index do |str, i|
        if str.to_i == 0
            array.delete(str)
        end
    end
    array.join("")
end

p remove_character("a1b2c3")