class DynamicProgramming
    
    def initialize
        @blair_cache = {1 => 1, 2 => 2}
    end 

    def blair_nums(num)
        return 1 if num == 1
        return 2 if num == 2
        
        @blair_cache[num - 1] = blair_nums(num - 1) if @blair_cache[num - 1] == nil
        @blair_cache[num - 2] = blair_nums(num - 2) if @blair_cache[num - 2] == nil
        return @blair_cache[num - 1] + @blair_cache[num - 2] + (num - 1) * 2 - 1
    end 
end 