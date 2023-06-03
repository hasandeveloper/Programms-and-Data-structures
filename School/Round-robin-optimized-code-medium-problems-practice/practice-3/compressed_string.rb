"aabccaaadeff"

def compress_string str
    compress_string = []
    
    count = 1
   str.split("").each_with_index do |v, i|
      if str.split("")[i+1] == v
        count+=1
      else
        unless str.split("")[i-1] == v
            compress_string.push(v)
        else
            compress_string.push(count,v)
            count = 1
        end
      end
   end

   return  compress_string.join("")
end

p compress_string("aabccaaadeff")

# 2ab2c3ade2f