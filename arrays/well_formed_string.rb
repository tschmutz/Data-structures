
def well_formed?(str)
    arr = []
    
    hash_key = {
      '[' => ']',
      '{' => '}',
      '(' => ')'
    }
    result = true
    
      str.each_char do |char|
        if hash_key.values.include?(char)
          hash_key[arr.last] != char ? result = false : arr.pop
        else
          arr.push(char)
        end
      end
      result
    end