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

      def self.hepify_down(array, parent_index, len = array.length, &prc)
        prc ||=  proc { |x, y| x <=> y}
        children = child_indices(len, parent_idx)
        if children.all? { |child_idx| prc.call(array[parent_idx],  array[child_idx]) < 0}
          return array
        end
        if children.length == 1
            swap_idx = children[0]
          else
            swap_idx = prc.call(array[children[0]], array[children[1]]) == -1 ? children[0] : children[1]
          end
          array[parent_idx], array[swap_idx] = array[swap_idx], array[parent_idx]
          heapify_down(array, swap_idx, len, &prc)
        end
      end

      def self.parent_index(child_index)
        raise 'root has no parent' if child_index.zero?
        (child_index - 1) / 2
      end
end