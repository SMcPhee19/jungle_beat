class JungleBeat
  VALID_BEATS = %w[deep doo ditt woo hoo shu tee dee bop boop la na] ## class, level variable. allows an array to be separated without a comma 

  attr_accessor :list, :voice, :rate
  def initialize()
    @list = LinkedList.new  ## list instance variable is a new LinkedList instance
    @rate = 300
    @voice = "Samantha"
  end
  
  def append(sounds)
    valid_sounds = validate_sounds(sounds)
    valid_sounds.each do |sound|  ## taking the sounds argument, splitting them and then itterating through each sound
      list.append(sound) ## calling the list.append method from the linked_list
    end
    valid_sounds.count ## returning sounds
  end

  def count
    list.count ## calling the list.count method from the linked_list methods 
  end

  def play
    `say -r #{@rate} -v #{@voice} #{list.to_string}`  ## the #{} makes it reference the variable.  the data is stored in the linked_list using the .to_string to return the sounds
  end

  def prepend(sounds)
    valid_sounds = validate_sounds(sounds)
    valid_sounds.each do |sound|  ## taking the sounds argument, splitting them and then itterating through each sound
      list.prepend(sound) ## calling the list.append method from the linked_list
    end
    valid_sounds.count ## returning sounds
  end

  def all
    list.to_string
  end

  def reset_voice
    @voice = "Samantha"
  end

  def reset_rate
    @rate = 300
  end

  private ## only callable in the jungle_beat class. A helper method to ecapsulate in just this class

  def validate_sounds(sounds)
    sounds_array = sounds.split(" ")
    sounds_array.reject {|sound|  !VALID_BEATS.include?(sound)} ## only returns the valid ones
  end









end

  









