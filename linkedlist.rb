class Node
  attr_accessor :data, :next
  def initialize d
    @data = d
    @next = nil
  end
end

class List 
  def initialize
    @head = nil
  end

  def create
    5.times do
      puts "Enter the data for new node"
      data = gets.chomp
      ptr = Node.new data
      
      if @head == nil
        @head = ptr
      else
        ptr.next = @head
        @head = ptr        
      end
    end
  end
  
  def display
    temp = @head 
    while temp != nil
      puts temp.data
      temp = temp.next
    end
  end

  def reverse temp
    return if temp == nil
    reverse temp.next
    puts temp.data
  end

  def printReverse
    reverse @head
  end

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
    reverseL @head
  end

end

l = List.new
l.create
l.display
puts
# l.printReverse
l.listReverse
l.display
