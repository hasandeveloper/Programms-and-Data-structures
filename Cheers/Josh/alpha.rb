require 'pry'
def alphabets(arg_int)
    
    return if arg_int == 0 || arg_int.negative?
    alphabets = ('a'..'z').to_a
    alphabets[arg_int - 1]



    
    

end

p alphabets(26)

# Q:- 
# 1.I/P 3
#   O/P C

#   I/P 30
#   O/P AD

#   I/P 27
#   O/P AA
  


