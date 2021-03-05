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
        while (node = node.pointer)  

        puts node.data 
          
        end
    end

end

ll = LinkedList.new
ll.push 5
ll.push 10
ll.push 15
ll.list

# Reference tutorial for linked list https://www.youtube.com/watch?v=yqFbIwzkd4w&t=628s