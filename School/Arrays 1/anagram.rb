# Given two string s1 and s2 , check weather s1 and s2 are anagrams
#we can say that two strings are anagrams if they contain the same characters but in a different order.
# cat -> act
require 'pry'
def anagram(s1,s2)
    return "length of first argument and second argument should be equal" if s1.split("").length != s2.split("").length

    count = 0
    s1.split("").each do |ele|
         if s2.split("").include? ele 
            count+=1
         end
    end

    return count == s2.split("").length ? "Anagram" : "Not a Anagram"

end

p anagram("cat", "act")