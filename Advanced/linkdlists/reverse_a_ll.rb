# using single ll
require 'pry'
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
    
    def return_head
        return @head
    end
end

ll = LinkedList.new
ll.push 1
ll.push 2
ll.push 3
ll.push 4
ll.push 5
head = ll.return_head
def LinkedList.reverse head
    current_node = head
    previous_node = nil
    next_node = nil
    while current_node
        next_node = current_node.pointer

        current_node.pointer = previous_node

        previous_node = current_node

        current_node = next_node
    end

    return previous_node
end

p LinkedList.reverse head