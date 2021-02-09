require 'pry'
class Node
    attr_reader :data
    attr_accessor :pointer

    def initialize(data)
        @data = data
        @pointer = nil
    end
end

class LinkedList
    def initialize
        @head = nil
    end

    def push data
        if @head
            find_tail.pointer = Node.new data
        else
            @head = Node.new data
        end
    end

    def find_tail
        current_node = @head
        return current_node if !current_node.pointer
        return current_node if !current_node.pointer while (current_node = current_node.pointer)
    end

    def list
        node = @head
        puts node.data
        while node = node.pointer
            puts node.data
        end
    end

    def find_kth_element_from_last k
        s = 1
        e = 1
        node = @head
        count = 1
        while node = node.pointer
            e+=1
            if e > k
                ll = @head
                temp = 0

                while ll = ll.pointer

                    break if s == temp
                    temp+=1
                    $data = ll.data
                end
                s += 1
                return $data if !node.pointer
            end
            count += 1

        end

        if count == k
            return @head.data
        else
            return "k is the upper bound of ll, your kth value should be within a lower bound of ll"
        end

    end

end


ll = LinkedList.new 
ll.push 1
ll.push 2
ll.push 3
ll.push 4
ll.push 5
ll.push 6
ll.push 7
ll.push 8
ll.push 9
ll.push 10



p ll.find_kth_element_from_last 5
