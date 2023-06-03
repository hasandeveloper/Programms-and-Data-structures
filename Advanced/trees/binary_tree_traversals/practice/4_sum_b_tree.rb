class Node
    attr_accessor :value
    attr_accessor :left, :right

    def initialize value
        @value = value
        @left = nil
        @right = nil
    end

end

root = Node.new 1
root.left = Node.new 2
root.right = Node.new 3
root.left.left = Node.new 4
root.left.right = Node.new 5

def sum_b_tree node
    if node == nil
        return 0 
    end

    les = sum_b_tree node.left
    ris = sum_b_tree node.right 
    node.value = les + ris + node.value
    return node.value
end

p sum_b_tree root
