require 'test_helper'

class TestClassProject < Test::Unit::TestCase
  def test_can_take_user_input
    story_teller = StoryTeller.new
    story_teller.input = "Hello World"
    assert_equal "Hello World", story_teller.response
  end
  
  def test_can_output_story
    story_teller = StoryTeller.new("Agile Intro")
    story = story_teller.narrate
    assert_equal "Agile Intro", story
  end
end
