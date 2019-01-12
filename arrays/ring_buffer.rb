require_relative "static_array"

class RingBuffer
  attr_reader :length

  def initialize
    self.store, self.capacity = StaticArray.new(8), 8
    self.start_idx, self.length = 0, 0
  end

  # O(1)
  def [](index)
    check_index(index)
    store[(start_idx + index) % capacity]
  end

  # O(1)
  def []=(index, val)
    check_index(index)
    store[(start_idx + index) % capacity] = val
  end

  # O(1)
  def pop
    raise "index out of bounds" if (length == 0)

    val, self[length - 1] = self[length - 1], nil
    self.length -= 1

    val
  end

  # O(1) ammortized
  def push(val)

  end

  # O(1)
  def shift

  end

  # O(1) ammortized
  def unshift(val)

  end

  protected
  attr_accessor :capacity, :start_idx, :store
  attr_writer :length

  def check_index(index)

  end

  def resize!

  end
end
