
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