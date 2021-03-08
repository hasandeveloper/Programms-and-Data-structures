require 'pry'
class Node
    attr_accessor :value
    attr_accessor :right, :left

    def initialize value
        @value = value 
        @left = nil
        @right = nil
    end

end

root = Node.new 1
root.right = Node.new 2
root.left = Node.new 3
root.right.right = Node.new 4
root.right.left = Node.new 5

def sum_tree node
    if node == nil
        return 0
    else
        les = sum_tree(node.left)
        ris = sum_tree(node.right)
        node.value = les + ris + node.value
        return node.value
    end
end

p sum_tree root
p root
