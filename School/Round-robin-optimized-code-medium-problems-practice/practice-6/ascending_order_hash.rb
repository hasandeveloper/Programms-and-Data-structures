# I/P
foo = {
    :bar => ['r', 'baz'],
    :baz => ['words', 'etc', 'long words'],
    :blah => ['at']
}
# O/P
# {:blah=>["at"], :bar=>["r", "baz"], :baz=>["words", "etc", "long words"]}

def ascending_value_hashed obj
    sorted_values = obj.values.map { |ele| ele.length }.sort
    hash = {}
    sorted_values.each do |i|
        obj.each do |k,v|
            if v.length == i
                hash[k] = v
            end
        end
    end
    hash
end

p ascending_value_hashed foo

# optimized oproach

def ascending_value_hashed_optimized obj
    sorted = obj.sort_by { |k,v| v.length }
    sorted.to_h
end

p ascending_value_hashed_optimized foo