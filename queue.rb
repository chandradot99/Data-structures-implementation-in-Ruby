class Queue
	def initialize size
		@size = size
		@queue = Array.new size
		@front = 0
		@rear = 0
	end

	def is_full
		return (@rear == @size) ? true : false
	end

	def is_empty
		return (@front == @rear) ? true : false
	end

	def enqueue data
		if is_full
			puts "Queue is overflowed"
		else
			@queue[@rear] = data
			@rear += 1
			puts "#{data} is enqueued to the Queue"
		end
	end

	def dequeue
		if is_empty
			puts "Queue is underflowed"
		else
			puts "#{@queue[@front]} is dequeued from the Queue"
			@queue[@front] = nil
			@front += 1
		end
	end

	def front 
		return is_empty ? "Queue is underflowed" : @queue[@front]
	end

end

q = Queue.new 5
q.enqueue 10
q.enqueue 20
q.enqueue 30
puts q.front
q.dequeue
puts q.front
q.dequeue
puts q.front
q.dequeue
puts q.front
q.dequeue
puts q.front
q.dequeue
