class JungleBeat

  attr_accessor :list
  def initialize()
    @list = LinkedList.new  ## list instance variable is a new LinkedList instance
  end
  

  def append(sounds)
    sounds.split(" ").each do |sound|  ## taking the sounds argument, splitting them and then itterating through each sound
      list.append(sound) ## calling the list.append method from the linked_list
    end
    sounds ## returning sounds
  end

  def count
    list.count ## calling the list.count method from the linked_list methods 
  end

  def play
    `say -r 500 -v Boing #{list.to_string}`  ## the data is stored in the linked_list using the .to_string to return the sounds
  end
end

  









