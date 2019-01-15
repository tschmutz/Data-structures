require_relative 'ring_buffer'

class QueueWithMax
  attr_reader :store, :maxque

  def initialize
    @store = RingBuffer.new
    @maxque = RingBuffer.new
  end

  def enqueue(el)
    @store.push(el)
    update_maxque(el)
  end

  def dequeue

  end

  def max

  end

  def update_maxque(el)

  end

  def length

  end
end
