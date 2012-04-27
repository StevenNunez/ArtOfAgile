class StoryFrame
  
  attr_reader :text, :question, :choices

  def initialize(frame)
    @text = frame[:text]
    @question = frame[:question]
    @choices = frame[:choices]
  end

  def display_text
    system('clear')
    print "\n########################################"
    puts @text
  end

  def ask_question_and_get_score
    
    puts @question
    puts "-" * 20

    @choices.each_with_index do |choice, index|
      puts "#{index +1}. #{choice[:text]}"
    end 
    
    print "-" * 20
    puts ""

    response = gets.strip.to_i - 1
    
    puts "#{@choices[response][:response]}\n"
    puts "Press Enter to continue"
    gets
    return 0
  end

end
