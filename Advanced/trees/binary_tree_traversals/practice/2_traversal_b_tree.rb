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

p root

def in_order_traversal node
    if node == nil
        return
    end

    in_order_traversal node.left
    p node.value
    in_order_traversal node.right

end


# in_order_traversal root

def pre_order_traversal node
    if node == nil
        return 
    end
    p node.value
    pre_order_traversal node.left
    pre_order_traversal node.right
end

pre_order_traversal root

def post_order_traversal node

    if node == nil
        return 
    end

    post_order_traversal node.left
    post_order_traversal node.right
    p node.value
end

post_order_traversal root