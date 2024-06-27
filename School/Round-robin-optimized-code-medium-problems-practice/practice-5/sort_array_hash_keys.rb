# ----------------------------------------------------------------------------------------------------------------
# I/P:
x = [{"Bus" => 10},{"train" => 20},{"car" => 30}]
# O/P:
# {"Bus"=>10, "car"=>30, "train"=>20}

def sort_array_hash_keys(x)
    hashed = {}
    x.each { |ele| hashed[ele.keys[0]] = ele.values[0]  }
    hashed_values = hashed.keys
    loop do
        swaped = false

        (hashed_values.length-1).times do |i|
            if hashed_values[i] > hashed_values[i + 1]
                hashed_values[i], hashed_values[i + 1] = hashed_values[i + 1], hashed_values[i]
                swaped = true
            end
        end
        break if not swaped
    end
    new_hashed = {}
    hashed_values.each do |ele|
        new_hashed[ele] = hashed[ele]
    end
end

p sort_array_hash_keys(x)
