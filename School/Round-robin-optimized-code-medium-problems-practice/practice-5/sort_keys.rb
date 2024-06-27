
# I/P: 
h = {ab: 1, abc: 3, abde: 4, a:1}  

# O/P:
# ["a", "ab", "abc", "abde"]

# with using methods
# p h.keys.sort_by{ |k| k }.map{ |v| v.to_s }

# without using methods

def sort_keys(obj)
    h_keys = obj.keys.map { |ele| ele.to_s }
    
    loop do
        swaped = false

        (h_keys.length - 1).times do |i|
            if h_keys[i] > h_keys[i + 1]
                h_keys[i], h_keys[i + 1] = h_keys[i + 1], h_keys[i]
                swaped = true
            end
        end

        break if not swaped
    end

    p h_keys
end

sort_keys(h)