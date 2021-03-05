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
root.right = Node.new 2
root.left = Node.new 3
root.right.right = Node.new 4
root.right.left = Node.new 5

def count_tree_nodes node