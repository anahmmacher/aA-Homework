class LRUCache
  def initialize(max_size)
    @max_size = max_size

    @cache = {}

  end

  def count
    @cache.size
  end

  def add(el)
    if cache_queue.include?(el)
    cache_queue.unshift(el)
    cache_queue.pop if cache_queue.size > max_size
  end

  def show
    @cache.values
  end

  private
  def cache_queue
    arr = Array.new(@max_size)
  end

end