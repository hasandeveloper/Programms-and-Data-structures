class Node
    attr_reader :data
    attr_accessor :left, :right

    def initialize data
        @data = data
        @left = nil
        @right = nil
    end
end

# root = Node.new 1
# root.left = Node.new 2
# root.right = Node.new 3
# root.left.left = Node.new 4
# root.left.right = Node.new 5

# p root


# Dynamic tree creation



def push_node node, value
    if value > node.data
        if node.right
            push_node node.right, value
        else
            node.right = Node.new value
        end
    else
        if node.left
            push_node node.left, value
        else
            node.left = Node.new value
        end
    end
end

arr = [5,6,2,4,1,8,7,9,3]

root = Node.new arr.shift

arr.each {|e| push_node(root, e)}