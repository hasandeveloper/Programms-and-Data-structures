array = [ 1, 2, 3, 4, 10, 12, 14, 17, 20, 23, 25, 27, 31, 33, 40, 43, 51, 53, 57, 59, 60, 67, 73, 76, 80, 87, 92, 93, 97, "string", 3.14, 0, nil, false, true, ""]


# With out using any inbuilt method identify the odd and even numbers from the given

def even_odd(arr)
    even = []
    odd = []
    filtered = arr.select { |ele| ele.is_a? Integer }
    filtered.each { |ele| (ele % 2 != 0) ? odd.push(ele) : even.push(ele) }
    p "odd #{odd}"
    p "even #{even}"
end

even_odd(array)
