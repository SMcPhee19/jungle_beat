class LinkedList

  attr_reader :head
  def initialize(head = nil)
    @head = head
  end

  def append(sound)
    if self.count == 0
      @head = Node.new(sound)
    else
      @head.next_node = Node.new(sound)
    end
    sound
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