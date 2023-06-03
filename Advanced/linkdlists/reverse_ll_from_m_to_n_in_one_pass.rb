class Node
    attr_reader :data
    attr_accessor :pointer
    def initialize data
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
        node = @head
        return node if !node.pointer
        return node if !node.pointer while node = node.pointer
    end

    def head
        return @head
    end

end

ll = LinkedList.new
ll.push 1
ll.push 2
ll.push 3
ll.push 4
ll.push 5
p head = ll.head

# Reverse a linked list from position m to n. Do it in one-pass.

# Note: 1 ≤ m ≤ n ≤ length of list.

# Example:

# Input: 1->2->3->4->5->NULL, m = 2, n = 4
# Output: 1->4->3->2->5->NULL

#Dept code