class Queue
  attr_accessor :queue 
  attr_reader :length
  def initialize
    @queue = []
    @length = @queue.length
  end

  def enqueue(el)

    if @queue.length == 0
      @queue.push(el)
    else
      @queue.unshift(el)
    end
  end

  def dequeue
      @queue.pop
      return @queue
  end

  def peek
    return @queue[-1]
  end
end