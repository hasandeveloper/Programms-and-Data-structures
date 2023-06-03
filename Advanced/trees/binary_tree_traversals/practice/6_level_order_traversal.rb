class BinaryTree
    attr_reader :root
    def initialize root
        @root = root
    end

    def level_order_traversal 
        if root.nil?
            return "Queue is empty"
        end

        queue = Queue.new
        queue.enqueue root

        while !queue.empty? do
            node = queue.dequeue

            puts "#{node.value}"

            unless node.left.nil?
                queue.enqueue node.left
            end

            unless node.right.nil?
                queue.enqueue node.right
            end

        end
    end
end

class Queue
    def initialize 
        @data = []
    end

    def enqueue element
        @data.push element
    end

    def dequeue
        @data.shift
    end

    def empty?
        @data.empty?
    end

end

class Node
    attr_reader :value
    attr_accessor :right, :left

    def initialize value
        @value = value
        @right = nil
        @left = nil
    end
end

root = Node.new 1
root.left = Node.new 2
root.right = Node.new 3
root.left.left = Node.new 4
root.left.right = Node.new 5

binary_tree = BinaryTree.new root
binary_tree.level_order_traversal

