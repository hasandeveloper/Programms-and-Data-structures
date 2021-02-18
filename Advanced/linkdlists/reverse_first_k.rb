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

    def head
        @head
    end

    def reverse
        current_node = @head
        next_node = nil
        previous_node = nil

        while current_node
            next_node = current_node.pointer
            current_node.pointer = previous_node
            previous_node = current_node
            current_node = next_node
        end

        return previous_node
    end



end




ll = LinkedList.new
ll.push 1
ll.push 2
ll.push 3
ll.push 4
ll.push 5
head = ll.head
# p ll.reverse

# Given a ll and a value k , reverse the first k nodes in the list
# I.P:- 1,2,3,4,5
# O.P:- 3,2,1,4,5

def reverse_first_k_nodes_in_the_list head, k 
    current_node = head 
    previous_node = nil
    next_node = nil
    i = 0
    ll = LinkedList.new

    while current_node
        if i >= k
            while previous_node 
                ll.push previous_node.data
                previous_node = previous_node.pointer
            end

            while current_node 
                ll.push current_node.data
                current_node = current_node.pointer
            end

            return ll.head
            binding.pry

        else
            next_node = current_node.pointer
            current_node.pointer = previous_node
            previous_node = current_node
            current_node = next_node
        end
        i += 1

    end
end


p reverse_first_k_nodes_in_the_list head, 3
