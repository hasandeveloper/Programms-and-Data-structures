
class Node
    attr_reader :value
    attr_accessor :left, :right

    def initialize value
        @value = value
        @left = nil
        @right = nil
    end

end


# root = Node.new 1
# root.left = Node.new 2
# root.right = Node.new 3
# root.left.left = Node.new 4
# root.left.right = Node.new 5

#Dynamic tree creation

def push_node node, value
    if value > node.value
        if node.right
            push_node node.right, value
        else
           node.right =  Node.new node.right, value
        end
    else
        if node.left
            push_node node.left, value
        else
            node.left = Node.new node.left, value
        end
    end
end

arr = [5,4,3,2,1,0]

root = arr.shift

arr.each { |e| push_node root, e}