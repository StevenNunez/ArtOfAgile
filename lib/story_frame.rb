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

  def display_choices_and_get_response
    score = 0

    if @choices.respond_to? :each_with_index
      puts "-" * 20

      @choices.each_with_index do |choice, index|
        puts "    #{index +1}.\t#{choice[:text]}"
      end 
      puts "-" * 20
      print "--> "

      response = gets
      if response
        response = response.chomp.to_i - 1 
        show_response response
        score = @choices[response][:score]
      else
        puts "Huh?"
      end
    end

    puts "Press ENTER to continue..."
    gets

    return score
  end

  def ask_question_and_get_score
    
    if @question
      puts ""
      puts @question
      display_choices_and_get_response
    else
      puts "Press ENTER to continue..."
      gets
      return 0
    end

  end

  def show_response(response)
    if @choices
      puts ""
      puts "#{@choices[response][:response]}"
      puts ""
    end
  end

end
