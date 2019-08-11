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
end