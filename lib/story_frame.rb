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

  def ask_question_and_get_score
    puts @question

    @choices.each_with_index do |choice, index|
      puts "#{index +1}. #{choice[:text]}"
    end 

    response = gets.strip.to_i - 1
    
    puts "#{@choices[response][:response]}"
    return 0
  end

end
