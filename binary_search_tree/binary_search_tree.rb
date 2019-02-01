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

end