class Node

	attr_accessor :data, :left, :right	

	def initialize d 
		@data = d
		@left = nil
		@right = nil
	end

end


class Tree

	def initialize
		@root = nil
	end

	def insert data, root
		if root == nil
			return Node.new data
		elsif (data < root.data)
			root.left = insert data, root.left
		else
			root.right = insert data, root.right
		end
		root
	end

	def create
			
		while true
			puts "enter the data for the new node"
			data = gets.chomp

			if @root == nil
				@root = Node.new data
			else
				@root = insert data, @root 
			end

			puts "More Nodes(y/n)"
			ch = gets.chomp
			break if ch=='n'
		end

	end
	
	def preorder root
		return if root == nil
		preorder root.left
		preorder root.right
		print "#{root.data} "
	end

	def display
		preorder @root
		puts
	end

end

t = Tree.new
t.create
t.display
