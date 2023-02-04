class LinkedList

  attr_reader :head
  def initialize(head = nil)
    @head = head
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
      # @head.next_node = Node.new(sound)
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
   new_node = Node.new(sound)
   new_node.next_node = current.next_node
   current.next_node = new_node
   sound
  #  require 'pry'; binding.pry
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

end