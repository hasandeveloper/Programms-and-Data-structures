foo = {
    :bar => ['r', 'baz'],
    :baz => ['words', 'etc', 'long words'] ,
    :blah => ['at']
}
re_hashed_foo = {}
(1..foo.length).to_a.each do |n|
    foo.each do |k,v|
        if n == v.length
            re_hashed_foo[k] = v
        end
    end
end

p re_hashed_foo