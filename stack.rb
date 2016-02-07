class Stack

	def initialize size
		@size = size
		@top = -1
		@stack = Array.new @size
	end

	def isFull
		return (@top == @size-1) ? true : false
	end

	def isEmpty
		return (@top == -1) ? true : false
	end

	def push data
		if isFull
			puts "Stack is full"
		else
			@top += 1
			@stack[@top] = data
			puts "#{data} is pushed into the stack"
		end
	end

	def pop
		if isEmpty
			puts "Stack is empty"
		else
			puts "#{@stack[@top]} is popped out from the stack"
			@top -= 1
		end
	end

end


puts "enter the size of the stack"
size = gets.chomp.to_i
s = Stack.new size
s.push 10
s.push 20
s.push 30
s.push 40
s.push 50
s.push 60
s.pop 
s.pop
s.pop
s.pop
s.pop
s.pop
