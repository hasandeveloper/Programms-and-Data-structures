# Find biggest group of consecutive numbers from the given number set 
# Input = 346555578123999021344
# Output = {5=>4}

def highest_consecutive str
    biggest_consecutive = Hash.new(0)
    str.split("").map{|ele| biggest_consecutive[ele] += 1 }
    biggest_consecutive.max_by{|k,v| v }
end

p highest_consecutive "346555578123999021344"