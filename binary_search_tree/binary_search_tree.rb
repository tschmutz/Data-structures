class BinarySearchTree
    attr_reader :root

    def initialize
        @root = nil
    end 

    def insert(val)
        @root = insert_into_tree(@root, val)
    end 

    def  insert_into_tree
        return BSTNode.new(value) if tree_node.nil?

        if value <= tree_node.value
          tree_node.left = insert_into_tree(tree_node.left, value)
        elsif value > tree_node.value
          tree_node.right = insert_into_tree(tree_node.right, value)
        end
    
        tree_node
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