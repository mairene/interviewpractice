#FIFO: first in first out
#array[0] is back of line
#array[n] is front of line
class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head = -1 #array[n]
    @tail = 0 #array[0]
  end

  def enqueue(element) #add to back of queue
    if full?
      return nil
    else
      @tail = @tail.pred
      @store[@tail] = element
    end
    self
  end

  def dequeue #remove from front of queue
    if @empty?
      return nil
    else
      @tail = @tail.succ
      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
    end
    dequeued
  end

  def size
    @size
  end

  private

  def full?
    @tail.abs == @size
  end

  def empty?
    @head == -1 && @tail == 0
  end


end