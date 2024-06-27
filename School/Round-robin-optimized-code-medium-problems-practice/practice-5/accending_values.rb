require 'pry'
# I/P
foo = {
    :bar => ['r', 'baz'],
    :baz => ['words', 'etc', 'long words'],
    :blah => ['at'],
    :blee => ['at']
}
# O/P
# {:blah=>["at"], :bar=>["r", "baz"], :baz=>["words", "etc", "long words"]}


# Using method
p foo.sort_by{ |k,v| v }.to_h

def sort_by_hash_value(obj)
    hashed = Hash.new(0)
    obj.each{ |k,v| hashed[k] += v.length }
   
    arr = hashed.values
    loop do
        swaped = false

        (arr.length - 1).times do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i+1] = arr[i + 1], arr[i]
                swaped = true
            end
        end

        break if not swaped
    end

    res = {}
    arr.each do |ele|
        obj.each do |k, v|
            if ele == v.length
                res[k] = v
            end
        end
    end
end

p sort_by_hash_value(foo)


