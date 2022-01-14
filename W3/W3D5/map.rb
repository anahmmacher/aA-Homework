class Map
  attr_reader :key, :length, :pairs
  attr_accessor :map, :value

  def initialize
    @map = Array.new(0){ [] }
    @length = @map.length
    
  end

  def [](key, value)
    key, value = [key, value]
  end

  def []=(value)
    pairs[1] = value
  end

  # def []=(key, value)
    
  # end

  def set(key, value)
    return @map << [key, value] if @map.length == 0

      @map.each do |pairs|
        if pairs[0] == key
          pairs[1] = value
        elsif pairs[0] != key
          @map << [key, value]
        end
      end
  end

  def get(key)
    @map.each do |pairs|
      return pairs if pairs[0] == key
    end
  end

  def delete(key)
    @map.each_with_index do |pairs, i|
      @map.delete_at(i) if pairs[0] == key
    end
  end

  def show
    return @map
  end
      
end