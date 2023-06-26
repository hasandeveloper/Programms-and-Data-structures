# Harold is a kidnapper who wrote a ransom note, but now he is worried it will be traced back to him through his handwriting. He found a magazine and wants to know if he can cut out whole words from it and use them to create an untraceable replica of his ransom note. The words in his note are case-sensitive and he must use only whole words available in the magazine. He cannot use substrings or concatenation to create the words he needs.

# Given the words in the magazine and the words in the ransom note, print Yes if he can replicate his ransom note exactly using whole words from the magazine; otherwise, print No.

# Example
#  magazine = "attack at dawn"  note = "Attack at dawn"

# The magazine has all the right words, but there is a case mismatch. The answer is .

# No

require 'pry'
def checkMagazine(magazine, note)
    # Write your code here
    magazine_hash = Hash.new(0)
    note_hash = Hash.new(0)
    magazine.map{ |word| magazine_hash[word] += 1  }
    note.map{ |word| note_hash[word] += 1 }

    note_hash.each do |key, value|
        if magazine_hash.key? key
            return puts 'No' if magazine_hash[key] < note_hash[key] 
        elsif not magazine_hash.key? key
            return puts 'No'
        end
    end
    
    return puts 'Yes'
end

checkMagazine(["two", "times", "three", "is", "not", "four"], ["two", "times", "two", "is", "four"]) #No
#  p checkMagazine(["give", "me", "one", "grand", "today", "night"], ["give", "one", "grand", "today"]) #Yes
# p checkMagazine(["ive", "got", "a", "lovely", "bunch", "of", "coconuts"], ["ive", "got", "some", "coconuts"]) #No