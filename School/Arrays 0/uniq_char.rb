require 'pry'
def char_count str
    rep = []
    arr = str.split("")
    num = 1

            arr.length.times do |i|
                if arr[i] == arr[i+1]
                    num+=1
                elsif not arr[i] == arr[i+1] 
                    rep << "#{num}#{arr[i]}"
                    num = 1
                end
            end

rep.join(",").gsub("1","")
end

p char_count "aaabbcccad"

# i/p: str = "aaabbcccad"
# o/p: 3a2b3cad