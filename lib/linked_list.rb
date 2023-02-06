class LinkedList

  attr_reader :head, :tail
  def initialize(head = nil, tail = nil)
    @head = head
    @tail = tail
  end

  def append(sound)
    new_node = Node.new(sound)
    if self.count == 0
      @head = new_node
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
    sound
  end

  def prepend(sound)
    current = Node.new(sound)
    current.next_node = @head
    @head = current
  end
  
  def insert(position, sound)
    current = @head
    (position - 1).times do
      current = current.next_node
    end
   new_node = Node.new(sound, current.next_node)
   current.next_node = new_node
   sound
  end

  def find(position, number_to_return)
    current = @head
    sounds = []
    position.times do
      current = current.next_node
    end

    number_to_return.times do
      sounds << current.data
      current = current.next_node
    end
    sounds.join(" ")
  end

  def includes?(sound)
    current = @head
    until current.data == sound || current.next_node == nil
      current = current.next_node
    end
    current.data == sound
  end

  def count
    return 0 if @head == nil
    node_number = 1
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      node_number += 1
    end
    node_number
  end

  def to_string
    return "" if @head == nil
    current_node = @head
    sounds = [current_node.data]
    while current_node.next_node != nil
      current_node = current_node.next_node
      sounds << current_node.data
    end
    sounds.join(" ")
  end

  def pop
    current = @head ## starting at the head of the linked list
    until current.next_node.next_node == nil ## making sure that iteration through the list is stopped at the penultimate node
      current = current.next_node ## now setting current equal to the next node
    end
    tail = current.next_node ## set the current node as the now tail node
    current.next_node = nil ## setting current.next_node data to be nil, making it the new end of the list
    tail.data ## return the tail's data
  end

end




