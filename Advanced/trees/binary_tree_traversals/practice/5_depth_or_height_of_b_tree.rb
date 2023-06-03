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

def find_depth node
    if node == nil
        return 0
    end

    if node.left == nil && node.right == nil
        return 0
    end

    les = find_depth(node.left)
    res = find_depth(node.right)

    return [les, res].max + 1
end

p find_depth root