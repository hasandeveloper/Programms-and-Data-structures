hash_content = {'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'}

 

    
# Output
#   {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}


def has(hash_content)
    new_hash = {}

    hash_content.each do |k,v|
        if new_hash.key? v
            new_hash[v] << k
        else
            new_hash[v] = [k]
        end
    end
    new_hash
end

p has(hash_content)