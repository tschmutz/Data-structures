class BinarySearchTree
    attr_reader :root

    def initialize
        @root = nil
    end 

    def insert(val)
        @root = insert_into_tree(@root, val)
    end 

    def  insert_into_tree

    end

    def find(value, tree_node = @root)
        return nil if tree_node.nil?
        return tree_node if tree_node.value == value
    
        if value < tree_node.value
          find(value, tree_node.left)
        elsif value > tree_node.value
          find(value, tree_node.right)
        end
      end

end