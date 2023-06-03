# Given a string S, the task is to change the string according to the condition; If the first letter in a string is capital letter then change the full string to capital letters, else change the full string to small letters.

# i/p:- "geEkS"
# o/p:- "geeks"
require 'pry'
def change_string(str)
    return str[0] == str[0].downcase ? str.downcase : str.upcase
end

p change_string("GeEkS")
