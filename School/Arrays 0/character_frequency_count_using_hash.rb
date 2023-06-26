# create hash with character as key and count of the character as value


def character_frequency str
    hash_var = Hash.new(0)
    str.split("").map{ |ele| hash_var[ele] += 1 }
    return hash_var
end

p character_frequency "adityapandey"