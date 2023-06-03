hash_content = {'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'}

 

    
# Output
#   {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}

def manipulate hash_content

    manipulated_hash = {}

    hash_content.each do |k, v|

     unless manipulated_hash.key? v
        manipulated_hash[v] = [k] 
     else
        manipulated_hash[v] <<  k
     end

    end

    manipulated_hash
end

p manipulate hash_content