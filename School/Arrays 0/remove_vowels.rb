# Given a string, remove the vowels from the string.

# Input: S = "welcome to geeksforgeeks"
# Output: wlcm t gksfrgks
# Explanation: Ignore vowels and print other
# characters 
require 'pry'
def remove_vowels(string)
    vowels = ["a", "e", "i", "o", "u"]
    non_vowels_char = []
    string.split(" ").each do |string|
        string.split("").each do |str|
            if !vowels.include? str
                non_vowels_char.push(str)
            end
        end
        non_vowels_char.push(" ")
    end
    return non_vowels_char.join("")
end
string = "wht s yr nm ?"
p remove_vowels(string)