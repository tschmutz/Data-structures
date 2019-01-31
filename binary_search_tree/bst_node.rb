class BSTNode
    attr_reader :value 
    attr_accessor :right, :left

    def  initialize(value)
        @value = value 
        @right = nil 
        @left = nil
    end 
end 