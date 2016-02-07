class Node
	attr_accessor :des, :next
	
	def initialize d
		@des = d
		@next = nil
	end
end


class Graph
	
	def initialize v,e
		@vertices = v
		@edges = e
		@head = Array.new v,nil
	end


	def create

		@edges.times do
			puts "enter the start and last vertex for the node"
			start = gets.chomp.to_i
			last = gets.chomp.to_i

			if @head[start] == nil
				@head[start] = Node.new last
			else
				ptr = Node.new last
				ptr.next = @head[start]
				@head[start] = ptr
			end	
		end

	end

	def display
		@head.each do |vert|

			temp = vert
			while temp!= nil
				print "#{temp.des} "
				temp = temp.next
			end
			puts
		end
	end

	def bfs start
		queue = Array.new
		visited = Array.new @vertices, false
		
		queue.push start
		visited[start] = true

		while !queue.empty?
			puts queue[0]
			vert = queue.shift
			temp = @head[vert]

			while temp!=nil
				unless visited[temp.des]
					visited[temp.des] = true
					queue.push temp.des
				end
				temp = temp.next
			end
		end

	end
	

	def dfs current
		puts current

	end

end


puts "enter the no of vertices and edges in the graph"
vert = gets.chomp.to_i
edge = gets.chomp.to_i
g = Graph.new vert, edge
g.create
#g.display
g.bfs 2
g.dfs 2
