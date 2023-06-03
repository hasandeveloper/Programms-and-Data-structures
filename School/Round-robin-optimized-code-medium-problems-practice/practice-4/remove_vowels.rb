# Given a string, remove the vowels from the string.

# Input: S = "welcome to geeksforgeeks"
# Output: wlcm t gksfrgks
# Explanation: Ignore vowels and print other
# characters 
require 'pry'
def remove_vowels str
    vowels = ["a", "e", "i", "o", "u"]
    remove_vowels_str = []

    str.split(" ").each do |ele|
        non_vowel = []
        ele.split("").each do |ele1|
            unless vowels.include? ele1
                non_vowel << ele1
            end
        end
        remove_vowels_str << non_vowel.join("")
        non_vowel.clear
    end
    remove_vowels_str.join(" ")
end

p remove_vowels "welcome to geeksforgeeks"