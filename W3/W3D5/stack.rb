class Stack
  attr_accessor :stack 
  attr_reader :length
  def initialize
    @stack = []
    @length = @stack.length
  end

  def push(el)

    if @stack.length == 0
      @stack.push(el)
    else
      @stack.unshift(el)
    end
  end

  def pop
      @stack.shift
      return @stack
  end

  def peek
    return @stack[0]
  end
end