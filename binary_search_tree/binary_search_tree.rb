require_relative 'bst_node.rb'

class BinarySearchTree
    attr_reader :root

    def initialize
        @root = nil
    end 

    def insert(val)
        @root = insert_into_tree(@root, val)
    end 

    def in_order_traversal(tree_node = @root, arr = [])
        # left children, itself, right children
        if tree_node.left
          in_order_traversal(tree_node.left, arr)
        end
    
        arr.push(tree_node.value)
    
        if tree_node.right
          in_order_traversal(tree_node.right, arr)
        end
    
        arr
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

      def delete_from_tree(tree_node, value)
        # if correct node is found, then call remove on it.
        # otherwise, recurse until you find it
        if value == tree_node.value
          tree_node = remove(tree_node)
        elsif value <= tree_node.value
          tree_node.left = delete_from_tree(tree_node.left, value)
        elsif value > tree_node.value
          tree_node.right = delete_from_tree(tree_node.right, value)
        end
    
        tree_node
      end

end