class Stack

	def initialize size
		@size = size
		@Top = -1
		@stack = Array.new @size
	end

	def is_full?
		@Top == @size-1
	end

	def is_empty?
		@Top == -1
	end

	def push data
		if is_full?
			puts "Stack is Overflowed"
		else
			@Top += 1
			@stack[@Top] = data
			puts "#{data} is pushed into the stack"
		end
	end

	def pop
		if is_empty?
			puts "Stack is Underflowed"
		else
			puts "#{@stack[@Top]} is popped out from the stack"
			@Top -= 1
		end
	end

	def top
		 is_empty? ? "Stack is Underflowed" : @stack[@Top]
	end

end


s = Stack.new 5
s.push 10
s.push 20
s.push 30
s.push 40
s.push 50
s.push 60
puts s.top
s.pop 
puts s.top
s.pop
puts s.top
s.pop
puts s.top
s.pop
puts s.top
s.pop
puts s.top
