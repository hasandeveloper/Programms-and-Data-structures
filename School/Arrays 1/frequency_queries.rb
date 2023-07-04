def freqQuery(queries)
    frequency = Hash.new(0)
    output = []
    queries.each do |query|
        if query[0] == 1
            frequency[query[1]] += 1
        elsif query[0] == 2
            if frequency.key? query[1]
                next frequency.delete(query[1]) if frequency[query[1]] == 1
                v = frequency[query[1]]
                frequency[query[1]] -= 1
            end
        elsif query[0] == 3 
            if frequency.values.include? query[1]
                output << 1
            else
                output << 0
            end  
        end
    end

    output
end

p freqQuery([[1, 5],[1, 6],[3, 2],[1, 10],[1, 10],[1, 6],[2, 5],[3, 2]])

# p freqQuery([[1, 1], [2, 2], [3, 2], [1, 1], [1, 1], [2, 1], [3, 2]])