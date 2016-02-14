class Node
  attr_reader :data
	attr_accessor :next
  def initialize d
    @data = d
    @next = nil
  end
end

class List 
  def initialize
    @head = nil
  end

  def empty?
    @head == nil
  end

#function to insert new node
	def insert data
		ptr = Node.new data
		ptr.next = @head if @head != nil
		@head = ptr
	end

#function to create new list
	def create
    loop do
      puts "Enter the data for new node"
    	insert gets.chomp
			puts "More Nodes(Y/n)"
			break if (gets.chomp == 'n')
    end
  end

#function to display list
	def display
    return nil if empty?
    temp = @head 
    while temp != nil
      puts temp.data
      temp = temp.next
    end
  end

#function for searching a node
  def search data
    return nil if empty?
    temp = @head
    while temp!=nil
      return temp if temp.data == data
      temp = temp.next
    end
    puts "#{data} not found"    
  end

#function to delete a node
  def delete data
    if @head.data == data
      deleted = @head
      @head = @head.next
    else
      temp = @head
      while(temp.next!=nil)
        if temp.next.data == data
          deleted = temp.next
          temp.next = deleted.next
        else
          temp = temp.next    
        end  
      end 
    end
    deleted = nil
    p @head
  end

#function to display list in reverse order
	def reverse temp
    return if temp == nil
    reverse temp.next
    puts temp.data
  end

  def printReverse
    return nil if empty?
    reverse @head
  end

#function to reverse list
  def reverseL temp
    if temp.next == nil
      @head = temp
      return temp
    end
    previous = reverseL temp.next
    previous.next = temp
    temp.next = nil
    return temp
  end

  def listReverse
    return nil if empty?
    reverseL @head
  end

end

l = List.new
l.create
l.display
l.delete 4.to_s
l.display
puts
l.printReverse
l.listReverse
l.display
