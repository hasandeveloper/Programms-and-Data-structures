#Given an array print all pairs such that a[i]<a[j] and i<j

# i/p:- 4,5,1,6,7
# o/p:- (4,5) (4,6) (4,7)
    #   (5,6) (5,7) 
    #   (1,6) (1,7)
    #   (6,7)


    require 'pry'
def print_pairs(array)
    pairs = []
    right_hand_side_temp = []

    array.length.times do |i|
        return if array[i+1] == nil 
        n = i
        counter = n+=1

        (array.length).times { |e| right_hand_side_temp << array[counter+e] if array[counter+e] != nil }
       

        right_hand_side_temp.each do |ele|
            pairs << "(#{array[i]}, #{ele})"if array[i] < ele    
        end

        
        p pairs.join(" ")
        pairs.clear()
        right_hand_side_temp.clear()

    end

end

print_pairs [4,5,1,6,7]