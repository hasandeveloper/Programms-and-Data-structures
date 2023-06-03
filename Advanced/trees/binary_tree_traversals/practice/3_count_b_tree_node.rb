class Node
    attr_reader :value
    attr_accessor :right, :left

    def initialize value
        @value = value
        @right = right
        @left = left
    end
end

root = Node.new 1
root.left = Node.new 2
root.right = Node.new 3
root.left.left = Node.new 4
root.left.right = Node.new 5

def count_b_tree_nodes node
    if node == nil
        return 0
    end

    les = count_b_tree_nodes node.left
    ris = count_b_tree_nodes node.right

    result = les + ris + 1

    return result
end

p count_b_tree_nodes root