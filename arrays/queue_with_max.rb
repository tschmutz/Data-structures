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
    val = @store.shift
    @maxque.shift if val == maxque[0]
    val
  end

  def max
    @maxque[0] if @maxque.length > 0
  end

  def update_maxque(el)
    @maxque.pop while @maxque[0] && @maxque[@maxque.length - 1] < el
    @maxque.push(el)
  end

  def length
    @store.length
  end
end
