class Stack
  attr_reader :size

  def initialize(size)
    @top = -1 #keeps track of the top index of stack
    @size = size
    @store = Array.new(@size)
  end

  def push(element)
    if full?
      return nil
    else
      @top = @top.succ
      @store[@top] = element
    end
    self
  end

  def pop
    if empty?
      return nil
    else
      @popped = @store.pop
      @store[@top] = nil #holds a placeholder of nil at item that was last popped off
      @top.prec
    end
    popped
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end

end