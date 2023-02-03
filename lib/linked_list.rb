class LinkedList

  attr_reader :head
  def initialize(head = nil)
    @head = head
  end

  def append(sound)
    @head = Node.new(sound)
    sound
  end

  def count
    if @head == nil
      0
    end
  end

end