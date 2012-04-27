$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'test_helper'

class TestStoryTeller < Test::Unit::TestCase
  def test_can_take_user_input
    story_teller = StoryTeller.new
    story_teller.input = "Hello World"
    assert_equal "Hello World", story_teller.response
  end
  
  def test_can_display_story_by_paragrah
    story = [{:text => "This is a story"}, {:text => "All about how\nmy life got flip turned upside down"}]
    story_teller = StoryTeller.new(story)
    assert_equal ["This is a story", "All about how\nmy life got flip turned upside down"], story_teller.story_line
  end
  
  def test_can_track_score
    story_teller = StoryTeller.new()
    assert_equal 0, story_teller.score
    
    story_teller.add_score(1)
    assert_equal 1, story_teller.score
    
    story_teller.add_score(3)
    assert_equal 4, story_teller.score
  end
  
  
end
