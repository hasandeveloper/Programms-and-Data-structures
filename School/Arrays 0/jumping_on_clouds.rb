def jumpingOnClouds(c)
    # Write your code here

    jumps = Hash.new(0)
    c.each_with_index do |v, i|

        jumps[i+2] += 1 if c[i+2] == 0 && i == 0
            
        jumps[i+1] += 1 if c[i+1] == 0 && i == 0
            
        break if c[jumps.keys[0]+1] == nil

        if c[jumps.keys[0]+2] == 0
            key = jumps.keys[0]+2
            value = jumps.values[0]+1
            jumps.clear
            jumps[key] = value
            next
        end

        if c[jumps.keys[0]+1] == 0
            key = jumps.keys[0]+1
            value = jumps.values[0]+1
            jumps.clear
            jumps[key] = value
        end


    end

    jumps.values[0]
end

# p jumpingOnClouds([0, 0, 1, 0, 0, 1, 0])
p jumpingOnClouds([0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0])
