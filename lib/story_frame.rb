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
    puts @question if @question

    if @choices.respond_to? :each_with_index
      @choices.each_with_index do |choice, index|
        puts "    #{index +1}. #{choice[:text]}"
      end 
      print "--> "
    else
      puts "Press ENTER to continue..."
    end

    response = gets
    if response
      response.strip.to_i - 1
    end

    return 0
  end

  def show_response(response)
    puts "#{@choices[response][:response]}"
  end

end
