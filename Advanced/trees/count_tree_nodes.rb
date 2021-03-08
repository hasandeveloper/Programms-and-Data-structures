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

def count_tree_nodes node

    if node == nil
        return 0
    end

    les = count_tree_nodes(node.left)

    ris = count_tree_nodes(node.right)
    current_val = les + ris + 1

    return current_val
end

p count_tree_nodes root
                                        # |                                    | 
         #  count_tree_nodes( nil  )    # |  if nil == nil                     |
                                       #  |      return  0                     |    
                                        # |  end                               |     
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( nil  )    # |  if nil == nil                     |
                                       #  |      return  0                     |    
                                        # |  end                               |     
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( 4  )      # |  if 4 == nil                       |
                                       #  |      return  0                     |    
                                        # |  end                               |    
                                        # |  les = count_tree_nodes(nil)       |    0                     
                                        # |  ris = count_tree_nodes(nil)       |    0
                                        # |  current_val = les + ris + 1       |    0 + 0 + 1 = 1
                                        # |                                    | 
                                        # |                                    |
                                        # |   return current_val               |       1            
                                        # |                                    |    
                                        # |  end                               |    
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( nil  )    # |  if nil == nil                     |
                                       #  |      return  0                     |    
                                        # |  end                               |     
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( nil  )    # |  if nil == nil                     |
                                       #  |      return  0                     |    
                                        # |  end                               |     
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( 5  )      # |  if 5 == nil                       |
                                       #  |      return  0                     |    
                                        # |  end                               |    
                                        # |  les = count_tree_nodes(nil)       |                         
                                        # |  ris = count_tree_nodes(nil)       | 
                                        # |  current_val = les + ris + 1       | 0 + 0 + 1 = 1
                                        # |                                    | 
                                        # |                                    |
                                        # |   return current_val               |  1                 
                                        # |                                    |    
                                        # |  end                               |    
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( 2  )      # |  if 2 == nil                       |
                                       #  |      return  0                     |    
                                        # |  end                               |    
                                        # |  les = count_tree_nodes(5)         |    1                     
                                        # |  ris = count_tree_nodes(4)         |    1
                                        # |  current_val = les + ris + 1       | 1 + 1 + 1 = 3
                                        # |                                    | 
                                        # |                                    |
                                        # |   return current_val               |                   
                                        # |                                    |    
                                        # |  end                               |    
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( nil  )    # |  if nil == nil                     |
                                       #  |      return  0                     |    
                                        # |  end                               |     
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( nil  )    # |  if nil == nil                     |
                                       #  |      return  0                     |    
                                        # |  end                               |     
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( 3  )      # |  if 3 == nil                       |
                                       #  |      return  0                     |    
                                        # |  end                               |    
                                        # |  les = count_tree_nodes(nil)       | 0                         
                                        # |  ris = count_tree_nodes(nil)       | 0
                                        # |  current_val = les + ris + 1       | 0 + 0 + 1 = 1   
                                        # |                                    | 
                                        # |                                    |
                                        # |   return current_val               |  1                 
                                        # |                                    |    
                                        # |  end                               |    
                                        # |                                    | 
                                        # |------------------------------------|
                                        # |                                    | 
         #  count_tree_nodes( 1  )      # |  if 1 == nil                       |
                                       #  |      return  0                     |    
                                        # |  end                               |    
                                        # |  les = count_tree_nodes(3)         |    1                      
                                        # |  ris = count_tree_nodes(2)         |    3
                                        # |  current_val = les + ris + 1       | 1 + 3 + 1
                                        # |                                    | 
                                        # |                                    |
                                        # |   return current_val               |   5                
                                        # |                                    |    
                                        # |  end                               |    
                                        # |                                    | 
                                        # |-------------------------------------