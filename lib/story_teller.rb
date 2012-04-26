class StoryTeller

  def initialize(story="")
    @story = story
  end
  
  def input=(input)
    @response = input
  end
  
  def narrate
    @story
  end

  def response
    @response
  end
end
