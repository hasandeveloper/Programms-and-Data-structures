def sum(arr=[1,2,3])

    sum = 0

    arr.each do |n|
        sum += n
    end

    return sum
end

p sum()