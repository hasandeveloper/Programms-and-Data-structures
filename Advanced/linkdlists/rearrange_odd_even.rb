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

    def list
        node = @head
        return node
    end

end

#singleton method
def LinkedList.odd_even list
    ll = LinkedList.new
    node = list
    node1 = list
    ll.push node.data
    i = 2

    while node = node.pointer
        if i.odd?
            ll.push node.data
        end
        i+=1
    end

    i = 2

    while node1 = node1.pointer
        if i.even?
            ll.push node1.data
        end
        i+=1
    end


end

# Given a ll, rearrange the odd positions elements and even positions elements together odd first and then even
        # 1    2      3    4     5     6      
# I.P: 10 -> 11 -> 14 -> 21 -> 25 -> 27
# O.P: 10 -> 14 -> 25 -> 11 -> 21 -> 27

# cases
# empty linked list
# only one node
# only two node
# odd number of nodes
# even number of nodes

ll = LinkedList.new
ll.push 10
ll.push 11
ll.push 14
ll.push 21
ll.push 25
ll.push 27
list = ll.list
LinkedList.odd_even list




