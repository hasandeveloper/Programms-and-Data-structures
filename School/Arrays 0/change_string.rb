# Given a string S, the task is to change the string according to the condition; If the first letter in a string is capital letter then change the full string to capital letters, else change the full string to small letters.
require 'pry'
def change_string(string)
    if string.split("")[0] == string.split("")[0].downcase
        return string.downcase
    else
        return string.upcase
    end
end

p change_string("geEkS")