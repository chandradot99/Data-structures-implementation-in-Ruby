class Queue
	def initialize size
		@size = size
		@queue = Array.new size
		@Front = 0
		@Rear = -1
	end

	def is_full?
		@Rear == @size-1
	end

	def is_empty?
		@Front == @Rear+1
	end

	def enqueue data
		if is_full?
			puts "Queue is overflowed"
		else
      @Rear += 1
			@queue[@Rear] = data
			puts "#{data} is enqueued to the Queue"
		end
	end

	def dequeue
		if is_empty?
			puts "Queue is underflowed"
		else
			puts "#{@queue[@Front]} is dequeued from the Queue"
			@queue[@Front] = nil
			@Front += 1
		end
	end

	def front 
		is_empty? ? "Queue is underflowed" : @queue[@Front]
	end

  def rear
    is_empty? ? "Queue is underflowed" : @queue[@Rear]
  end

end

q = Queue.new 5
q.enqueue 10
q.enqueue 20
q.enqueue 30
q.enqueue 40
q.enqueue 50
puts q.front
puts q.rear
q.dequeue
puts q.front
puts q.rear
q.dequeue
puts q.front
puts q.rear
q.dequeue
puts q.front
puts q.rear
q.dequeue
puts q.front
puts q.rear
