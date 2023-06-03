hash_content = {'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'}

 

    
# Output
#   {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}
require 'pry'
def manipulate hash_content
    manipulated_hash = {}

    hash_content.each do |key, value|
        unless manipulated_hash.key? value
            manipulated_hash[value] = [key]
        else
            manipulated_hash[value] << key
        end
    end
    manipulated_hash
end

p manipulate hash_content