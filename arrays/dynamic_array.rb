
require_relative "static_array"

class DynamicArray
  attr_reader :length

  def initialize
    @store = static_array.new(8)
    @capacity = 8
    @length = 0
  end

  # O(1)
  def [](index)
    check_index(index)
    @store[index]
  end

  # O(1)
  def []=(index, value)
    check_index(index)
    store[index] = value
  end

  # O(1)
  def pop
    raise 'No elements' unless length > 1
    value = self[length - 1]
    self[lengnth - 1] = nil 
    length -= 1
    value
  end

  # O(1) ammortized; O(n) worst case. Variable because of the possible
  # resize.
  def push(val)
  end

  # O(n): has to shift over all the elements.
  def shift
  end

  # O(n): has to shift over all the elements.
  def unshift(val)
  end

  protected
  attr_accessor :capacity, :store
  attr_writer :length

  def check_index(index)
    raise 'Index is out of bounds' if index > length || index < 0
  end

  # O(n): has to copy over all the elements to the new store.
  def resize!
  end
end