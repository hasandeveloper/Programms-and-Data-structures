# Given two string s1 and s2 , check weather s1 and s2 are anagrams

# cat -> act

def anagram(s1,s2)

    s1.split("").each do |a|
        if !s2.split("").include? a
            return "Not an anagram"
        end
    end

    "Anagram"
end

p anagram("cat", "wct")