class BinaryMinHeap
    attr_reader :store, :prc

    def initialize(&prc)
        @prc = prc
        @store = []
    end

    def count
        @store.length
    end

    def peek
        @store[0]
    end

    def self.child_indices(len, parent_index)
        children = []
        child_one = (parent_index * 2) + 1
        child_two = (parent_index * 2) + 2
        children << child_one if child_one < len
        children << child_two if child_two < len
        children
      end
end