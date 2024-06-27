h = {a: {b: {e: "e", f: "f"}}, d: {c: "d"}, f: "f"}
# # abe
# # abf
# # dc
# # f
require 'pry'
def recursion_hash(h, res="")
    h.each do |k,v|
        if v.is_a? Hash
            recursion_hash(v, res + k.to_s)
        else
            puts res + k.to_s
        end
    end
end

recursion_hash(h)

