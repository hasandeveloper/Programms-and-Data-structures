# I/P:
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# O/P:
# "ice"

def print_word_doesnt_begin_with_word_s_and_w(arr)
    arr.reject{ |ele| ["w", "s"].include? ele[0] }
end

p print_word_doesnt_begin_with_word_s_and_w(arr)