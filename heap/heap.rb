class BinaryMinHeap

    def initialize(&prc)
        @prc = prc
        @store = []
    end

    def count
        @store.length
    end
end