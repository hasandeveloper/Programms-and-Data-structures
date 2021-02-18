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
ll.push 6
ll.push 7
ll.push 8
ll.push 9
ll.push 10
head1 = ll.return_head

ll = LinkedList.new 
ll.push 11
ll.push 12
ll.push 13
ll.push 6
ll.push 7
ll.push 8
ll.push 9
ll.push 10
head2 = ll.return_head

# I.P: 1 -> 2 -> 3 -> 4 -> 5
                                # 6 -> 7 -> 8 -> 9 -> 10
#             11 -> 12 -> 13

# O.P: 6

def find_intersecting_point head1, head2
    node1 = head1
    stack1 = []
    node2 = head2
    stack2 = []
    intersect_element = 0
    
    stack1 << head1.data
    while node1 = node1.pointer
        stack1 << node1.data
    end

    stack2 << head2.data
    while node2 = node2.pointer
        stack2 << node2.data
    end

    loop do 
        if stack1.last == stack2.last
            intersect_element = stack1.last
            stack1.pop && stack2.pop
        else
            break
        end
    end

    return intersect_element
end

p find_intersecting_point head1, head2