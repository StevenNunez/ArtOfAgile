class StoryFrame
  
  attr_reader :text, :question, :choices

  def initialize(frame)
    @text = frame[:text]
    @question = frame[:question]
    @choices = frame[:choices]
  end

  def display_text
    puts @text
  end

  def ask_question
    puts @question

    @choices.each do |choice|
      puts choice[:text]
    end
  end
end
