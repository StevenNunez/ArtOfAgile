class StoryTeller

  def initialize(story="")
    @story = story
    @score = 0
  end
  
  def input=(input)
    @response = input
  end
  
  def story_line
    @story.map do |line|
      line[:text]
    end
  end

  def response
    @response
  end
  
  def paginate
    puts "Press Enter to continue..."
    gets.chomp
  end
  
  def add_score(choice)
    @score += choice
  end
  
  def score
    @score
  end
  
end
