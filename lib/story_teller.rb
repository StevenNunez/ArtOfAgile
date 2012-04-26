class StoryTeller

  def initialize(story="")
    @story = story
  end
  
  def input=(input)
    @response = input
  end
  
  def narrate
    @story.each do |line|
      puts line[:text]
      gets.chomp
    end
  end

  def response
    @response
  end
  
  
end
