require 'pry'
class Node
    attr_reader :data
    attr_accessor :pointer

    def initialize(data)
        @data = data
        @pointer = nil
    end
end

class LinkedLists
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
        node = @head 
        return node if !node.pointer
        return node if !node.pointer while node = node.pointer
    end

    def print 
        node = @head
        puts node.data
        while node = node.pointer
            puts node.data
        end
    end

    def find_middle_element
        slow_ptr = @head
        fast_ptr = @head

        while fast_ptr != nil && fast_ptr.pointer != nil
            fast_ptr = fast_ptr.pointer.pointer
            slow_ptr = slow_ptr.pointer
        end

        p "middle element is #{slow_ptr.data}"
        return "odd length" if fast_ptr == nil
        return "even length" if fast_ptr.pointer != nil

        # binding.pry

    end


end

ll = LinkedLists.new 
ll.push 1
ll.push 2
ll.push 3
ll.push 4
ll.push 5
ll.push 6
ll.push 7
p ll.find_middle_element