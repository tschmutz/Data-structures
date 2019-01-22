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

    # A frog is sitting at the bottom of a staircase with n stairs. Tiny little frog can only 
    # jump so many steps at once. In particular, it can only hop 1, 2, or 3 steps at a time.
    # Given this information, write a function to return the set of ways the frog can get to 
    # the top of the stairs.

    def frog_hops_bottom_up(n)
        cache = frog_cache_builder(n)
        cache[n]
    end 

    def frog_cache_builder(n)
        jump_cache = {1 => [[1]] , 2 => [[1,1], [2]], 3 => [[1,1,1], [1,2], [3], [2,1]] }
        idx = 4
        while idx <= n
            new_com = []
            (1..3).each do |i|
                jump_cache[idx - i].each do |step|
                    new_step = step + [i] 
                    new_com << new_step
                end   
            end 
            jump_cache[idx] = new_com
            idx += 1
        end 
        jump_cache 
    end 

    # frog hops function that takes the number of stairs the frog can jump as well as 
    # number of stairs in staircase as arguments

    def super_frog_hops(num_stairs, max_stairs)
        cache = [[[]], [[1]]]
        return cache[num_stairs] if num_stairs < 2
        
        (2..num_stairs).each do |stairs|
            new_comb = []
            (1..max_stairs).each do |jump|
                if stairs - jump < 0
                    next
                else
                    cache[stairs - jump].each do |subarr|
                        next_com = subarr + [jump] 
                        new_comb << next_com
                    end 
                end 
            end 
            cache[stairs] = new_comb
        end 
        cache[num_stairs]
    end 
end 