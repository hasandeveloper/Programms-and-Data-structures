# Given two string s1 and s2 , check weather s1 and s2 are anagrams
#we can say that two strings are anagrams if they contain the same characters but in a different order.
# cat -> act
require 'pry'
def anagram(s1,s2)
    raise "both s1 and s2 string must be equal" if not s1.split("").size == s2.split("").size

    s1.split("").each do |ele|
       unless s2.split("").include? ele
        return "Not an anagram"
       end
    end
    return "Its an anagram"
end

p anagram("cats", "actd")