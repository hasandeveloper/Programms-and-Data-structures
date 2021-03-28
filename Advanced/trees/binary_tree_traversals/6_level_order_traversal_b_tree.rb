# Refer https://www.rubyguides.com/2019/10/ruby-queues/
class BinaryTree
    attr_reader :root
  
    def initialize(root)
      @root = root
    end
  
    def level_order_traversal
      if root.nil?
        puts "Queue is empty"
        return
      end
  
      queue = Queue.new
      # require 'pry'
      # binding.pry

      queue.enqueue(root)
      # binding.pry
      while !queue.empty? do
        node = queue.dequeue
        # binding.pry

        print "#{node.data} "
  
        unless node.left.nil?
          queue.enqueue(node.left)
        end
  
        unless node.right.nil?
          queue.enqueue(node.right)
        end
      end
    end
  end
  
  class Queue
    def initialize
      @data = []
    end
  
    def enqueue(element)
      @data.push(element)
    end
  
    def dequeue
      @data.shift
    end
  
    def empty?
      @data.empty?
    end
  end
  
  class TreeNode
    attr_reader :data
    attr_accessor :left, :right
  
    def initialize(data)
      @data = data
      @left, @right = nil, nil
    end
  end
  
  root = TreeNode.new(10)
  root.left = TreeNode.new(5)
  root.right = TreeNode.new(14)
  root.left.left = TreeNode.new(1)
  root.left.right = TreeNode.new(6)
  binary_tree = BinaryTree.new(root)
  
  puts "Level order traversal of tree :"
  binary_tree.level_order_traversal
  puts ""
  puts ""
  