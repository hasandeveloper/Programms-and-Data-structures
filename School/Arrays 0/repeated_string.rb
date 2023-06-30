def repeatedString(s, n)
    # Write your code here
    arr = s.split("")
    n_string = []
    repeated_hashed = Hash.new(0)
    return n if arr.length == 1

    loop do 
        arr.each do |ele|
        break if n_string.length == n
            n_string << ele
        end
        break if n_string.length == n
    end
    
    n_string.map{ |ele| repeated_hashed[ele] += 1 }

    repeated_hashed.max_by{ |k, v| v }[1]
end

p repeatedString("aba",10)