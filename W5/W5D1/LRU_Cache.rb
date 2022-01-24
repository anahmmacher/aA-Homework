require 'byebug'

class LRUCache
  attr_reader :max_size

  def initialize(max_size)
    @max_size = max_size

    @cache = {}
    @queue = []
  end

  def count
    @cache.size
  end

  def add(el)
      if @queue.include?(el)
        i = @queue.index(el)
        c = @queue.slice!(i)
        @queue << el
      else
      @queue.<<el
    end

    @queue.shift if @queue.size > max_size

    queue_add(@queue)
  end

  def show
   print @cache.values
  end

  private
  def queue_add(arr)
    arr.each_with_index do |val, i|
      @cache[i] = val
    end
    @cache
  end

end