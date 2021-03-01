
class Node
    attr_reader :value
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


# In order traversal follows [L,D,R] means left, data and right
def inorder_traversal node
    if node == nil
        return 
    end

    inorder_traversal node.left

    p node.value

    inorder_traversal node.right

end

p "In order"
inorder_traversal root

#Pre Order traversal follows [D,L,R] means data, left and right

def preorder_traversal node

    if node == nil
        return
    end

    p node.value 
    preorder_traversal node.left
    preorder_traversal node.right

end

p "Pre order"
preorder_traversal root

#Post Order traversal follows [L,R,D] means left, right and data

def preorder_traversal node

    if node == nil
        return
    end

    preorder_traversal node.left
    preorder_traversal node.right
    p node.value 

end

p "Post order"
preorder_traversal root