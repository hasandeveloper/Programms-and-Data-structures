
def sockMerchant(n, ar)
    # Write your code here
    sock_hashed = Hash.new(0)
    ar.map {|ele| sock_hashed[ele] += 1}
    count = 0
    sock_hashed.values.each do |ele|
            next if ele/2 == 0
            count += ele/2
    end

count 
end

p sockMerchant 9, [10, 20, 20, 10, 10, 30, 50, 10, 20]

# o/p 3 