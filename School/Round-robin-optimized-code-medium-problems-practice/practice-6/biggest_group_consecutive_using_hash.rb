# Find biggest group of consecutive numbers from the given number set 
# Input = 346555578123999021344
# Output = {5=>4}

def consecutive_number str
    hashed = Hash.new(0)
    str.split("").each { |e| hashed[e] += 1 }
    res = hashed.max_by { |k,v| v }
    res.to_h
end

p consecutive_number "346555578123999021344"