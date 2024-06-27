# I/P:
arr = ["C", "C", "A", "B"]
arr = ["C", "A", "B"]
# O/P:
# ["C", 2]
# nil

def majority_vote(arr)
    return nil if arr == arr.uniq
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1}
    hash.max_by{ |k, v| v }
end

p majority_vote(arr)