# Given a string S, the task is to change the string according to the condition; If the first letter in a string is capital letter then change the full string to capital letters, else change the full string to small letters.

# i/p:- "geEkS"
# o/p:- "geeks"
def change_string(string)
    string.split("")[0] == string.split("")[0].upcase ? string.upcase : string.downcase
end

p change_string("geEkS")
